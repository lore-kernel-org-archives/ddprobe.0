Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77A13B294
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729935954; cv=none; b=Y+tjrnLgLjQAfVl1vCDRI0c3ARoF4AjRHjjr0vxl/5U+rFAG+unxMMBubxe/sOv0UtGswpXfpOhC2Dmfs6ZSgaSp2v2LiQymtpHQthcDFzylQI3V5HqXI9pkRcuYFJCKwFK5Z2uYNfa/aGr2cp18uGKG2OS4EKf3gl3I5YLbiss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729935954; c=relaxed/simple;
	bh=vaKDahyPDgVHi2lY9oHPQBMmI0gv563ykdfLr1ay7aM=;
	h=To:Subject:From:Message-Id:Date; b=hkeoGfQ9ERMLuSAIPVVXnP5mX7tdH8QIGsDzsiZrPL6O9OD/IYVZhOP0+JC6E9r19XcoDfIFLatRJqXkls2tOPlo+MHktLY1hafQ06C5eSXDEcK6t+62K2o91BoTioWTIF45ruZHU/OKJhE6I8g2+i4sS9QcHDL55gM+jAKiFdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2CHbHaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2CHbHaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89C0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729935953;
	bh=vaKDahyPDgVHi2lY9oHPQBMmI0gv563ykdfLr1ay7aM=;
	h=To:Subject:From:Date:From;
	b=h2CHbHaB8vxQx0K4BvauIKeQsgolFALOKGlENgTlp1nwtAZT3SQUSvQY7g3vMtNZN
	 V2zaaJya0mDPq+G0qBP7AKySeT0ICcX5o3IDMfq23zBa5TqE0AYWsrkI6ZcuuO11QN
	 b7z+2mSlSNDlKfcbU/hKARYUhWe06qUvhGq6aeEym+Abx+3cMjLfefJPsq+qSQSD3P
	 IaBRaH0oigETI2g+TsgVU7s6CDyashx3nDa8A6eXb5DouxGSQWQ6mU+XOtzV/4oVRG
	 CkjGBeOULnaIiV22LfFCpaiQ6cgQ865DBO8ZT4q/OV2ezeQ8ptxr2/CkywKWDZPJ+R
	 90c1gJKnCZMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCD4D10BF0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993595364.28331.13524523892634259177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4672c93b4711aab4ddcdcaa209283c783e5427bb7bbb2f0426a45e671380a6
Date: Sat, 26 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729935953
