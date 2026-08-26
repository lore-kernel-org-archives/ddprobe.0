Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CE841B8F2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787776834; cv=none; b=K3gYdvu4hDfgva381UszVLwwM3DrKr1EBQkvY4SrefYmCXwnNSW8ETqJPmkJlTNPbiyBqsZpGt52bjDSzxYKtzgb3UzJ3qZr2Ac75Dy12BluT8ZU4Wvx7gnMupIH/oKCq0+DACWeTMba/l0sxj4V2bQChHR2xw2nc9km6UlXScQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787776834; c=relaxed/simple;
	bh=mIUrQNAzVA+pw8ukQm3hoaO8BHSq8XvVFiZIDy+3TJY=;
	h=To:Subject:From:Message-Id:Date; b=QtxSTVho5TqcTN2Nis7g8tRVEbFDDxBcLV4MBcsogx7yeHRlflDw4xuG/rmGTp+qRl68poonXWpk2hyWmxLZ+uYHT/JJEdXRgTO0maOqXfbFONQGwyK245jhkTU7sI0NUqJcaHQGlqEpyuJ53oQNbu9+xxeREZ4Sf4QKJy6h24M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxsSRQyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxsSRQyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2ECC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787776833;
	bh=mIUrQNAzVA+pw8ukQm3hoaO8BHSq8XvVFiZIDy+3TJY=;
	h=To:Subject:From:Date:From;
	b=QxsSRQyutki7KzzehlgZs26pRtzLYLsQRDFlZhpfeCcb3rC9yXlUYrl7vx3RBto4k
	 ypXL2jZmUvX7p+72fdOtbLjA5J7HShJxwQLsbuN6vgHL2l+qNX+10eVJaX6jAs797R
	 pAbhvbVSoz9kpqwpPIDjEy6cRDOJR28BdopnnVY3p9WwFo/wGkTBThvtzUeYkLhDsr
	 ad8fM8cA2RpaQ+DhzQ10PhQE93HXCaYOU5GfZJ54FZWdSdmiaq7ICryrddS62X3t/n
	 WroT4hei2/k9TURuXuYZtAo7ZfbT+vGVLXw9J0vPzViXpN1CwmiWo7GDeRHDgOG+R/
	 AQko/R/Hmj5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC9C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777683369.31660.4568139128576559097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd492825b199b7a9b8ce52ddee8e7414fb6c40d90bd6ea9c8bb5145b5257ce42
Date: Wed, 26 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787776833
