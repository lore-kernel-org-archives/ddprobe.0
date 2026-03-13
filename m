Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0051D1A5B9E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773386694; cv=none; b=kmaLFjmcKucx7UbYZCNV64Biqd5mz2d1RB+mCzcgKjk9tEmjoLL2CYtLEVX3FK2I/HjwO9karkoDpZwKOC01Cvt7fal7hMSgO8xnuk708kjQYPaY24bUpNhANVpQvThl+mdYktI+b58otMLxYc4rRoCbTlATAkFYk8X/MY+7Ktw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773386694; c=relaxed/simple;
	bh=A/7a7q1R++hVm+K4DXgANU6qYnqdPkp/bobljD7UWDc=;
	h=To:Subject:From:Message-Id:Date; b=OPSFl/quxchHFjRxWsVje2mqgqTCtdUdR24pI9NvqxIW3oMIcdhgFR00Rw8smwKbmnNzad+BKTmUP8GfMSUrTXyfeSJNb3Qyz/VGZlTL18pqkxRgk9VcZU7WqkBC3DaEo1MeRH/MMtT8+S3DhGhI9SKY2n33A1bzjAwZuwJS0AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR+RA8fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR+RA8fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12A1C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773386693;
	bh=A/7a7q1R++hVm+K4DXgANU6qYnqdPkp/bobljD7UWDc=;
	h=To:Subject:From:Date:From;
	b=WR+RA8fr/TeUvo04CRm3Oiy1jTZEHsyi/5iHOir7KsxD+JjJ5zLFX/G2oa61lSOdB
	 ZOObUlnrTLfuA4sZoIXxh8OmdDnfyyqMPJs/e7kXhQE17OKukEpqECM/UwuQj5ydAD
	 rAhb0ika5mYNNoVg8KZLSwb0U5NAD9IlpYmGAUZadGKaoA5DD8oY59CRcf1wD/fE93
	 zw+eG7VursDP/7LsWHCehpjR8axNu2CztTrVuAPpoGLmPA9pKe8cLHagXHFpPhtAvH
	 H2pjFxJxwNqbkCq+Kys2M4hRmhYusdVvLVZfQsnD+H7eOLSf+GE4AGMFx4t0UggXXT
	 UDapXVoqJpL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5D106FD97
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338669357.23648.16146261136422000183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a65dd1636bd60b06c8a30c04f803dc67031919ea84ffb8578303b3fdf48baef
Date: Fri, 13 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773386693
