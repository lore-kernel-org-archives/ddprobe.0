Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215264D8CB
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728236154; cv=none; b=APYv6rXFK69aS7UtFYtIISnj9pW/9LSbWVLe4bqL0K1EpwFO/VjFdmuT3jEpdtRYYLzBOM+6sgtGS/iJrfrwtA64udInwv1CVOnwk0JTyP/lwtFRSjrc5byp/KOQSndYtB3Qk4sb0q4uL5CJXvBbyzMNvEWX0Cr7kLRVrBWB9JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728236154; c=relaxed/simple;
	bh=pOJEh5V6rryH5jE3PhQyI2yuu9k2qMwANGjm4Ee77WU=;
	h=To:Subject:From:Message-Id:Date; b=V4x7gvlewRz0BYvUkpxSgciGC0twMZGRVt19/rqcsQPVYZKlfoFuAVIYM1gbHxJdW1oY7W2e9qIrzgg3NLmsnY//qd084677xT3CFebQ4+FRwcdG2i469KOI/2jfHAFYJ31QnhoLnLE9OCwVErea7q8mKp6zXVgwrDuTboaDRvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAPT4e/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAPT4e/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7323C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728236153;
	bh=pOJEh5V6rryH5jE3PhQyI2yuu9k2qMwANGjm4Ee77WU=;
	h=To:Subject:From:Date:From;
	b=XAPT4e/IQ7kaehSx5VQ0ZkNGqojwXfimGjssKqSgvFTZC8ftNh3x0P+UvGKsXVaFw
	 BRBnX8iT4LteyRVA9fV9q9OzJWALvm5Pvk+A74aB3nTIS3A5G7OEp74yPu6MCUs/bT
	 SPXBdocHKAF7Qi2hnOBKbn/s6clhkPSgAOOVQ9UwTAWO1hKpOGLE57ZcuurNI1jbTd
	 wWPGhOa4JODydds3pWieX2kJdU85E5Pue43s6LpojiaN+pxGHAT0EvoCvftdKz+j+i
	 K2iokNM7mxxILRGP75OqvBq3T+uf9In42nC61MixT69d3X70t4k7knUaQUfE/vwyTC
	 4/vZNlOEcx+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95482CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823615360.7921.14649537532938400273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eb0f34ca46d334c38675f4b7e7dcb5c0b57a175077061d856bd624f2c2a758
Date: Sun, 06 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728236153
