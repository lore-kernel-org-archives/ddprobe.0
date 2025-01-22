Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DF0192D7E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737549953; cv=none; b=H2cYX7VznO30q9ZBTloNDrIPwVI/5T22v6apt+UhU5jYq3SavDJ1/fJinTGK4crkLovicSsMvFWzrx/fY6r07nGjeRnDuFJoQ5+HxEYEoiTYhI7s5LZwK/3J48YRoPF1ArQ3HIDsewr4wSyoEkmL2aDLJ2bYt7xw3DZfYpI3USQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737549953; c=relaxed/simple;
	bh=RLnDsc0LVcQD+jibBHJnMr/Hdg7V8k4fWaabcqLKgjQ=;
	h=To:Subject:From:Message-Id:Date; b=dKFmLOyrLXvOKBXIW90MAtSvyQdb/Gg6HIt7rvjWxT/DwSzWHry6LqhtbflBYM5Gnry1r1F2dfq7l0T/MIeO3P4Sjw2Di6wECgDP3/n9vcUKsDs48OLEfRV46vcJQXUUMmLhlNfSURT2UY+A1ddtQ3fm7Gtj7cXBl2Oj3Je4Yo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvPFbED0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvPFbED0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD8C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737549953;
	bh=RLnDsc0LVcQD+jibBHJnMr/Hdg7V8k4fWaabcqLKgjQ=;
	h=To:Subject:From:Date:From;
	b=RvPFbED0/S39SnzMLIgS99178U7GSOKR57QJGWXvclyND9MCKefpCy81sIUAUOr3u
	 HhuUktxBzityxRJDuhOuLEr5lFo0rbC8R3fVbPFWssz8Pb7DsvStke5C5jpWuq0AnT
	 5nbc6EiLS4bRbjkCruvMRlApXy0x0sBzSeC9LXP2eLIVOAwc64uDFDOoClFGHTx3xq
	 R54B5ToIyCtQnfTCf0gOAjaUOn/fkFweZXVkPMqNZLR3sF4+bHFC28OlKFSellT+QR
	 qYQtIihwRvD8zgi60Jxm68AliJGQYS81tDeqP49JcIe2fXvg3qCXSlOe6/A+eBGEgX
	 uptNpRydnxP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93443C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754995359.22379.9324712782719027935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44daed88fa773dab75074014cc2e3dfd012f27f2f4318cd314b6ad6c21c1c11a
Date: Wed, 22 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737549953
