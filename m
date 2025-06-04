Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3669729A2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749075594; cv=none; b=ePI5KautRgNJSsmb7/HMmKrVcYRtTHXGLZQxCpxw5kL3p/YFdpSzjn7dhlik3h2BOcIjnUxPHdeS3dFOjNoY2dXEyUG4N1WMY47hG/pUwcb6kVOTmJXE8WxEVUDGAQdCPGTay27tL5r8IrvUbO5yNY/jF/bMfg3rqg43XX7cYss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749075594; c=relaxed/simple;
	bh=7YUgxoReSu1k/pW/VmU2LqZPBo6j3Tw5ddmwhEZ32MA=;
	h=To:Subject:From:Message-Id:Date; b=uRMQ73qM/s0FO77H8ubgAk/3C04qju7xUoavDmDHlwy7oW9LSG9zkUzS0JLJ1UdJtNM4yHu6BpCBJcO4AkL9lnEgz0uWFjKvfom6WY+gizFJ6KTUCMp5fplizoo7Td0QPDJxRQsXoWRZJLZk438L5Gb40ruMgLBesX1k0icqhrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/s4DFpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/s4DFpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749075593;
	bh=7YUgxoReSu1k/pW/VmU2LqZPBo6j3Tw5ddmwhEZ32MA=;
	h=To:Subject:From:Date:From;
	b=k/s4DFpv0wP+tUGDCB9omjCZ1mGLg8S4iuevEk25SLYg5vipna7SUZCPkAfabQrl2
	 x4JZc8Ga3nidRmOOvfLUmZLpymOEdkqZ7d4cAzLgVoptTN26xswjSGZ9crVqSUV2Z1
	 oAPD4+TrW2y9Pac/IkLlTDjZJJYh12FK0RYecmqlQ0YTPBl0+BSuTsdFgnMDStFpSd
	 ZyNFYxtJvKOcSLuLCZtANA4Tn4sglS/3J+B30KLND+pHBm6FAzlyKWZbtN8gw7LBQb
	 gf9Ghje2RPdcFx6eqXDZXh7UVLeDdkWBgYjzaf8NC4iPavbg0zj0LfN20tfu/cyAj6
	 TCv9sxBTP27LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94748C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907559357.7295.10907538364617522018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23db4821b48238b482b0732bd1fd432d1ff1a3183d7958efc3b23a805063dcde
Date: Wed, 04 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749075593
