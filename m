Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3C0376F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754727594; cv=none; b=nXJIMtte+dZWWcQEqNfgG0NDN3h/eiOrKZxEGgLYvc4CuN4lFWHHaE9jSL4g09ebLuwzY/P7czASl0UGEV2fIG8cvSY9dlUJvT3ZgmH65pCtQSC2wPflZEwpyucE+XsDMEwjHuRxS6Hrty3acZbUFB3o3sr+umnakUTO4FF6ccQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754727594; c=relaxed/simple;
	bh=7lcjqWqt1DA7c0oQUWZQGaf1J0cckKGRDDBhtm6BVi4=;
	h=To:Subject:From:Message-Id:Date; b=MHakP5UzOXSVS0gCtFNviju+ALVGWj+C+Gn/aYEGdoO0umR8C48F1K5E61jc9O7MgYcAeWg3I+0s7n0tM2E5ygpF5OEqHfwf8dtyOzGlWZwwTeW81u+alNPYWNzjkcQhvdAOUp7uzgH1bB3swHh1dL45n6RG5ek6wk5fTI71i5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk+x24HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk+x24HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB6BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754727593;
	bh=7lcjqWqt1DA7c0oQUWZQGaf1J0cckKGRDDBhtm6BVi4=;
	h=To:Subject:From:Date:From;
	b=Lk+x24HDiH6IHrh/0r6mtVRj7+rfXEgBnulQ6eePbYs5Kvt1cbdV6a1tZ3W1I0bcA
	 Z2PkH3By778qo5lXI/tnpceNHZ1O/+zfAoAVVG7JxxD13vifXEs3bq8v3bT5waxg3r
	 dtGoulO5UPfUhRaslPe65HV9PqGHbgEFEOpwRbKOoW/VSrA5aa+07PMuaggi1XLw3n
	 oWQRP/TnFQk6O3I0QjtLWD+855DXO1P6smE+GB9ROa9PlqrKQgErzP4oA8Isa/jr2u
	 K5wfqaC4hUX81iS9EGOpAaQYaVJz0Z049BmUm9JN0MM+Gn8099rJ6ZBq68ASM6weaG
	 8jybkdlIpYAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E362C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472759357.21065.8890126284051873465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e86fdcc6ebd8c2539e0f6554e66af6d886d4b47a828cb16c00a1521404f74d
Date: Sat, 09 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754727593
