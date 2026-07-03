Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D689F331A57
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055915; cv=none; b=TRdv9g5EYI+R0KgGvZKv407E57l19j0DyaVC+39RPp+K+6KlJnAgMXqTgQbDzMOIjk1yQo5FMzD/eiD30SibuIB06VsvlKMYeOMgi2MKfvj+ydlphJ4oEQv2R1oj4JmUDHopFYodanFQfXGXPk8johPe+lMTRV/G1chDoCzRleg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055915; c=relaxed/simple;
	bh=LVlzUFBMXK4OfYhZz9UG1GSV7EGwEBJ6FUIBCrPIw2Y=;
	h=To:Subject:From:Message-Id:Date; b=PE2xtT1cnSMB0VoEcxYCBlXhaZe99InkM1S4rtGt+VVmb1RXoykzwD2ClSBPLveID24hXhJ942E4UksjF+agu3rP6dS+5tcksR5YgUHsNXCXZw3vdO4079/3NFMirl+Ohw0RtO9tziFmf41pbN+XJp90N2BMNykKAwEeXn3+8Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdvvwCpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdvvwCpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783055913;
	bh=LVlzUFBMXK4OfYhZz9UG1GSV7EGwEBJ6FUIBCrPIw2Y=;
	h=To:Subject:From:Date:From;
	b=LdvvwCpNkbeBru8pRN9oQKFXS+GEquXBkouOEBvE8SCsedk43wnIT7nVtkjXW6AUL
	 s+qaFtAx347vHBkCj5FUCUT1igrasO3l2q4r5pFjsFB0tnMIuQ3lCaLjyhF/SktuQR
	 XY+fNu2KUUEwYDuqNDtls4w4oBIw3OCBcTbyzuKj7shOM9D7Q4IiVzGrvZz56kSrad
	 wYV89dqN4/SCqUe9Lux4Vy98mwlp7YFBEbLZ+OcbpP0H3I1/omt9JDX5TYeILwtS2i
	 iWJhdgHhLWbIvDTQDWXIg0q2aCVAjvmIjoKSYtWn5Y7d7JK6dP7QINkb83Gy4lZBJw
	 5+AMa5XQ2zsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB3C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305591368.11106.15125027580474055868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd5bf14a7d568175b81e7ebdd97770ef77dc10f334b3613f792fcf9be3c2f79
Date: Fri, 03 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783055913
