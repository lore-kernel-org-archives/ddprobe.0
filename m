Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B629B216
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766541834; cv=none; b=R1RSJYY+6KhlidgqJyC/Q6vXPH0x9iLAsG72ElUGgV9fyu375yAPcCrhsAintlv3QDUI/DP5ZY2VR5EWDHpMAQvGaQYH0m0B8bEk7WIeuypUuNFq1TMJZvb44iM1LCJzBK86EHjaslXRKjh9RHZX1ZYpeHGx4XkyigTMUyysZ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766541834; c=relaxed/simple;
	bh=iPH2ehwg0TZy5f6TkglNrLsDysmlSuSUlINCel4gJIc=;
	h=To:Subject:From:Message-Id:Date; b=hJ+L5N0lCnRIlgCO8OI84jmgRo15wRwtmVjaVKpTojiywvPzbQX0dvKhrcLHKmPzQCQJcD1Ehml4Ydbtz7G+UPKKRy6Qx6J2vdFs+moPP0hV3U+DwA8VP9juReORRU3hzccMNHzuQmwZa4irxRb3c38Ro6cx050idBzbf4mTbkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsRGxBf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsRGxBf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F72C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766541833;
	bh=iPH2ehwg0TZy5f6TkglNrLsDysmlSuSUlINCel4gJIc=;
	h=To:Subject:From:Date:From;
	b=PsRGxBf2EP89AXd/yqeZTrlP+m+EjJkYvkCMXCefgVEPRBITsdm4q3E82UHc0NLTN
	 hN2HlTCi3DbUpPInQ+4FHrouCPQ34EgMGhZWr+/WPN3+3Zqbh57oVR3IU27kkbWE65
	 BWulksEr15nUm/UqD4VzLb22Z5fbyuzZsHDG01N6KXAUdvzj3C8DV/eZ8IxNSszrDc
	 gtljaYzo39qchOvFbFEIe4ge+1LpF+XkSV9TUizr3FGGkoM+0vv2mYWPQR8D3lMTG8
	 Eh+Hx59yzXw1FPZkVFSgk5XcX7uuU6KIE1DfVxTHy+jV5Q/K0DZ0UaHTc0CR8tA0g4
	 /wbrpQgj6uamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92410E74900
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654183357.20720.14904660811201104092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6672f942ecd7afd8109c3464b5bf4f9b9f20fcb6f938d46a967d069a139d578
Date: Wed, 24 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766541833
