Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28272308F28
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764786174; cv=none; b=Dt5wP+h9EPUd4E/Q+hkZp6xgh2HoVgJxWgVYld0T3lXbLBnAl7ydtOmvuDNHGZcHn4zXkqIrxIahT9TwOz6SnI/Puv7N0JzemwH0VBmViXYcPX7xA8JcoU01ZLuy4bQ+U3XM8JuVQHSleAixZNDd2aL46+PtBVxDpO1D4oXsSR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764786174; c=relaxed/simple;
	bh=PkEp5zi64mpSm1sSFyuDompoedfQCrxgiwiaUyGYx/M=;
	h=To:Subject:From:Message-Id:Date; b=twaq5zFUfnRcMcbNydBr68OWa9IzYPRwNTwtPgGYtpI2uR7d2bxiLo7jbYByAo5xhmTEayr5hdPQX4jhi3r12kUR8AfWq0R7gREMAEdJH88A7mgF4nX1FPCYeXXaeFe3yRtZ0ddOcDSEl+d10RI/B0gEZ/RnEd1HTRN7p4okfgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RufJjgWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RufJjgWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DEEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764786173;
	bh=PkEp5zi64mpSm1sSFyuDompoedfQCrxgiwiaUyGYx/M=;
	h=To:Subject:From:Date:From;
	b=RufJjgWwuarykz9Hk7x/tNwqSIFwgvZfl8/tLFvB5eJZUrrmFsXFDzn6G4NqHG7dw
	 k5aEvMVIik7J83F5H2yiEL5VfaJmqHA9GRL08cK03OgV6Jjley+tlJksepqVYixvcq
	 H2ggjWkOYyowvkLzn7DfjBn6dJydl+bZVoqMp3rB4HtJaoNbDdWZ+2RG8FfTYE+lZ5
	 iA7AQWasbPMOXQRFLxhbuZBO0xSao4e75sXzjbofqPLL2s6FC8JVmpozWgQGaYk3sj
	 HocrJlLa3bOCkAh5hkF413RJ2rcIsv1M+QulpXa2PbzjaIIzk+GZ5ewkf5bzS6act5
	 8Kt6kYlOmwGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D2D15DBC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478617358.8375.10758998544862733541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79105e670a48266fea4dcd97829fc99ff0222b58351e6b39900b7e9d7790408d
Date: Wed, 03 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764786173
