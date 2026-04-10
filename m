Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0108732572F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775803054; cv=none; b=lHZsUUV8Frsfwp+Z3zQaxzuqChnqesOogHSH9MWMvDrcbiGklSTKDN1vbUPVBPvA+HjTVbS/6crSFp8pkuxVsHgGB5jS8tcQOFaTMjZeRLDZUYzE6mdkPNGD1iAM9ABuulVXuyfaw33bSU5a/ORPERvZKxuR2RcfCv7McTwVqDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775803054; c=relaxed/simple;
	bh=zznlXT9CRHUPuPzmXjkmQTSbeuLmBNcKo5Qv9p2wBys=;
	h=To:Subject:From:Message-Id:Date; b=oVp2QrlqFTHkYNHrVQJrdbJyv9e1epHCFKr+IBXaDdJ70aWujvSFoWAH16zjzNRCN3CLeJLaWs0OIhSD3ebxhdQcw8KhuEvTkIEj9uKIHpIZYEhC19Upt5tqS3isFAHPtiDHzREVYJfsvhap0pKktU35ZePI+ca0io4xOGgeGL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihbimNwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihbimNwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7733C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775803053;
	bh=zznlXT9CRHUPuPzmXjkmQTSbeuLmBNcKo5Qv9p2wBys=;
	h=To:Subject:From:Date:From;
	b=ihbimNwnM9ODiJ6AlNDxBkxgFaSOu5eNo6S5/IaJTAYFP8m07QTqsxJVEJexoC/hq
	 9uP4f8m+QeNq13hhQwWeY3nDPn+u5fY+VNUvBwDigu3y/V65niaTrQfadLa37mvbrR
	 0xFhu7YzMCsGdyCjcXQ03PVrGJ63SmMXPn0B4d7yQckBKSkOvCBm2oBfOsA6te4xyM
	 lnYYinGVCEblR0WM60hnzBbUXByfHXI5VoK8IvvOLArPgbI9WI4CtF0l3eam80C2Ff
	 WptFGfM7JO+Mn2kCL/JqfNhdUV0O5VMdjk2ZRpuQaDHu5HfObZycWQPbZgzYjv8rqy
	 j1nYJ8soeGQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBCF36BB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580305368.32761.13856750738357958101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf14fa704965c479417e0ad15499898502e8888c9db75fc8819907e9bb1d979
Date: Fri, 10 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775803053
