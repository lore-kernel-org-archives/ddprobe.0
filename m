Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC161C6A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721795154; cv=none; b=EiL9ly8yBvnk8S/XCJfP+8dEB2EDFdnzmPTgt7OSttzeT3SfvSCmT5gghBeNSMSQp0yGuYc8PSaE1eFOnAnZwAa3E7NLclupNPuj6A5Ek6li3Zt9Eoke2ijCHZZSqF91ZoxdkI005rc4rKHUhEASqSAw0h4kUNP2slnHZnhlV2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721795154; c=relaxed/simple;
	bh=l8SWRJ5FPPEZchxUICnveBGpxFC4zLvdkYhx042wkyA=;
	h=To:Subject:From:Message-Id:Date; b=XmIfeJqljxd6eRz1kx7PKBGlMyE/+lnR6BbjYZWlIO0TdF6YL6GeA+iLfB4E0HoRqFtPYU788g/9J2fNfkbnf27PM01a5aU/Dw7oXCD7RG+jYVqHPAzt4ol0kkJXD9a2QDqGphTJX8KlWpiGsvtkAbSz8uG9UfvL0s7lZA8zJz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa3jM6VB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa3jM6VB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDB8C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721795153;
	bh=l8SWRJ5FPPEZchxUICnveBGpxFC4zLvdkYhx042wkyA=;
	h=To:Subject:From:Date:From;
	b=Wa3jM6VBpYbvhU5OYXwHaTVvxfEy+YrDSpoHd9S7LqNHB6V0aSCtCjBy/ZyM2KEe+
	 GLeIeCBcqTyNlF9ok4ZghyoXJ+obmvdAU/p5OQmDzSbVz+kGspzDtnDpiDD6H3Ua6z
	 pmUlOw+gEtLuTUzki3D/n9TZD+4+pGIzABZsPdfG4JOffSzvB8nAX8ETNcfxnZrZHm
	 lMYoovd4pu5VAbZGDzJGBRo5gg0Qlz2tcSXo4XF5G0OuHFJdheXrhyemI8dPKtR/sZ
	 ENK1a67sAGE/RzdcMwQoKMpNIVGl7j6QJ4LimbIj1CYmQ+JKehIKgqgTZRgTeY4GMP
	 CvrDPOU+DBp2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76B6C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179515362.19679.8099101933836435748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c67c86b4fd6644384c2c3d66ea57251ec6e0c104390d7f9260b0e4cd66422b4
Date: Wed, 24 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721795153
