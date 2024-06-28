Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F343FBA5
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719597863; cv=none; b=osYqI02TnSWVP9eH/B2xLTnAqcaqIQYO/sOXlWHQ9FKJBJqXdyYovkUgm8KssaGnx4Y+/7+DccLHeKBkC8WdtrpQK0VrpM5TAdSNNl8qaNCSVjWMBv8qE7Z6XRXscyqjBMDUlZjhjKrkRlyLTJ2TIGc7MJHMiHl9lFpbhhzine4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719597863; c=relaxed/simple;
	bh=fB5qwXKxm869llbFRT9wqbsJV3cfevLzB9EwU1VlBk8=;
	h=To:Subject:From:Message-Id:Date; b=DQTWd30VPN27gqbLI0F/9kAi1titArgiLDtoAtTqDUf1v/kII8C9tjdZCYrRm9M961ltBHlk7lAxdapbIgdu62EQYyXq8LUqg1xVWqO8TJSqn0grchzSH5IRIsp1ZX91d0GM+JiJuqRdMaXDSj7gWQhRx3DgnNI4roZX/n0dzlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iopPqSle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iopPqSle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A8CAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719597863;
	bh=fB5qwXKxm869llbFRT9wqbsJV3cfevLzB9EwU1VlBk8=;
	h=To:Subject:From:Date:From;
	b=iopPqSleOKTxRLDpfoNbUu+uLotSJTHx32Ihd85NzODzm3wTea5vr6HNf497FY89S
	 /S0iMjSrX+4PWg0hcy2dpeV60eV1oS8ltmyLllScDuC1kV94n379h4l+Y/oApdEjtg
	 E2pLj42uZAYBrNeHuyXohJAKnfF8F+0sy6liLiT+Ys/zfMPvqPy83ZtzPlNGFmNuL9
	 bYtkx7RPNgg6qeYisK9yJ/t47s+JLIwNA9G4fK3aIL99MQr4z3N+gS0CHOCN9eKFG+
	 xA1I2MtwJ6+vyJSkxHnv3GC2JW9rJPfEeUlLK7vHzWwqXJjkgDxYtqr/W3Ucl8FmOW
	 LdV1P5wLFhUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8180C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959786292.16341.10302450757255983270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50cff6610045da596b044010881be404bdcd831d8e502782c8d842fd7e0acdc
Date: Fri, 28 Jun 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719597862
