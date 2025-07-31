Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D538F40
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753934394; cv=none; b=FeiShrwvV5wosxBwwJ3xZoB6IBaoJfozrejDngt7upltJAo2jyLSnEbf99ProZ0YUN/vohjOrVVHwrsQllgsFkMLjPl8BOqDp0gSqC2MK7YOuaVUExY07TqEAsRyjxc425ArsYMUWTTVOyXYYPJJslgDu1q3oSmRPKQk606pdaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753934394; c=relaxed/simple;
	bh=Zb1qM1UwsuhGRwKj5kB16EzIThkTlSHqm6F+rop7lsA=;
	h=To:Subject:From:Message-Id:Date; b=uWtg+Hg/FUCpY91Sn6DWEaVOj7aZvFc3kh+iPqnFtEvscVTNuEAZUz1b0ghUus9ElpR7RGfiH/Rzl6JipPcev0CF7Nc4gJ5gpwz+AMjFLwnlYqFNkSwbM9a0SPHJr8+vexu54icSvUhEKAgt8LCW5RWZHY14DA5yTqvmwSOW95g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7Ac3nQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7Ac3nQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B9C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753934393;
	bh=Zb1qM1UwsuhGRwKj5kB16EzIThkTlSHqm6F+rop7lsA=;
	h=To:Subject:From:Date:From;
	b=H7Ac3nQ2XCFwMP+3D6nd59kmFvb3AwdNH5xoshBTM6kcq47Xxb7ZEV2Nv2B4poEji
	 4j6HLt4ZncWxrKBbH9K7bg5WmkGnr5XgIcw2588rlW9DSSicaT8FREZ8E21G8T6z1h
	 FdDuQ4qB8woBR1Fa5XfN/vB1K24ZIjAJLkeh6i+fu7wErao05zQVLL/QJNyilGuAYE
	 GG0C3PK2cyZ1Nc1mL5dpJMR8BBaBYe4VSbCUFshXqg3M85R6rhgD9BGJlqpT18vmix
	 lnYZG3Lq4ZJEu6gIjwbiC+Eo3J8dInCHqLSZsFb3fhXI5tsy7TACmY6mBzrG4RKYpL
	 ykc9nEa3Efrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FCC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393439357.6390.840309911372073529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b808c21c24c72225a146afc4d0840f49b46984417837dec9aa7ee56b7f25bcd
Date: Thu, 31 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753934393
