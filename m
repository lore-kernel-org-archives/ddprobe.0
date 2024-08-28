Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498EA1BC2F
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724826354; cv=none; b=I9UtSWi9Og+K5Se6bzwp2bXRqMMGhCdRPrnJlYikvt87lf5F0g1PhNNbljmPQUMYMqP4Jl1nC5PY8pyOm54vNXEHze3kIoUdxgiV7Z4VOuWihKwi/g5doKYekgVkUiFOJW2HEy/6dt6yCiR9I6yR9RV/0OUFQlnqOzdGmc6GvtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724826354; c=relaxed/simple;
	bh=laSWYlmGB22M4IDClKElApqcxpDUOWvXlW2gRdZo2nA=;
	h=To:Subject:From:Message-Id:Date; b=HL3T1bfD2zVcQDvVHqfKX/s6y/XJf6tp6Fg3yM+QBTapnk1m2J5rjZi2koB1rnI3aQoYHsXb8MuA2uS6uIyrOtYA5I2Csepvbw8Lntm8lE4VWiIcqFqIlX2pM68I12wETBW/sQmuMwnAxkPBIn5dXsQW7/ddkm96ZWjzH6bY2I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSzGOkX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSzGOkX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC0EC5813D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724826353;
	bh=laSWYlmGB22M4IDClKElApqcxpDUOWvXlW2gRdZo2nA=;
	h=To:Subject:From:Date:From;
	b=jSzGOkX9sYOU009AmA418hFdjkA+LNCs233Zrfn72/UnAI/aJds4prP4noZ0fkWOk
	 P82x+zUbWRPqVWTwhwQ0+8kWbWMED4GUjWkH+uJW+yGqL2WZPfDmBuq4d1H/VpXApc
	 nq5kaQgpRYYN9GVpvDgh+CAsmOq9wms7c6Sz6oGX3r9jvphRlGLSIoqgGSyIkgVGIS
	 x/rVgHoRNu/W6Ji8RddZ8l7G6P0f9FAj98VQN4P9bPB1mfdv4ff7fpXfjxwLa/OgFx
	 Yf+22CUMHO0/pRuzUxeSlvfvG1JCpKYAw+AX0GMb/HaS2r08uX2CpXUvfQVx2VBOVS
	 Hdfi+BV/ggz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FB1C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482635366.26301.3555130770676631018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c4e0e003706aea9ff31ef366b413619e5257d1bc1f5a7b5b15e959822194f2
Date: Wed, 28 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724826353
