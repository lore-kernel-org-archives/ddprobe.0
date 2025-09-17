Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F3422D78A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758105595; cv=none; b=ccbP5JFFjPnaATtUWPz+biKMvf07BUiVvVHDNduuCe+ev7URcRNC1etzG8dKhKwNnUAf2pH7SPMjhCxbJvOp5Jnuhiy0YuuSMLit0VZ+9kipoUsHZscG3sGISJBHnqEJugh3CwVtPBBYZeK/izu8EeJtRd1cql+cXBI4TFf5CRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758105595; c=relaxed/simple;
	bh=81NXGjSfMwXXSeXzQ8SJ2eOWT7BRy9piCfNHW0bp0GY=;
	h=To:Subject:From:Message-Id:Date; b=PDj2OJF60FSB9kAV+GGwKL/H8wE454GMrYMU7gAOSTQ01g9X2nQM8AiPK4j8hhvu0bi5oR4E3MX1W3siLe7nrYQ7gMpgCr8XzMrOtfrVVVd3Fcuu+PchIRQqzrhRsHwO1x/lP/hJWpTgloNXUKTz+ILlKyBtjuQkWEkP9QnyRJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCA+s78Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCA+s78Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758105593;
	bh=81NXGjSfMwXXSeXzQ8SJ2eOWT7BRy9piCfNHW0bp0GY=;
	h=To:Subject:From:Date:From;
	b=BCA+s78YP2gZhIIcV/PN3GiVmuFDhMAe3LukWXN+6s+r+cXBFZqFgCbaPWfkrGUn1
	 EtD/sKX5u4Wqh2Rpw6P16rS4lfmZSAPbGTNe3Z8HTxrQy28KnjZPaY40po77I0PBSF
	 iqax5ghD9TlODkjB6q2mu3ow3JsMjg6oA9Igh8R/gC3yvJoUAzIzBzN/aUrwU1WyDZ
	 JlcYrhcNuMHMEqgIWvhcAWxAGK/G9XJ4bNQ8RSXWIkWhIScP5MrvWCS0b3b05EJMxS
	 aM7q9RTailPgAC6rSZl6g0031DWqCVlf4i2OA8frKFl5/a2WLsCSwXrUrN8+2okQJF
	 0PGKipexWbFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810559358.21923.2336114309393596703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a779d476a8957306c881d520da05797137198bfd3f05f1dd7abd91b066311025
Date: Wed, 17 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758105593
