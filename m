Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AFD3BBFD8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788997834; cv=none; b=SzlFtpvFAUtEUDv8KzSVtp9V5cwqjn9pa/OJOYaGqGf0/9KXaq1j4/9u1upPEFwmaIu55p82xDXasy5ldMvzvGcXok1Lgm2b7K0e7X7I0/hk3/XbB0cnt87X2vV5Lp9v2mRt53x/yfMxPnB3AI/r1JkLl7F0PV/k+drAaQfVOOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788997834; c=relaxed/simple;
	bh=vGtSyhFXBaGP6SbHeGmimCsFHmkYJGQ+f60a70Re6RU=;
	h=To:Subject:From:Message-Id:Date; b=n759dpPQfxXKy3Tregxth5Apq22lMyDPsbaYDcUYb8L3Lw3EYAiU5cgxpeSvy8RNoOgPLargPRPl1oV1MIauH+FC6JbPlf9Cr37erd09kGGLVvOXRFARDwEL9wrjWqoH4drSB3pGAQiDIZQ5v07SkO/nbPT3vgNoxkQes2yT/sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo+Ykwnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo+Ykwnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B12C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788997833;
	bh=vGtSyhFXBaGP6SbHeGmimCsFHmkYJGQ+f60a70Re6RU=;
	h=To:Subject:From:Date:From;
	b=oo+YkwnthSpXRnMmnjbTFZqSBHG20hmfHSyS0j/TtrmqMwcNWpfaj+UDeOFLnuBGu
	 9hFFc+UOYClM1KOK9keZ2+rlszkIOX0vKKK9gTMlFPn/abH4aWPXfB6yMkMACZ2Djs
	 sUokug5qAGX/JDGQr/0fYoQkcJ0HxkuqSA22oD7lOGuESKpI3KrCTGhv78vZLrvUqt
	 VVVq1t7KvADo7UOuOCTfx5dH/gV3uaXo+F29OOTdlQw1GCtZf8V1Dqd2fYWbS8/Ju6
	 6VpjoIrBRZDwDmL3DAXv9hzjn5bQJQe0VwV5E74CekdtmTl6/eOm27NgMfqs3orqd/
	 Mn9xLVKUjut2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B420FC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899783370.30863.9088618337959881116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61c8ca8f6b17d8b06b7b226ec06ffb3bd33540b77b2479a044fdcfe0fab050c
Date: Wed, 09 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788997833
