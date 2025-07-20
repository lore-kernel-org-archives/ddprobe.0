Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4051AA7BF
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753045195; cv=none; b=Ny2SIatFqAmFFgslhOclLaGPrSIbl4B25LjVU34SEeieCfuFwVciPFDXoaor8ETRpuj3O1cBGdquGaJPSBFhOXZcdL6SykCHjhEu0/1wyLI4z2ZlN00f99qLMaWz3KBWRHqgl7kJabyWkQG3JZ7biKpk/+6vUVerF/4z9LNehRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753045195; c=relaxed/simple;
	bh=lCRhI/V42I25udu+pLYXFThIfAThtlCMafb0scMVUo8=;
	h=To:Subject:From:Message-Id:Date; b=ScKFwWBGUA8Ingn3bBcZyDGzrrCGjOY4shq5rwRIzzEhx1pTTZotdWiDRDWGwSB5fBo1AbFJmvpqTtcmxvvgIvXARrkKR5oFdfaTSxb9gwo8LrXFfmdGwxXNrXzbqmW3npO66u9nasPVsKsXg6tz8i1d2ryCiFiP0bR/zqQBtk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmmzF+W8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmmzF+W8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84ACC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753045193;
	bh=lCRhI/V42I25udu+pLYXFThIfAThtlCMafb0scMVUo8=;
	h=To:Subject:From:Date:From;
	b=kmmzF+W8a/fMEjUB0HowCCX/Y04Ffah4zkb4vt8txrXB6lRDOOHLIomrhtfQW9rRb
	 4Mq5IvbrB4iBd2/cX4UwLVHpfnEsZ9/8nWSGKuhqxhiOFe3Y7UluKr9uE0PvPiSSFK
	 Cleo4wLDjub+J9lYf9FsTeYyuV3NrqspdbCWzd61XLIRQQBSLMQyl/b/Mw6+jdM+wU
	 i73cHvBx+dzYuAwvIJFsOCn9Rnmyiom+fc1itc0oY11OASMqx558mpUg3y9Ee7BDau
	 91Ispnlzlt11gvn0rfeR7e+ebnQLOUrrx+upKyzPWVLOEasddycG4trqsc8jfC+SSW
	 bqWs8dULApMoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3AC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304519358.23464.4935613821660895058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00093735d4fe08028b81361cd804094816bd224c14b902539998a5fd877df6ae
Date: Sun, 20 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753045193
