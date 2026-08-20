Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4864B4229BC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787224834; cv=none; b=FSVGny8ZnJWkPtsSVxkzDp2J+KXADXXzrOpuhVH+wkIYJUk5VOm8ZLYPVlg7sNHlrb+33o4CFjZ+FT+JUnkvE+kO9cx6cILgx3H9e0cGmziEv3yfNQEzihW0lgNE3dMr1DZ/QoMD/aYSCRisXIcMEFv15HwyA0RazQoPHQ3htxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787224834; c=relaxed/simple;
	bh=B/qKGLAl/MOqbEAg6PFUbJlO1nAWVdsKrsP0Yvzpet4=;
	h=To:Subject:From:Message-Id:Date; b=pApIYI97pjqLwZGco8n8kBpPDHyXqRahQgwCHZjwrwUAxvy+MlkYPBf54QGejJ+dgpm+lP4uhu1MjjdEU9f390FbQPj80wAiczQuX8c+gi02UmIIfeDxRW+1SoeBDda4KioZWXKvUHeuG3o8vkMIpwlXHYh6Pqr14d437mslzYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r83li+fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r83li+fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0622C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787224833;
	bh=B/qKGLAl/MOqbEAg6PFUbJlO1nAWVdsKrsP0Yvzpet4=;
	h=To:Subject:From:Date:From;
	b=r83li+fyL2+4AdFD1bViFrQSp+WzKG4lSnLePfF7yoWVZp+h7QQQXV70yVV/d4PlP
	 XsPTt3A/YubVhAGFqtZol/MgoHqK74sbnrINTFx0ygTTHT8bMwH0J7GZ/ExoRb7asu
	 KG9dJIH7kpwgwn49noLWebDKSYA0rZVGSsOEUdTurfmGhjn8Fy7k3zQvGrPTSb/hx8
	 u6DRt/g1j4EcFnp8532vRgSF8ryGAqwWwuJZyXc4k35HDUvai0TlJOIrAMgY6RmsEt
	 abQw6TlpliUkL0jhR8Dxofwh4r/J03/M4e16tM23FTVZUPi9KzF4rFr8M5H/SIUZIK
	 bV/HBKuDaGvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA59EC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722483368.20814.4394041162678481594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0373fe4924009e8103d3342b89632bef1290e2f8d2e8d3b1fb0ce1f9f20210
Date: Thu, 20 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787224833
