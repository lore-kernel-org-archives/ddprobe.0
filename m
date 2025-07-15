Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D5C2D9EDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752578994; cv=none; b=TW9F7noGk+Xd8UUmI3EaHP9dIMKLb4N8gK4kmbovyhx2eGQe51Z6I6HC+VIGthvrGRUEVKgcNQD0Vjn5Acgu/xd7VYkgje03jsTZDeQvIHvkpGxa8bEDNVcofJTvbF/dux9VHXm5/EIs4b2+eKnkv/NkFPUbdwY/2tCCXbQKjJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752578994; c=relaxed/simple;
	bh=SvhnVHqZhMbixXoJs+WsRXqLix6odm1yNNhg3XVS3nk=;
	h=To:Subject:From:Message-Id:Date; b=eznUboLyLdTRuj+in/fvKTCff51PKEqe4UPhIHPUzviYuTu+a+A/RJpReAovN3YGwttpuoCdhPtZGaqV1bIp9aGL11IBTOVVfXORtqYUwXhE+sMdJmKMRBL+5V3hL4gluA3g93UvUJYcS93/Mm83VcQAGHOu8dpI0v3IchBSs7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3/KKR2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3/KKR2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED48C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752578993;
	bh=SvhnVHqZhMbixXoJs+WsRXqLix6odm1yNNhg3XVS3nk=;
	h=To:Subject:From:Date:From;
	b=P3/KKR2r345k/HyT2JiX4SiFH/JyuTQW6vVfDeokOj3MFqg4Sht+Yqy/2cqZIM0v6
	 4Ks56HYKhfc1f3qu4nSsciSii75/BeVgRqdEOdtA0/ApvBAJ4hnNy0QlYrPeQyZJyV
	 atdDUEJ0Av+Uz8blBhOMh+1m/NejNBMGLweNv5wBWaiJtFWvjs0Vvry59vdXkNSvnn
	 bqHmcImaXM4T2u8YIMnehadShylyn6bz4DD+N4/0bs6WtTVzsMpUXQA578oZw3OObp
	 7A0BWvGZ487prIMm02R+twVWyXsV/nVb4JdYroKVDI2e89YxCpHV/39hdj4nxQd28G
	 pEKcUGJqP9uZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B5C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257899357.17967.9624895212028678229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1f7239cc2bd9c8a0d59bd4bdd598388381a23b57e6daca05ef95d94a7d2bc0
Date: Tue, 15 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752578993
