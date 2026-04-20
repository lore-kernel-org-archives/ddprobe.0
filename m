Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F8A30F53C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776698254; cv=none; b=BkrRwMZpGlXlJwtRDGyVqOvr3GUVKKdPd+tZWVKdJ+HACqPJw9ivmf40ZcCrb+vKSLk4m4ax4lJSLfw0LTEt7iKR/AJNCw3C11eA+fmUR+Z9Fu9XIG92E3THVCNtOBS5MCn7Iue3Tpk9Ivb3iaXldS7k41PU23OfBvG3UbJZKoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776698254; c=relaxed/simple;
	bh=Gw0HSe+yWHX9OB5ub6IJSrctok92V9wZxb9RINtWRrE=;
	h=To:Subject:From:Message-Id:Date; b=CiuPaTrGaQVHPluR2wBduxLAbn88oGBEFu0m3tCmESavXJ2L6XyeSdFOXVz9PKhatgpFhzgJiAl+b7p9ZQLrD2HegyGRS3wflIhwsJs3lR4mTzF/1S6Wzw3+LdBcIIo6TCtmcGBBiLBLerMZHVCApFie/FArtdsGaL9fOa2H4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fgpr9MSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fgpr9MSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C003FC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776698253;
	bh=Gw0HSe+yWHX9OB5ub6IJSrctok92V9wZxb9RINtWRrE=;
	h=To:Subject:From:Date:From;
	b=Fgpr9MSSrnF1/c2Dd/Q9L33Ni9wsiOIE9FIWqnnJPOmWVb0dAsSQ4le70mN9KFOVX
	 17+zb0sg8WB40SpEkxALubArnbsJsDds1asxL2/Vnwwom4cRUi2OCe6TWzK4yufaUy
	 Q/Y8Z2kdzVwVSBxbzkSunpe8BL5OG3fP9hdLoOPcpK0lbW4Irn2R69lB8YCcDXoi6I
	 avUNt6TKvqnRFe6Auw9P8PX0Kax46ytqLYPXa/YDyDwOKPl7zdGvgI4PkZmIhF5SW6
	 RTq8eAv8yveRgJuJqToWqiC4T0KqdNBEhz08MID6m6MMhsku+n09KXw0QLOuTV3STJ
	 LeIH+GKcoX7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DF9F588E1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669825369.4358.7229764653890904802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d686bd997a1bd1a146a81d4bacab74f512dab27d9ff9b9d20f35b1bf07260823
Date: Mon, 20 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776698253
