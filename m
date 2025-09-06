Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A17293B75
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757187594; cv=none; b=ncZlcB4vUM8hQYtzp1ZXD9NJ+feyhAaDyBH+IRXSCkt0m3W6dUvSn5ro41e8++7aaebhZ9fhEgN2kzuIZfNqXA4Ox8AtHCEPAHA0t74CLl5Ug3kGtgM4Gh0qq6V1+oc1YTC9el9NZh0RsXwT1C8NAteHbAF8/V2aS4ytfY5CS+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757187594; c=relaxed/simple;
	bh=YkXQ9RuJFHfsMkFYPOAWvVvcP5SManKeMbVbcf1viXE=;
	h=To:Subject:From:Message-Id:Date; b=UQiAPeIT3gYJskx2r4pUPd+QRair+A6/EyAxLAgPk0jCzGwKyFyFrLe3lID/EcHQoHH+g1QO4e0RUVlu2wiVzrLre8tJdWI+UVsS7dtLAtJ44goR9Ua6EFx8hOoRlDpbdGn7z4X6OV1nf+vOIJ3F4/FX7NAm0gQ8tPRP6797jw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUKsx0LU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUKsx0LU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8796C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757187593;
	bh=YkXQ9RuJFHfsMkFYPOAWvVvcP5SManKeMbVbcf1viXE=;
	h=To:Subject:From:Date:From;
	b=iUKsx0LUzG2eGDcsGYFNWEj5QEKSax6Hu84qpjNUm+YgQQpUr6nT3Juv0HrcY/kBR
	 sMuv2mt+7p30SVp43oLviNM4zidNRwLhx3FB5IN6hrk1+3RduX9cxZzU09XclR2j/W
	 xjT8UYYniW/XSXcp4cR4/8NnBBek9dBpcjEMp/3uSDYyryQQljBtubPgxzmK7GM/kY
	 MjS1aSwWEymebWUAgamkGgdbl7mXxKdHlhj/F4SlfeIjQxvGoTTsn2yjnJ1+CwIoGw
	 BO4B4QIGSX28Pp4/V8iVHKsH3VTvtObJ/fbXAQlhbT4HjrLIL6HpyZw+J9vCTxco1s
	 RbEyeSKvqcDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93629CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718759358.27303.8614021881472941900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133a4a90d2ceb602530b8042cffa26d32b120029ba5f1d4ad6f9f5aa8811c646
Date: Sat, 06 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757187593
