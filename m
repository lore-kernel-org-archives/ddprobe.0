Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA51A0720
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724777754; cv=none; b=lNrCc/JVBebsE1CCRGJHj/0XuzgDagpeOMWnqExZmSE8Fz9+NKhBjrURCmpzDxL6i+UIAVEl2yEED7WMhhrwWiTfHfobNzWhLai8KaxOV4FbmaHJJ0Oi2gedkjFG7CphQKPrpPHaWJt+rmDQ3coXza8eGXS7nuGIT7pzLYblMhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724777754; c=relaxed/simple;
	bh=1wyaLXb6vPGLyr1UppHjm2XCP8tILeAZZpjhMroHOdw=;
	h=To:Subject:From:Message-Id:Date; b=WDDrMc9tELDWVZMTJIJhRmvG4+H2D0y2AC20NpuItVt3HNWwLtl4tK+WeODj1XjRfdt1VA1QJzQkIjaFyW1wfRuzVTvpt4nY2soEDIRYc7gFfehi8BGRorLTZ/SHSgJLJBezd1XbH7heu6zMJ8Hj95GyWljWe3ADCLrlY3ZDum0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP9SrFoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP9SrFoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DCC4AF63
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724777753;
	bh=1wyaLXb6vPGLyr1UppHjm2XCP8tILeAZZpjhMroHOdw=;
	h=To:Subject:From:Date:From;
	b=hP9SrFojdcJrcmWHbKiSwofCR6IvZJArYuOWtfoHMfMGbd4oP9/IgINj6QrcOsWYy
	 lUqQUCSZahk7KKnlG12gEUOAuBzb6R8itFJKKNl//Nqc7+EJQI9VHYu5zPgEeJOVH4
	 FrhbQdY2gxmsU9HC4j25gh1VN3epE/q/WAotN8pz2Ku8Kf5MOagx+Gy35Dopw+uHGh
	 3vtWxHfjyGBoPLZqiTLng01z9bXqWFterehFVaQypCtG5JvylRusl4GzaXfAXJxHRn
	 5wXHC0N/J6+FcX4r4M5Um5wFif+pNM1YB+8vSRifP6I91gbIXDHcuM5DpYIFr0FO5k
	 CTYFLOUxFIpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97344C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477775360.8698.8602537836449740611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8ace79c9f0990486a8a38e966aa6a98dbd317fe35677b1f2ecf8d666034c29
Date: Tue, 27 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724777753
