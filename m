Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B06374D1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730503554; cv=none; b=oY1TJj7S5r3fcMMIc+PYIRuuUp0hfxR58yaQ3O8cx9X1y0ZI57DAw9PSZm7DuBGaK7uojb/t3cUjjFON7ZUeESicGUP1Liqs1X2Bv4VbTSX4LkjeHOmCxkSRV1WUuv/CUWn6dz2Ah4X+4Jf8CQ+2anxi2AksvK7NrG9Pyx7SoBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730503554; c=relaxed/simple;
	bh=r1i92rjwS6Ksmkl9c0fZWcYyuPP/4ZMd3VpfQY8Tozs=;
	h=To:Subject:From:Message-Id:Date; b=ktsp5V8odHDJ6jKA5jG7ZEkIknnEIQQ1iyrkMtD5+LiNWtcc3jAW08nlH+VWrdrUtStSmsSXUsEtZAXHlfl00bsMvHBnix/uJaCHR1C2lgQQYb17xvodOY71CLWCNDQfWutKljfs30wj/qXO5TYI5hFZ28AatV8GmdLPAJlvpdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px/Anv88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px/Anv88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74AFC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730503553;
	bh=r1i92rjwS6Ksmkl9c0fZWcYyuPP/4ZMd3VpfQY8Tozs=;
	h=To:Subject:From:Date:From;
	b=px/Anv88UNdQJLIJVvasITe8PNENJyopBluHAiUa+zA9JXAty6o9pIsSnfY7VNIv6
	 2CLqchdF2V2jO+0+3x0kOC4ETLovondR7sturVD+IEuco+g0pRGyouh2D4iFhuwkQu
	 wZGMvYI/llNgHJ/WgphPVvoE0hUmFUsiyXDBdFOQK/pkX1ra/iWf0GUV3d5PogNgT6
	 sjVmAAMvrSFdnCsh85ZOVgWdAN+SPzSgbJ7DeaMhaT1RD3KFJJyI4eNMsav+1kC4lc
	 Grow/00aAUQn9sIMorY+JfFmZMiDVSyXA3AbTx+cJ7QW1b4MNoqoCTby4rAqO89UGn
	 mtpAzd0oH0G5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BA3E6F093
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050355361.10728.8228597128089302152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba639b14682b4f1983486285bf72c90225150a96f414153eaa62ea26aee9d52
Date: Fri, 01 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730503553
