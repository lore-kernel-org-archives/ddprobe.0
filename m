Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DD83438BB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785210034; cv=none; b=kbpn8uESwYo2nYjWEMc1st1xmn0WXe8ONstZC04HN0GLirNPwY4GNYJOnI58qORN308RZdKKRkHYNAWzlw1nja+vIefI8baHJdHhrfEJ1w7ecu/5CtkSklP9iqSFOOilhyekLTp0baoVkyTfpch1+jfIZVDgrjhgVMn0QQT6JGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785210034; c=relaxed/simple;
	bh=YTYtgQrPM4SHAh2EqpRYZFcVXGjHKtERWNFgNqUGf/Y=;
	h=To:Subject:From:Message-Id:Date; b=T/uUOqeNr3YKbEub3hUKktZyKgmvP5I8LyqqxipXA8KieW+5CMg2HG0gg+cq95ZFsBwHQ6/rlUmCM2CxSlPxJwkvLaxPkBwp7wDaTGKLXH9hlUoRJLx68p6LE16+BZ6N1ewfkXLq5IU5iwmDujT2kWrakk23A3bnpcgDS+bzHeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzF84kNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzF84kNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3008C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785210033;
	bh=YTYtgQrPM4SHAh2EqpRYZFcVXGjHKtERWNFgNqUGf/Y=;
	h=To:Subject:From:Date:From;
	b=EzF84kNk6n3rxfmgBi80ozd9bnVF9A+ROWifUYhTeaA988tjguA86YhW9FGmj9vfK
	 ylC0Cyf2iXrjUx0/llu3FOcgYYQ3EUYZ4C1uh6m0L8TPMGxzSze3iGymFuLEO02TOp
	 V8tNQXIzGWC7bA5KRckrxPgL3Tg9+Co3jmFRWdRVibwF3M4u0oYDhTtwvNkSkx2vpr
	 BMkicMgo2Hbmhr/K0n9JJ3Z3sA3t5yqTo8rjqWBQCBAcVQ4Lh7TMLHJ9k5KhKM0JXh
	 WJc7zKU0UBo0DG/bjeyMjBxPF3bUR8sCumuGUSvvUPse7sDQi3MSKe27tTK7TzrViK
	 dSuRiLq2nARMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA07C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521003369.9441.7407623788640388104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966b133ea195b23ce0bbac33e9536ad9166672fdb0560c24f69790f9cda1ba90
Date: Tue, 28 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785210033
