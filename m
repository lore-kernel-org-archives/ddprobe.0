Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3425740D58B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781037934; cv=none; b=iMY+LEAjfiH1NAJNlZGfamUvou+lQp/469YXyc9r0KFrJIgG/XrXVM/uWrp50l3+zS9jV66RKiNzKLaVBuwYdOI/Y7D1+NF641Rox3Lv1RH+QtTVlqAnBRSJA90JNk4YguwaTP13yzX7UWWZzphE1wfOyao3G1zs1DUVqIu9tPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781037934; c=relaxed/simple;
	bh=1fQGax856c9NJ0RX0hp01HSw9IFHUacso49wLTsrbTg=;
	h=To:Subject:From:Message-Id:Date; b=s/AbGjNyYO8+75mK/JuotoD59pre3wKqwp48AWLKbdpVz25H/ACzmiFx/2QCyjm+3FXsGjpmH5zayNnbCvT+bsdELxPQj+2e3Tb5UTsCy2689VRH1Y9Jeo7unijOJkNtnRA9raBfyTQ5EpoJw8xMwH30edqAglp1ljTN+jf3hcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCCz5GXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCCz5GXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D236AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781037933;
	bh=1fQGax856c9NJ0RX0hp01HSw9IFHUacso49wLTsrbTg=;
	h=To:Subject:From:Date:From;
	b=dCCz5GXjxgncc2y7ExtT3hdhei74ISTPNO2MyMQL/y5jVpiiBXkWpJXHS42Q50iE6
	 XL1sSFzXSlyV09VqA1Rw/PxKjBsctr8b1XmHWjNck2KQIRUywW/86foMyTqf2iG5mT
	 1jcJKUsOGoVTOnj/hn9vrYfQgITelGTtFLdSVwdmcVhiO2TxapPiHStoLot5biQY6V
	 sAQcx07GaXMVD2if32tWDwZZ3WOJmr/4xn25hERW13naAiNbNW2pCYZbhXk+yJZoD+
	 kXa/r00Mt4iO7AaGN82zbS+K8wAt3ICncieKFQkEcZ7iHR0evDi5RLuwNbHLTDjsQd
	 4C4sSQGivRpIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BE3CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103793373.17614.363790345498508184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01855cdacb505c91a6a279381a9fdb7d4f80cbaa62c8e35eb8332c799401b6a
Date: Tue, 09 Jun 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781037933
