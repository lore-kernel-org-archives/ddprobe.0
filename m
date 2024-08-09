Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068A197A68
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723215354; cv=none; b=VrFcgswuCk+OwvlyT1AefxU8jWYedAguaZ1+fdUjXGvNisHqnkgVXSfSeYNyJw0E03LRG9DMTO9Px0g9vd7AgDTwI1UEOHSYDHmF4JyayAFLQxpk6Zp83TZeVWiINkD0RPqqibvnjZ0fsyA44Xjki/z60FcP4bKEoN19pEgG3Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723215354; c=relaxed/simple;
	bh=ZaY8tulHisMteKlZ/hXw8kLEnZ1p4xnIelOw2pPzUUw=;
	h=To:Subject:From:Message-Id:Date; b=ZhK4hZd1vd2dYJwaumA11Vie1yjiILa5SQOUqxKXItJCQSNLXinyUt/ay6ofYfawECzwaBx6vqjS/u/1zZEZtwaAXDZFs+eoAkpJNaMG1l9dt3WLzKsLZEFip7Sybmbg8wwM1wmdYFdUKyeJU+spwOLo2PkZv670UxIC00a5s4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLjiwXvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLjiwXvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ABCC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723215353;
	bh=ZaY8tulHisMteKlZ/hXw8kLEnZ1p4xnIelOw2pPzUUw=;
	h=To:Subject:From:Date:From;
	b=dLjiwXvIlL1a4IQSqOBxjNUrhpx/z4OE62oojqnH8aQ+53fH4c9wiK601d3DoTdQE
	 0ZOWCwlnnQ0BLoDiG8sugxBm8igm3lUqLPS7hkwAaqgPYeY/mWF413wpwhDcoRul9v
	 u0UY0RJ+mwvqYnTn76a/Gbt3R7/cAnw4FHjE+zTRN08A2Sx1c+VU7H+jIAabNuZ/Jb
	 WhYHOsfR4BQjJ1gpYUrlMkT8nFNEWT9YAGMoAO5B0KjZMjplPbmoxQN88F2t8gkGl7
	 t25wuIkUnXN2HL82wDtkRvY9VXYg1H32i7mL8wP8ndB+nYh+k/ZlY3cCCdxL0yjgT/
	 G/QtSG7ZrnpWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5CEC52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321535364.9192.2503840914637467036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e1240fd4933bc18b1f1e5d4f894df4462e7a70503464908709900637eb1ae4
Date: Fri, 09 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723215353
