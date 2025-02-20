Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A8E192B82
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740019734; cv=none; b=SBSLelpxeNqxyzb3T/YGZbR+9qzzMYuxa1UCKW7UX8Mv4yzzFFKw0L0Mhdkqjtt6BAo3oOtvAwEMU3Luc18oOhOf2gfWZ+vWsnIeCRRIIl7/dz/n9su0/I5fX/9Dmj6SRJfQ0+c5XStjuEXUqqxMV3v1wpNophA+9F7gjg1XAkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740019734; c=relaxed/simple;
	bh=tVNF9E/PE/8ZmOXEPBnZLlSVC7qwbEsMaaCWXcxsUY4=;
	h=To:Subject:From:Message-Id:Date; b=CTEaW/gJCBxaV28MoPOb2kB1tHFyMo1jtHBQDGDDIbM1RYiT8b7cj5y3rcYs5wozOlvkgcAd02oT7G478KorPnR5arQPpebHAGX1CRGattJQRZPIYt4T6CUjuQw8x727pS8sCrSCotDe0G9/F/y9ONvRD3WtXiOPpfhj9aWYSQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYJZr9Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYJZr9Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC18BC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740019733;
	bh=tVNF9E/PE/8ZmOXEPBnZLlSVC7qwbEsMaaCWXcxsUY4=;
	h=To:Subject:From:Date:From;
	b=pYJZr9Cw4ERSMyfsoGXkfTYOO4/9c9lPcuqc1PPbITwjSmpCQ8VIykzKMjiRj1Muy
	 x0AWePhMdlq9ZkJkGGLnLhZ9XOx2crilccu3dy9how3IXWsfeIDmi/ugzqMCEtPHdb
	 3gpDP+LrLB1SWow8PbEbZiUR0kd96duRpWU+YFWl8zJMoAB26IgBD6G+Cv19CpPO3y
	 IYAhYdkCtYVUD+yjpiYD+bmh4gRfh8RYvS+sXs9aUh31DFjKyfOWijtwuQvCJVONt5
	 L3s5gF96iEAm0oe9sRFQkFM/6jT3nzYTw8MOVFfGwc4DYXv+5315lexBqtL6jnbrij
	 9sgHjMHQX/e0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95401C021AA
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174001973359.29632.7013041112195209376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57308cf8cc50ccf6d2f490a78c0b5bfc89c52d33111f7e3e1b3c7a1532f0b36
Date: Thu, 20 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740019733
