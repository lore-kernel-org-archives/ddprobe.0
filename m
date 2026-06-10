Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3625D7261A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781059534; cv=none; b=Z60z4bZqutuNFGRcQ+x+Tv4tO4anLz7bMxml6gUb/sO8ks/+xK0GVCO78BXSzLyACp4b4fmk0o3HusxhfjF4JYHGeHcXjV3R5SaetRVDfq0hEAyhT82OTRpOWXpbhB3gA6eWls8duIEcMjuyrVRM6rfl/Fbn1+BHDKMoZE9758Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781059534; c=relaxed/simple;
	bh=UC3b4FvLWB5vY+M5jnfvttLYSa7GkY8rpJcAbw1Htyw=;
	h=To:Subject:From:Message-Id:Date; b=GeeNlgXbI4oZrLjCRNh62jvfndV6Tp/zF3Me5oxdnUDVJYMaAqFfQ4z8onKcnfx0/CNU9JvS0sFW0b2I4jf8lfH4Qnvo5whQcCwnAOfGeuWg9IcQceB3J1B2Ow41sn516CzoLzbxbISnG5jO1cv/YzlJo/hLuBBBVbPgGsvq4pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hcl3u3Vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hcl3u3Vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CE2C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781059533;
	bh=UC3b4FvLWB5vY+M5jnfvttLYSa7GkY8rpJcAbw1Htyw=;
	h=To:Subject:From:Date:From;
	b=Hcl3u3Vk+evAPv3U/UrncJKueHXSFFr4eXV0WPzlXx7WumdpSqAgZDN3Dg3ROMC18
	 CYRoTL+AnIXsv+ufQnXg+1IpYDpf90fxeh6QroWXgvpZv2+ioy3ttitOEF0hpJWrMf
	 ZDXTrLoBGrWXGNl/oEt0FqEAXg2I5dQ6gSXceej3McDrEIghOjnkRe4SnFCuHOoNlt
	 CvJlGObW759gsIbauVETYY39xasSmr40bqC/yIeF9CvPw8LO0UWUyM7ubFw04i9BY0
	 EF3wZDhQ5l0L46OQ1VuMACbp1mOx+/JoZfUAnOHRbG+pdIT2sofMQDXOUDVwjlDyQV
	 U2CYb03wq2bCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE16CCD8CA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105953370.12602.11132057568891050299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc8e2171ea6a553fb6b31cc1c9b0c79222e6bf62d43298deebcff30fd4616eb
Date: Wed, 10 Jun 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781059533
