Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428082116ED
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743153594; cv=none; b=gxz1I3QjdLh+zL09jG6ZZJYWOVh+jAdMnFyBKPHJknVuLYjjRUCiGU+3zRFnfzJbkyx+TOksGES0x8l0PbJvsWOahEWrBdI4C7w5/bxnEk1MMhV66srPQFIiUBzHAKk/8Uq168go78tCfJrQmnBSnnsp7vLY2sfPz22hFBauJ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743153594; c=relaxed/simple;
	bh=gCviV7HmIFrLPB1TD+AROjwqBMfcQRyYs9pNuInhhNY=;
	h=To:Subject:From:Message-Id:Date; b=lu5hVn5evjkxb3mlJNPM/nFmzqATs+gN5OekQ2tgHPvyriiEDTthcFlgLb0R6+86e/SrjmF4NaPi4kmYHm+e+yD841xrBxHTQ3gI7Jeqdz9mBMlzh1B9RV+We5Tg+PTUYuvDBOKSsbxauiQViBozohrf4KQXYKLA/2ExxYyfi3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n50SQRp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n50SQRp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4480C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743153593;
	bh=gCviV7HmIFrLPB1TD+AROjwqBMfcQRyYs9pNuInhhNY=;
	h=To:Subject:From:Date:From;
	b=n50SQRp3PrtnU0izqlWxpXgZ+0w7u/FYmuxfvxOWBGDbhuyP0+0bUv9gOqEfAy41v
	 hW/KGRrJLwwcviyAAMQy7Gsy+SqAn7mW43pF208NaBpGYW+6RFGNLzO66IHn81C/UR
	 NxpMZ/zJKtLMLR2qwhBmkoN4fXroq12iRci0XH4q+HNzMI9NwF0bqEtV1RoCsJYK9w
	 x/zXLxsIFZ1lpUAftgmDBJwvJUSybbjnceiXGS2sW5TUXcRK97kTKPWqitT8k/3U5a
	 a/KCJPuyMWE6PuonaslW0mb8ArsWs+KSoJtKsxTlrUwdKdr3Lc9SOp7q4SNn+T8WeL
	 ngUgVz4KQZ5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50BFC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315359366.16111.6808195386519262309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806fa5291b23d70a5ff7766d143fc35ab7833be062d911c85b7c639417c25a96
Date: Fri, 28 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743153593
