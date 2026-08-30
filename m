Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EBD1A683E
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788055834; cv=none; b=H5KTX4V8KFinxMHIMVz2JEKZ51XMDGgYeAgP416Jt6NGYy6nzXbtXl/zQE5HzRmQdH+9ICU6Jn6IdcDsakmzm+SeyzV92dMsnIhja02UMs4yGlxZI/ryRr1wXo7aCjkNo2uZjQ8kTNL/D6CPjt1P+TaVOKPxk5qYDQjrqp8q2Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788055834; c=relaxed/simple;
	bh=3SxMi/kmZC2Dhp7zyEvZxh0rXo1CwB8nLoTItAhriho=;
	h=To:Subject:From:Message-Id:Date; b=dlquUzyndOF2AG+Jvoeyz4hYAcj8bNa8NOY8mJr/Y6fba5Ua0y7hPM5Rl+8AenfkcSdyj1wNOjkGUHi73Tp1kTiZBxq7Gy90VR7HUdGeWUqYHY56U9VTOWLtGAtJyvGo5SYkrqSDiOgMT/uL25vV/3B4x1ySyv2OvMYnUVWlMQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGswSQCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGswSQCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D980CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788055833;
	bh=3SxMi/kmZC2Dhp7zyEvZxh0rXo1CwB8nLoTItAhriho=;
	h=To:Subject:From:Date:From;
	b=XGswSQCImf8P5g/5GrUY+TqVVPLY0qGGHsim66a9q/SIDF9SAljHhSqnCP1P+qSmN
	 jZzmK0WoRhYLaTvwMOO7vo7kveNaxWR4FqdGtvxGVPJS58qkv/irOky8AYP0vgLTNi
	 CHDKlZzN8SfQ+gHWttQcTCGeLNTvcAo4HVeUGJh60fjdRlXkRYVEaZ+JEC1+hTuUOE
	 qTKhZ4Uwd0+dnrChzwNjFwdjhEjg78YjipEaZH/Cr/uKL+40tvqoZ/MbDtGctY8ZCr
	 HWtdqxUnPxIDiwDVZ9KP2u9ioqpt+Y17oQYZbwmnVAT8oQFVLzdLRJNGhTzDco9wm3
	 Cgk8txcS54Xpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04CCC61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805583368.21840.3706181549895368609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f92f883457c660f9359e6620f537aee0de06a52715d98f0117a1056b84dfe85
Date: Sun, 30 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788055833
