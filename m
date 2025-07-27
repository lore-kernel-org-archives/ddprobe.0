Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25986224FA
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753614594; cv=none; b=pp5Ii7MXdZte16ToZjBoF3E3tYySEDb/7RWOQNsAkDOlARGpoHWnwnZxXJCCWPRlMOGWEuSbKjm+GvxvrnCYD0nUrnhLyyXEhLvNH0Km/nNDliKuKTZOWEjKt8w/TxBmfLUp0YEFt/MLonuZArCsjNLGCqY4H0IeqdJgPi6lGfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753614594; c=relaxed/simple;
	bh=BkzmI8oSdY8h5qxZIpGFWf+HoONLMp95caJvG6vjh5Q=;
	h=To:Subject:From:Message-Id:Date; b=ZCnrjzGS12+YDCwIKO9f4lcS+f22OV0ONMGbzbxsnUJjVn+FnJQd/2QVxw194j+AOj3ADA3zqOWp6DRP8n4DjpP6M13A2QXalmY5YTO95ON0OMWa5chy1h78uivuW6THV9GT61pepjXFXYKmNu2ogAcHBW6bqAAZsbfCKa92vtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGnUe0/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGnUe0/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8927C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753614593;
	bh=BkzmI8oSdY8h5qxZIpGFWf+HoONLMp95caJvG6vjh5Q=;
	h=To:Subject:From:Date:From;
	b=aGnUe0/XnpVw9xf0jOSLYRBFlv3UA+F9TAZdqrXGtYEZ/VlhLaT7YYhTdUJp4BADp
	 Gy8HNa5wKenrpJjuj+xDnTQY/IiVp/TiTxVdB9zsfEaWHbYiGEtMTHweJJlz1W0znM
	 98nyGljmgcxck+UgC3f9g21F3DVmm/mE++CVuX5pYl3qhFLMAdd4HGXCGBQhPKy3Tt
	 XtbflIz8FamOYqPAOFgrbyYyPkIAvpQ8VAE/AVXvvCiOD8iFdX9HaFH8hA2FhfVcqd
	 MnuU7aYg9eNGxTmaFQSG36Yeg50wUBlMj3s0uLlcdQgXGYQOiqUkk1eQqFkyhAIVEK
	 YCGb/1m5W86dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448FC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361459357.30417.8394275799879111019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f76dee953d4c6f354d46afc94f84b4892e04beede60967bc8b088406a0b360
Date: Sun, 27 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753614593
