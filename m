Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E981A262A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779156034; cv=none; b=dS+II292IclyFaNFkCBu4JszvNBs2qyzzEwR6EzIuOYfaV9cL8pvba6zOHlTabcF9y/aHkZ9F946jDmOFRJbBBlxKl2V4J0VoZVJPFsezEhV+MQtEGwQhw2zdYW9V6SLxDDA+ic3LpMCutaD6bPNrH6a38FY55tEZrhpi9yDQ3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779156034; c=relaxed/simple;
	bh=NYE30+tr5yL77AIxLrWB+3fQkz+kP9NPtIN+O1UuhPg=;
	h=To:Subject:From:Message-Id:Date; b=n4bEJtNwVswcUg2p03VxIUVMLLvReyMXsXcJ8eq6p9Kx1OP+o3R7Q8aYc2dC50ntBfQ+uhBDJEEllmvpZHjrtKJgcqJ7gYjqa7lSCRHiMxS7QzQ+fkeHk2DU0Pq2eGgDuPujKsrqYjHspbinaS70qGT+bzFjX4n2eiNsEfE+yJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn7zr70P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn7zr70P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3072C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779156033;
	bh=NYE30+tr5yL77AIxLrWB+3fQkz+kP9NPtIN+O1UuhPg=;
	h=To:Subject:From:Date:From;
	b=dn7zr70PGnhcAkoHisisMdPrW/d0yfcB0fZyPjdamgvZYgm9pqzOs3yp1xHGzf+dG
	 4Qj4DTY5k1RHT/CVN3omjxf7n17IzFsdUMOw+AALxfT6osO3QeOaeuQmu3hzRbyB9e
	 H1desJ78IxmamE9E5+eB+lpILOgzonhPk/6Pg4dvgt0jKE9TiCh1K3qe9T84mgtI5G
	 WwyIN2St/Lw7HkZPz9BLWHKJiFqbTHxctNrtBWtvtbCzhgact1baPbUkbJyxLo/p/Y
	 jFHId9lExLN7oHIOL80tN9x/mg6wTMZdwg3OUmXpqzVOus0nJvX9hxtK6qhFt1c23Q
	 7thzGpHwnDstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC7CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915603369.31075.8522108787921575967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fbec6006ac6a5200c22637eb5777a38eba9fd0bfb8751e9cb0c57cb50c7917
Date: Tue, 19 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779156033
