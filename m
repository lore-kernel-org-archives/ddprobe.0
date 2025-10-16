Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259CB2F8BC0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760598594; cv=none; b=Y1BScyVA0CLyaplwgXQf9SJ7FNgLZ4onookidoZTkamWWEZOHrbpga9SbavvW6OcMb8twj374BHwDNPIAk+qs+mndDEXQ5YtSoPvTASBO8USU8Gl8c7LZPgW2u7/joE3Q4xzNPGNi1ZbOMUGUmSqT83H+O9WF7OHVHoK8ANHboo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760598594; c=relaxed/simple;
	bh=bIgB0PQRFa2frlhIeeI4YUtnvFxjYwGsNczkJ+1w84o=;
	h=To:Subject:From:Message-Id:Date; b=Ny3XYDL4IVeLGD5ng5t9MgN0j8dn/316E02eKV84Gf0asg2V3cMZ9xvEEW7hbrypJS0IZ3DrcRyM9qUQic49nP4MeNv/vR3U3psmWdnKMi36CQzgoFVmknRezhbbNW7Kxl/3ICNs35sW4hCIiS+HxczvyBtPPf6tQwYYlCk4x0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDBknVEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDBknVEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760598593;
	bh=bIgB0PQRFa2frlhIeeI4YUtnvFxjYwGsNczkJ+1w84o=;
	h=To:Subject:From:Date:From;
	b=bDBknVEW7h0Q+hKdUEu+yjK+KkATzqoXBUBAWr0yr4gZmR20yv6mPwivmOCg860g1
	 N21fi4l3jC2QsOTPYAK8RDuNULqNLxVz4rjSS+gMW4nHJfk3AjkGAhUZow4Xp9/swL
	 eZ4o8EUdgLD+w8H3RSu2hz2In/2frfHvo2eeiBcfPwMvjo9NcoVmUyjUmw8dCxl1JS
	 uflgNgPK8QWktTju0AzSCTXGOSXof1ADPNoe6csQAscx7B4k2oHwj8tT1R3Z1Ck+Ge
	 Jmew6kRlwY+p2l1i++KSySexiOjTDFGAhCpYA58QSjxlvqyuuN9epxcgLykB0DM8v9
	 rRJeyad++8sfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C6CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059859360.2410.18429298611907831386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a7a926435b75ac2cfd6d16309eb74ea5e6d633cc0c085a9c54ce907eca74f9
Date: Thu, 16 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760598593
