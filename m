Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5699A242D7F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777819654; cv=none; b=sy/Pu9PVLu7n3qYtc/Swkm/6KtocushyQIy2Qcg6T0Fp1sSy+peM9v0z9qQF3WY3X4bn0ywp+EAqq4PGkrfM0fq/t+3ahME2a5xw8XfYKRLz7UfPT5arHZU/Bm2FGfFa9LpDlUN9qvV6zswcDWou8dzc7AlJT9kAZObvjy5NWa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777819654; c=relaxed/simple;
	bh=HtrTrfvX2n3St6Si/c0EGhTfYXdg/wbZiDfbWhtSRcA=;
	h=To:Subject:From:Message-Id:Date; b=VJFYTapYBjci8Q22QLRbP1t8z2HDHohbVajhfKvvc9akDiZJL/VHqiISBtcKy0/EFBckgWcXxum7L8yOXHH77V7KSpdh65goT4M1CBwdSIwQ6SA4ue1QLPm7E4m3AlixGV1KNmTmRORnXvAcRzlmORhLwkIFvMLDdaRzhsF5UCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJS4E3Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJS4E3Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CEBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777819653;
	bh=HtrTrfvX2n3St6Si/c0EGhTfYXdg/wbZiDfbWhtSRcA=;
	h=To:Subject:From:Date:From;
	b=DJS4E3JpY+vquHCVoxVZAqd6Srv+M41a+Ed5cfbPVEghKy23tsM4FIc2OS6tayO05
	 MQBnANobJDxYvaBGmpy5PvVyS/dFMg6PYCm722LXzNN71XdbbXqjrO61s/DiR7paq/
	 995YLuxapinbGQzuMxxLBBy/nIu5lcEonYMz9k8xGw+IGU4J89c3nbZRJ+z6mcob2c
	 f1+pj9f+8pc/7gsTZ+m+zw1oW9NkeEe4tyIpH4DClZ4h4lTvCOdsv1+TMBNiCxgQur
	 jRiwjCKGx981+NUkz/1nfnfG3Ca0A0flS+1VfeF9uQSdmbt2Ajl2hiFoK9Cvrh23Kq
	 QFIZRHfsQL2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9CCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781965368.12524.3372295577351423915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0728c9a1275403389b995301498c10a63f7b00f453ae592e045562907d388b03
Date: Sun, 03 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777819653
