Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2E0D53C
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747582195; cv=none; b=f0DZ77+cSYwCQqwNlkA7Jcup3upIQCoOeQgnG2a6B5cEkr1DGu4yewfT9PkWGUZHvsmaQDPTv0jzVebrGzbACud/yOFN9yzh2haY/OMRyhlQiFEAE6uMMJGel2i8Tooq+c2YTQcQcIE53KcGZOJ/m3xh4m7hOOfvtg+sKA0Csq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747582195; c=relaxed/simple;
	bh=y1wMk13hWe60ph612KqbLLw7FXMA8W1/OU6XNqHxSiU=;
	h=To:Subject:From:Message-Id:Date; b=ca8mGAbkefzgDT4iFlptkkBR53sJaIMeDE8tmMf3aUHTU1FGTo7dQMlulpmM25Yomy5xnKxMLGJe9gDiWqVOD7HhQ1ebowAjhDYy10fJz33nLHssd5EnmJM5W2ukSKjUesjk1zTC4X/ZLd0P/c4Ahx2zHDJ3z/eblIc77fhNbEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlCXTOqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlCXTOqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F67C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747582194;
	bh=y1wMk13hWe60ph612KqbLLw7FXMA8W1/OU6XNqHxSiU=;
	h=To:Subject:From:Date:From;
	b=LlCXTOqAFZly49mzOTAKs8gTgsuIyXlhz2XQGNbxpsj8vRHX4bU3tI0AK6gYaxunz
	 2qqH/fC61GWluh7k4D1j0yIdVs/HptQuPLv3Pe6IMVb3UKFI5/HJO69BkXZAj5oSCa
	 tfr6SmusWw0Z0l+mhFXL8/Fxnd4Nms/xIjI6JNw5K57BOldx5IlVoMoeDjREVmr8s3
	 xI2YAAjUL0Jb7gMw650R02nLsPrdzvft947AHwQP++vZ9i+/wNMJKrlECHpvcgiGlR
	 pcrCKq+4MYHSimZYTopkr5xKotTe3wGYyw+x1OJkvXZXLHS2jtg3CirZx16MrV6Zjl
	 a9dqcrfGl9khg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F2C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758219357.11918.8303854233023210685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a64b0ee59396a89e8b57957cbb6455e64acf6848ac3aa4e3e48f98a76f71f02
Date: Sun, 18 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747582193
