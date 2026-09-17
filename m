Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCCC446C1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789678834; cv=none; b=dXF942ploL2GAjf8Rc40azdQsHiGJdTFSU0VC5f0C6RBvbHjaW6kxmV3uu6dgwNhdoZqqRGPJ4vL+acQYKkhmd1r+yswxo/zUaDqF8EBgZurIpvXoenKmy/aCGKsluZHowaMNWAauUlojmCYG35KG35mRtlO7W/BDXdMhRom3wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789678834; c=relaxed/simple;
	bh=YMYTSnayDW7cQnqYKG9JG/pgNYhVfAOT4fn+4YvYq6I=;
	h=To:Subject:From:Message-Id:Date; b=leIjUqmLm9N7IOr7KjJG41WmOBH8t1e0h8EHS3HOuhj0N/JWIDiZpGKCwHFzsM6v6yfooWApHSk/vOe1tXLBa54VzPKiWaXt8g+poV8RASmZVPcslh6EwfcEf64V1BKyq5KDmX23/QeAJ22EFfKnBRj8yNVAec04ll21LSiJSQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+AFceJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+AFceJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EE7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789678833;
	bh=YMYTSnayDW7cQnqYKG9JG/pgNYhVfAOT4fn+4YvYq6I=;
	h=To:Subject:From:Date:From;
	b=S+AFceJ/5QzLFE6D92PEmxFIZmJ5xMyEx1GjEDoeUKYD1Ea4hIPgmt+wUVSEl2OVP
	 lhLSP9zVZavqj6cNRXlLHCosTLwIll1xzgZVTGROtpKjtzPi/uqwVnK854aUAb98+/
	 Vw3eC51vEjvUibKJaYKiRMsfuu/HyUpU5DYYCy2W1WHtvyeMNnxQp1G6ucchM/R5EP
	 w7jcbQGZ4AyU5lNGs/1udhhhfjxsnGnO8/JInPr8kJdenkdbNp08ES9dOl6E+RgzvK
	 +ET4PVoZZA47IkbUqcUXDIZHgrpjq9MGpKxsKKcEHpB99qyrxamlt+SzczSh7fmJI9
	 rp+mhuFYMXlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C7C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967883369.9928.4194349434470248037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1128c7b50f36da1e132f6c6e394243c5208ac3424cfd58ee43ab8e2c1500f627
Date: Thu, 17 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789678833
