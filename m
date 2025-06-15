Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAE22E11CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749955794; cv=none; b=FnekLSZRFI3RlGYGd9uBoh9rRYQN97G9YkQYz7xMBTPrGoS/XKOYKkmviGfOVHt6pRJtd/qgutZPJb2iffsvesgQbGlaD5+rrsR3bjOwKAtGZT8nWCtXW4WsGWiXHxSsUoFeXoOUQbdBQzFQfnoxlwW360Y06bSqeTZIlsD0ll4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749955794; c=relaxed/simple;
	bh=8Ig3avOSSeK+nsC5BeYFAACK0FR1f+OMKootbWxmum8=;
	h=To:Subject:From:Message-Id:Date; b=fvJiY8X40DX67ybzSkEZsBMKyRxY942PtUfKItnbWjM37oCWKz8emvfUUIF16meGTQZhZznGHuDK089sVpIfCO2zLIs5/nsgIVakTpTbk8m6PHJL6uPH5mAH12xm7Ve4uKlc1r8d6YiHdS+s4tb/KXfHpoRo2c3InxeFJmOuWn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNzBPOri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNzBPOri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749955793;
	bh=8Ig3avOSSeK+nsC5BeYFAACK0FR1f+OMKootbWxmum8=;
	h=To:Subject:From:Date:From;
	b=dNzBPOriKbSSyhks7kTsh9hkATe0kCTkvaAdei2UYqHSqi7mhHibataL0B7L6Ri3a
	 48I4zEOWd1E7rS2mFRbp8d6110931V5Kyxr+d96mYroD1i7soV0UjVi8qaOKXs9K+F
	 8YPB6Fj59RMwo444dcKiRwDK/O8rV3gdEMFKjbC4K5G/GOzdQ3zyr8g9uStKGFnv7C
	 hyzX5/+viN2UKJzd6HLStRqaLwkESKu4bKiLa+YAPqAsCXNZAhIo/DJvl21hu0zkbd
	 DihzM37bCe8WBujjbbQkvB2SjRIOyXusfwp4v2GV/c9xVfM9jMAkFEOT9JzFxF0QJg
	 J37epe/JITmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A31C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995579358.3678.12974597616224688756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80044c54167418c5ade92d12faa56bb5c3ddb4881c58fddaa4ec82158a16e72a
Date: Sun, 15 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749955793
