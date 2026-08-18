Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E25726296
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787041834; cv=none; b=r477ggtmZa3ah1M6tgdvBAH6dsCiWgPPeKEvPHHWj/4AQElbYJ7v2ptKIQOILCH4CSA6XXF8yh1Ctiftny913P9MgeJLetZB8KTxQkwoiAHHmZ5gc+X6UnLdxE7sVaisv6oDb13dcHADnt6vtoQIavGhjMp3FY5UwFWQSLOkOlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787041834; c=relaxed/simple;
	bh=VVyP+Ciw4ci5Xhl3V750JKRNoL7m/IDikH6DN0Qbch0=;
	h=To:Subject:From:Message-Id:Date; b=c0VNuFrFcslDknbXssIUvWMJzy/unlHzz8Bdqxp8SU8oh+RwlcP2H7wvI5scaRc57dWxkrb5R2UG+yiiVmgAfR/DFS5HHeGgzM6YZjcSdE+NiqTGU3YkSzr+9Q5Iuq2tcFHjHMrLGfQhk41OZtwvK4eyvJGoeyJwd+l7hcwn2Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiDiR6Ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiDiR6Ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE67C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787041833;
	bh=VVyP+Ciw4ci5Xhl3V750JKRNoL7m/IDikH6DN0Qbch0=;
	h=To:Subject:From:Date:From;
	b=hiDiR6HaeftL67LKwHcVuj4USAtd+0AuYueDZ2DRif6MKydb7pFvES1/g+2Omfnmp
	 jZ7WyBfByjeLL0qawBb5GxD2PqLvbS5xh8+1rK4ar5nThCO3caZSYJcGccisI9vyYb
	 scsFCCC59tEaMXZwmGeL8YsaO1kffFERdS/YYa2jiDr9r9R//D/R4QV144xx31Cu41
	 cl6BJ2PT6i16jjlUwBDyDjb7Q0lqf3tmCrzaOWSaMRR7F3hWd30L6bpBPpmLiU79Ww
	 XiRCCK0RDT1rRzZItTRSFqqHwqt4fMc/OLUeFhigmX7Y8nsJ5c/0pvWfN+0ozeKh3z
	 hdSitvuDQdhqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9BC5DF80
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704183368.2387.13161311298138347622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fa03d2077ed3b964aa8f52053ef6586b2c4b339afca8af1f398bfb442deab0
Date: Tue, 18 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787041833
