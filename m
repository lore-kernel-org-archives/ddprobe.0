Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262CD264609
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768212234; cv=none; b=P45ZnzdUxeIPOBkKImUEACPXN6AI2pDU+QxE3dfat6O5Wsf9Z9G4jbo/oay+8w3Fn1ImO/c2mgVeH/oGID8ogURvnCW1H56fxGqnK2kmETfqQoppI46KOTF0VudxWjSHTjKXl0IBUx8c+gLUGqBdkhfECcQ2cuNV4X4B9S0PtX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768212234; c=relaxed/simple;
	bh=TEMaUxK9eOM0qVfajlHirvkxBYwxneeavTQq19/PGOo=;
	h=To:Subject:From:Message-Id:Date; b=APzbdiCEWvasQ2Re2HVec146NmrygjlWmvuO1182V+7mpnl4EoHS1qRWtgMxuukoUSa4Og5NSQM2K3y9swlYJQ72MhgPekgbfHnXQANdankvSkIsIE3CSmcBlSHTQiYd8JIjJuy/k2ieFJTS+SSiVf3AqPevF4ra7TLsT4t8dZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6eJ/lPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6eJ/lPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEB6C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768212233;
	bh=TEMaUxK9eOM0qVfajlHirvkxBYwxneeavTQq19/PGOo=;
	h=To:Subject:From:Date:From;
	b=u6eJ/lPHrva4Q5+EnOFVMlo7ZuFmlVqlphfZwXwUS5KQPjLW4Zm6Xy1bM/UDwJxzq
	 +C57GSGrCk22VKgQNYF7FNswzDhlYoDHPMGUqX/ElJw8p4axW+YFolCYJK8K8PZPC7
	 j/+AuqChVFvVJi6pjXiVa4wJCVrrRb1nOClmyH3+bagqKtFOB1PP6XUwLHUJlmACC2
	 WyGjOlm8xP7ixPCcB3qIdJjlStbcxcd2fITORd+SlAIvFE1xD+URiuhlJuUWyGysVB
	 e026omCKO7dYLBWbyd0XOmUvzH5HPvNJLnAV1cSBZw2y10O5BGNKcq17k5zttHpHJP
	 YHV3biqa2fJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1D6D26D9B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821223363.16395.267721339861599984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7022d43e273bba084c2ad9be63f15aa300397c283c20c0ca5c44d9c56c41fb
Date: Mon, 12 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768212233
