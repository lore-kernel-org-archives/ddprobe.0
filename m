Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB3C23B62C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765111374; cv=none; b=eKBi7MIsJu7CRzVJiGjeQQ9zYIa34vGrhp0RXANqPq37RmVfZKDzvfrujCawWncMAQHqF/QZoGRxEFl6CvX7/i3bb3UCDR09dLoy2UB4+IZaklPhGZK+87JH5t2uwwjqGV536VFuFMl7nW76tU2sUz3La/6GON2gvV6CH3bx7wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765111374; c=relaxed/simple;
	bh=qdOjN4AQjYCZnXdYraNiFqVOCevjAawzcX1zXVV7jLk=;
	h=To:Subject:From:Message-Id:Date; b=SndxFccZezq8mxX8uwOsdZbXXAf2PkYvs5oFtOL8pI0joUAOL2JYTzTUg/90FoEPvhO+21U9EVaOgLI4K4W5f25ddkdTaGpDggM0lkEr6JkySPUw4icfvWewVvQc6W0/lEY3p/GVoGlgiZVNoykDdCvmNI+2ufpHivl0umsdIJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfcHao0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfcHao0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765111373;
	bh=qdOjN4AQjYCZnXdYraNiFqVOCevjAawzcX1zXVV7jLk=;
	h=To:Subject:From:Date:From;
	b=JfcHao0GMULgR0baVSma9CpWNeFVUKFkjhYH9aK3A5ogbnn4pVrBeKojjlTkP3Ou1
	 cYefeP4rRPI+iKahidpCpkCl9bFYT+Uj5E0QXePMon5tFvP01eKUu7ZQs7+OVB55ZJ
	 rmoaeIhKV9GUJ9iHg/mK+eDBd09+PggMNosMU3OJF0SVN+foXgjok7SOvjs8C9AmWb
	 q+dbgufwL+HIVP2c72o1olz4gjMC6BWplFrk8dzCyqqT9mAr3R3HVy7bpsXz0sQuSs
	 /6b6uZujWI+EHS7Jx+JCadh+gpOcxMn+NMqPM9o7nc0sv0xdWNEW+r+m0S11u9QB4w
	 l3gwR0Tsyfq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97519D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511137359.20526.7132239809981633751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdd50438bc4d709f8bd8a4423e1ea3fb2b6d598d904e667614a17e6a9a9aee2
Date: Sun, 07 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765111373
