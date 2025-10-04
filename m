Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C970157A6B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759571395; cv=none; b=REkikbUz+hhlAGu2yPzintMWiBsoxNUx8lc6XoZzzdpcDmRzUqy/pLDd4pDDd0PQHa/2U3HhFL2ZebO305C7Eqh6Eiw8/PvTvfImHZyrZ1OyV94ZG0Mnyc+gywfhDZjBFV1urOYBAWHTwaKphQNanqV0FrkoRlYuO9KtSDr0MTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759571395; c=relaxed/simple;
	bh=DwuIxRPpmMuDvauqaZwAj3FYnMV9cuu847Q/eSxhj8Q=;
	h=To:Subject:From:Message-Id:Date; b=WMC0BjqzT5haK129U5EwgyXRmMnsBKcedQPDT6n87LVtZhUqnShSbXZ9XIaVpXLDAjlWGjNfDXtTCS96fJMNnkOx0EUI0OIIbqaEbOHeEcRjnVRh4oG45rJomPHG34u7IhUcOmiS5QtU+6e0/b/6DzsSn2CUftNvrrHpxU5WUl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRGog3r5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRGog3r5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759571393;
	bh=DwuIxRPpmMuDvauqaZwAj3FYnMV9cuu847Q/eSxhj8Q=;
	h=To:Subject:From:Date:From;
	b=QRGog3r5sqyC8bpv9+/290eqvRZSVOaDmqlv/jlvhlab7Fpq5zPdNTrzw+2DyTY6x
	 9hDJ5CCXVhNHXB2V1ngSdb+VdO3RdSsX5E5bHv9td59QZf0yQiDJg1zuQr9oKqp5Xo
	 acAqm5dEGEk5iKOsImJgijBwPL2EN78eDt1TfSIJKjlI4ewcaDV19GOp76eafS4vL3
	 atqJRgkylMZMXlcqJvn1RM+PD3TkYWtrRXSdgBOaT9hI9EVc/pSrrQKDaCFkjAv3Kd
	 vKR8kQu2iG95pc9l5U+i9sk7c7TF4lQEu/4pvrxQ1cVGD3C+WmWz3fAeDxZCT6fN/I
	 Ry0JJgNXuwB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94081CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957139358.3512.7947364245727446195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2aba96203b5b35cb0ac0fed3fef07eed7ed5acc1c8881ef7428c28a51204ccc
Date: Sat, 04 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759571393
