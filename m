Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158E4285C91
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753960794; cv=none; b=TIEdzpmCP9MNa9kFWr/50QVPQUSlfm2g2BdiM6nBAbGzBROgeNMLijYiALZ0fGoFtjZocE8yLyl5bJG1Eo3Z4i7ISh3nENS3Ak89LEyVFwHigYIa2Ho66UQdQ1w2IzH/pu8wRiC0R7AmdLkZ1uXtarDKYGI0A6P9nJd3khx1pn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753960794; c=relaxed/simple;
	bh=+1wkcCJH3aIwEWoJ2VEX7GCdB1s1Q1XYA/z0EcFdsIM=;
	h=To:Subject:From:Message-Id:Date; b=gB6NLn4lXVoGur42pk8wxDm/XRerpmfM/ltHhScO1MOLubFhXKagVrt3aLIQq+2hgkVFUZIkOEl/sfKNhQD45uoJt5t8JeKjUcyHZMCESwmd/tQISVd/uBltPBffmukgY4i3zlLAkeUf+ZVxuDKA401ALA09yFmfy0ScZvCaBkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY9TOpBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY9TOpBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D540C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753960793;
	bh=+1wkcCJH3aIwEWoJ2VEX7GCdB1s1Q1XYA/z0EcFdsIM=;
	h=To:Subject:From:Date:From;
	b=VY9TOpBZi27Row7DTh03Ry3YHB9NSOzQRrKlFJFozNA2ebAhQ4jt6CxRk06C2Dcm9
	 OhcCaN7Hc5/A13sEErT68u6uZFxjsTa/psy1XQe8V0f772MGnnEUh+IZCDREHYW0lK
	 jz6Po4GLJBBT2xzfUkv+v61X7XQ43ZW144iKfqlqVxJXrU1p30u2guJId3G8G0x4j0
	 p2eJTzlL0jPq5T8KgX8W/hbsMah0owlwNy1E91OCW1lZJ9otmC6i6Mm9/IBvrH241I
	 fZTABPnxwvRALd/M9lG9DDF2PvzKtvNwE/8QJWBIuvEZXflwi3wX0ucwpTd8Vk15tr
	 /2aprFoXyrclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B5C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396079357.436.4441514366878480233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59ae8cdad80be094faa8a56003485f4f3ac0377b514d90a2d2c2a2c29ff2809
Date: Thu, 31 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753960793
