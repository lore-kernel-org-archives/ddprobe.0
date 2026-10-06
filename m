Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6424C13CF82
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791259234; cv=none; b=gCzRWoJLFQRe3pDDG2+xcQ2mXBerQhyP19NDjsHAy2pOCqzEagyUqRkXGivUj/xrC3aZcCZoKOVfee8gWYyqdi/mQEExejlepDv6R0XLm4n3EjJoo3cc1VH88xWvyPcNMqtAhYyshslzXDWhnm0fsogw0rnX+fQ1JT+9o/GKFAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791259234; c=relaxed/simple;
	bh=MG7pDqNiZSeUuwiRzOrBVzgn3zCnP1Ze0KYruh0YMtA=;
	h=To:Subject:From:Message-Id:Date; b=tU0XReyX5PnQE3i+fk2To8CTvJau0xEg7OjTm59oLUhcMOiKcK8x6Glrcdu+76OCb957CIs6NEqW7Yd93q3nhVvTI1MEDs//mYI94ePQsjqz1EaLUqdi4z4ENulqeNAUl/lHHl1VFUYZUv4S/o8zWG+hlsZAdBHyVLes1zd5ZrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5YTxLdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5YTxLdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99A5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791259233;
	bh=MG7pDqNiZSeUuwiRzOrBVzgn3zCnP1Ze0KYruh0YMtA=;
	h=To:Subject:From:Date:From;
	b=g5YTxLdEzSwiEU8MMJNc+6m/81JRZfFHw+2m+f+eBmA6zqHIzMeWGUI3x5uOL04is
	 u8sJ/Pp79IA0tBA0p1zjDzxYItxGR+QhZEGa3zL5xKn9q1OgGywpezg8J2Nj+vJoLl
	 yUII0U/2ufe+Ozd0hpxdhhThbc4JGSMzD00lZbl4ICKm8cxY7XlibG6lBg+dW/Ofxp
	 OdfP37lUNYaKhovuYf/0r8ODjBEjHeED27gxcxOXVvwkhro4zD4RrhiwKmn5KwpuxX
	 oY+QgAyqEBeLJa6BdyFC13tXSlwKxnH9vbEmEL77e5opk4WecGmGYUYvy49QaSipo7
	 ZJ0M/f25su5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C57CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125923370.16773.7527447976813765533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ca5ca0216b4d76faf3cbd6af4c3d2574963849c991d5b97cf7e56146210e45
Date: Tue, 06 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791259233
