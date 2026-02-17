Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A70D1A238C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771292694; cv=none; b=BWOSaWa9wZXny8Nxnjsb5vF7HkPw1xnoKV5IrYeLxTNwjvW5OLfUgbZ9WpaBXJe5fxyPnPYRERtvC0aKvuN4hiXtLLsS9fLMo9Fup4W5iEHA1nvn05gDxfHtqkvgml0HiyGnYBnOHGSZHR+7wotamPClf5YrmFTLYeMMh1LCrL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771292694; c=relaxed/simple;
	bh=CvNdXVU3OFVgEqfdG2CqIEVQenuv26o4VfFpjlbDH0s=;
	h=To:Subject:From:Message-Id:Date; b=Kfali1SRUaJw97V5qUda7k4sdiEY7MhkAlh9Do5xUaJE2clrabIGCJy0zgIjTaqouqbY4EVQZ1UzDIrrqQbQUuafIHwWE+52JKQzAoyZLBZi7KRgxiAUYRcrKyyLQCMNlDmwGNgioYjph/pWXyePzwSEMjdDWpubHjrs9VSFZgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4mkbr+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4mkbr+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4018C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771292693;
	bh=CvNdXVU3OFVgEqfdG2CqIEVQenuv26o4VfFpjlbDH0s=;
	h=To:Subject:From:Date:From;
	b=M4mkbr+Y1/TN3xSQ6Yb0LeGE0Ale/9YPkSAcFW6Zx8RWosOmED6PGBRA4Iu8+Hl2Y
	 yPSguxGEnrVX8+5w/mnDoOR6HgDrJZFCTtkXDeRrb6DelBfQMP84dbw+OpFQBV78Ok
	 fEfJRUmhm3yBtU0qPHtvDNN9/qu7HnFPvFqRXDQjM9lVvIhQO2XSEPCROb12p5Smyo
	 Nd1SfQsm5e6JbGKygHBEBHNNzuvlNCTI0tAVl9XOPXAj5d9hgqvll+ka8Z3uEgYFMv
	 3Edukur1lKqCCMo0x2RxzXfZXR0w7wrokiMN0s3D+2B2ST39b+Ebd/AQyXLKoJ9GH4
	 KiCpJlk0XTP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C41E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129269358.22368.4616055495361064418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d93f01cea57b58d737e12a65ccbbbf10194bf4ae38a1944ac7decea6093e482
Date: Tue, 17 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771292693
