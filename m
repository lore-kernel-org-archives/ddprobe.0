Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2E39FE5
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724542554; cv=none; b=PJ6QQegJe87/a15vgYBnJMvtkOVwAvL0c9EhjxaynfwpA8Ti/8+KrnjpBVyE+ZTfrT8K2ifEYM9pmvY67m1C7ILXOY3W/jY4qT7JDpuPHqum2iz2tl6vQcin2TQQz45QiqoaQAlHuXb9DY9azGW4to0eFGH5wfoY6mRNxwVoiaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724542554; c=relaxed/simple;
	bh=VmMS2WKHjSV3CEPvDMfiwUpynh9GN/TUrhROLxorwBU=;
	h=To:Subject:From:Message-Id:Date; b=lCFc4G73o+YtYJXg0g7+yymmu47ju5ejZSdJ36BqOQKL9MdhhBERYHrIsjUjjXQRHjR0pgZFuOUuyMoDIxa/GtdHGPZmPsa+2lxsNCi2CX+xdtCKCCADR4jFzKN1jicE7+PxKXRmkFDRno6KiUoZDT3IDPjsnKEtaHzDoZMAiC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d127sycR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d127sycR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4CCC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724542553;
	bh=VmMS2WKHjSV3CEPvDMfiwUpynh9GN/TUrhROLxorwBU=;
	h=To:Subject:From:Date:From;
	b=d127sycRgB9dtA4pRiBZtGvdYAOvi0k0k5YjJ6Nnm0gXcUH3XRFOhB7hQuOR2EpeX
	 I1Argjc1R04HxC2Lov8pyBCBAyIe7ElFUagc6+dKZWAOiQ3wyPpoDTapc7zVs7mtNO
	 uRRh0FqActMFPa3VJWAi565eBD7zRYKsROIymImXh0iULimcw047L4MvS/2TiHwowT
	 8WC9fqVFTbf2SvrXGQvF+zwRBFm5gpb6YfWaqNqd/ZlsySBgWdwpos+pUU8nM+uYGC
	 aO2rAiyFtiq+OtW2X3DJ3t0UfBHxYG9Q2IGZFYth5YV7vOWMI/8u/dInvjpP4Dbjdz
	 OjiJIutptQ1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97216C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454255359.12473.17566254679319751295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9736084fdf13cdc9136979b563e4b2db3af4e865c1ea1db3f412a522e6024232
Date: Sat, 24 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724542553
