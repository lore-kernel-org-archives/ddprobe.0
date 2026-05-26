Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E023C2D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779753754; cv=none; b=m1vMCmbpoJxp83/jcKawYmoh68H18c53OAmfffsNpZ9RvwJEFxf6fiVLtVoNH2Z/ZdaOBEon17/ceioa6kAcmIn8+cxDd0N9i8sNVva89u6h68Tc0jm+JN+iWNo+veQTfwS0J8uKBUpZ5F3bjt45xy9XA92Dr5CiX8FYOHK68nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779753754; c=relaxed/simple;
	bh=xArKUbWeECXsRUFZPS+ICET4mGmgHwzdZIh6kYat0I4=;
	h=To:Subject:From:Message-Id:Date; b=s6SOGRBRYtYWx8piqGeC13votAuzu63QUR6y29EHfyZCZKtdgu5/4H0tiJIQ3TNFMGdMmiqohD0/NDGcCWAz1UIBmmVxUN0/p73bscOGYaCa92sRFSKfa0HJUKWugZllEFdztJakVn1UlvegzY7KBUWm7U9Yf4yJ2Rzr0dO4Aws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdRSs7h3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdRSs7h3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D272BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779753753;
	bh=xArKUbWeECXsRUFZPS+ICET4mGmgHwzdZIh6kYat0I4=;
	h=To:Subject:From:Date:From;
	b=rdRSs7h3+N/+OHd5pmhklptrQcm08jPVd+3luwu0DW6/ikBO+AUOzmwr222cAoMyo
	 tk2A+W3lGoHAd+W0dp5ksqaNjhJdISIWkuJSlEKnP/2tvxrmN+9K5/DVIFlVIxGxHx
	 cfe3y0ZerHh1OHJFCQOcGrb7AJZIf6Dp7lSAAKE+xwCx5SaQZPLe41GvDN5hv5IxYo
	 s0izfJr6s9btjlESpFBR13HPt+TSJztQUkDOZ4yYefcKZfI6feLE6JxEy8LqgWJwPC
	 yGP6XybQZUdkUaBUJRo1WsVVWuQXlZPqAU2ZERBge+fd8HdgAkvNy3m3EGHR6EW+QG
	 GjDruLCO0DqBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B82CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975375368.23578.10089260271520831666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d646d505f78031649da4f675b66c5e8576e5a808abc1a07c27ee1f9ba3a3ee5
Date: Tue, 26 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779753753
