Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5447117E8E9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719007943; cv=none; b=gLOzFERuw1DiqkyCPh6XZulyhEyVhmpRpMPo2CZ4U/8d8J0d3NAoN7EAj0FLP7nShJqd9xdBJSssVwDtZdQNs1wp5t+XwHrS4fUaAL+KivU49ZybMONBQGL21OR0GeaOmvaQJcuvWOIDOFEVu9hzY0kOrH+Pc4cYkn1vy70Vato=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719007943; c=relaxed/simple;
	bh=3eMfbEjXGGr+wPxCkr6eaTTBLE70K1UdvB5pWIWWA48=;
	h=To:Subject:From:Message-Id:Date; b=G82f7zR5sOWhxPSiBkFiukRH8Z42oFDrY7eGHTiFUuYeD6XXhRbF4LwoTqEKh+aVxw9fHaRJvKVGZ/3rMJY7Dsu7gYyizjsvGG+7FEvFjtsuV5Yc5Hs2wCuwk3KjQuYLe05/IhlI8SBNix5ut8u7p+gbkhOTDbvwy9DuL2HKwkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmIm3vvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmIm3vvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08FBC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719007942;
	bh=3eMfbEjXGGr+wPxCkr6eaTTBLE70K1UdvB5pWIWWA48=;
	h=To:Subject:From:Date:From;
	b=fmIm3vvAqnGFW0iryeLTUecW0WdcHtjBpSkFHE2+SK2lux5427Tdc1KEyZhsTVT73
	 4MOHSwhZFmQOS3Pe9NZEZUeVnoh77+OF0KZW0tCbWTH3JZVsar+14c/drs73SHxS9k
	 yodMzp0rPwOEwgvHDn9yEid4hv7VFzOXId6sr4IR4lyZ1xEOo7E9/mDIO5+VU4jdeI
	 233BX1cISsZi/vN+gqv72Vl7/0mEPCD5OpjHzw0blnaQu7CrC15JwNCGrvbm0+p9uu
	 S5b+I1b8KK9E766+vmD6RGLlfpiKctWuZAqhWPLxqBoxjD66FogJ7hcECP+Oiw6rIR
	 31Rj0/kmkcv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8681C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900794280.10168.14907680187009251481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0219b0061bdb5ef9aa7f026fc12620ac8421d9bef89f417671adcd4d41c47b
Date: Fri, 21 Jun 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719007942
