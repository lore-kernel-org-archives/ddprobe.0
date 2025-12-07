Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901A2D7DC4
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765095774; cv=none; b=FeeDRc4J5vlwJ1zmBdjSmdbk7k1KHWa+lx0T6o+BloTUIGtx4CneBJBg4t2VoI+2St95LmTLabBNuSm/dV0qjS2OIpXYFqTaDQ6sFcmXc0zfzTmbtg0yNuoJfdVZ1dJnC4XcWPtkbcP+jZyfXPApPSz8nGhj+iX+zL9A3HzfRLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765095774; c=relaxed/simple;
	bh=hfFYy6ep7VSmXhW86uqB8rf3RqfO6vrSiT3rT7BwuVU=;
	h=To:Subject:From:Message-Id:Date; b=ae+mZ+2CT4J29m9mMqJPmCZn8KZFFLOwoBPRKNUn5Ye57fO0MZK45pouCSzjnZfecsPhFA/nZEpDEAOWuGNCjPHdFjZf3vvpVclawgRM1AeN0P3eYvUivqPh0O4hUmuFs9tJxSlZGyGfC6doYIi9yf3j3C9jAfu+GTNDgPAqec4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJYKkVMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJYKkVMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E56C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765095773;
	bh=hfFYy6ep7VSmXhW86uqB8rf3RqfO6vrSiT3rT7BwuVU=;
	h=To:Subject:From:Date:From;
	b=vJYKkVMG217SWBDKTKZQ/BmB0pXctvZdzOr4Lg1j4ePIa9eif/p3TYYn9vcv4pnBW
	 +mGJLlwMbf1dshROU0G7HYGS/Sd7LMPJrIsCR0XjhopHCtoEsnszih2m7VFjKacuI9
	 cIl7YU5Za02q8MvyjMaO99BlmRzSVOmZjXPeQri2PpPh+NxpXqxpHfvhtl8Ipbc/il
	 VfnLaFqfFnO31qRGNnRIzJOz5mPeNzOQS34uL380wXAn0iGrCT5FGmF9sueay9IgWo
	 l3jx0mFFoROSNfsKZALo9PilbRAbUkSWyYYwD4tlDY6GVvTTTNPvCpo7xdewz1ok/K
	 FMasBuziX081g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362BD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509577358.4462.11215451416157397654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda76f681cb291e3ffa04a99ef9c8a8e08b96ae6d78b990aeeb25cb6ff58fe1d
Date: Sun, 07 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765095773
