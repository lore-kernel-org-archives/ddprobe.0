Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A18E4A35
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774397094; cv=none; b=Z0XkiU2mNNvt+PEzwELbnV1s3+B+ors6L+4ij/XRCweSczvBhYvrftr3Ou9RdZ3Es6BjTA72Xnpoq8xf2EFi3tz9BuFA/eGXNofGqRYq2v1MS1kT3vZj/6ncMyK85yvdULuobqGvNmDTI8v8M5r92MSblVpq5+bP7kKBHuc5wd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774397094; c=relaxed/simple;
	bh=PqosaSp8PbX4BmmCMSr45S0qeBGvPftMKRF5SFBwUao=;
	h=To:Subject:From:Message-Id:Date; b=GnTVe+YdaOIl7DByes3CVgvmDscDPLaFR0gnzWJySFl6bIJtNN2Ji0s00jdrVCc8ZG59QwtTqul4HWrj7Wx+Nzd5eqoZ5UGAZ7ayF6suQtmCTV9ydMo4x0dgpALtjQBNLHFVG3rWK9YiQJ/Uhszq907v0thqzDs9KYNelaYFaOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiJ3qJwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiJ3qJwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4350C2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774397093;
	bh=PqosaSp8PbX4BmmCMSr45S0qeBGvPftMKRF5SFBwUao=;
	h=To:Subject:From:Date:From;
	b=eiJ3qJwFQE60Y4VhEnGJI5N9/jPVlvXa7Ipbo5uDMg7sbRTCnp5lvKlM4h5JVMO4/
	 OcErTpFLyNigPmuWg13AOTJjZWTJuU81j46gM6FXDW0M6vG8C877Gs4dunu8s9UYfa
	 RSVtFm10TXNXpoCWYGhV66UU+Q2Sd1mL2sAbdO9rLY8qgH6oQVaSIha2BGgctzLgr4
	 cpuUk6rHANUadAUhTZEVdc+dHPtWOg556BzXIbrX06OM6jnQyNP3UjPj1oHeXfr7Rb
	 1O+QbNZbpXerFCIaYa12wk29/HvRQp7mWnBlaqxsz4JOFWlzPZhmx+E0q5cKkoMRSk
	 K0goXrFfP6UVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B66FC72D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439709358.22137.4202887839131562391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2015c9c797611e6db2b079fa87f2cb0ff281fe5f3d06e729f6f0c62d4f18f11a
Date: Wed, 25 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774397093
