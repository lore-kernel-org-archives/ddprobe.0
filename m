Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C24A32
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753850394; cv=none; b=nO/o8TXw+pnMdUQaHWbWGeh4my/6HHCAL/HkjYAGp+dFtWbZcrL6gL8Fk1e8GntNHZWdyYBO+rFH3/2G0XtJ38GpocXMPdQiHfnmjuvKF+YrtsD6Fr6ZxvbK8TyQOcvHHFVY3jwEZ9BHcSxk+X+2X7mWJUhqkwGBglq4FWIiF84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753850394; c=relaxed/simple;
	bh=L7ehv2kCGnA2tBiuKHWxVXBQNbORfwLZ4uoMTyBFVzo=;
	h=To:Subject:From:Message-Id:Date; b=UFVY+1UeUC/aqzHWjNRfDzNOvRONm/c9rGbcKFSqoIeKJl4KAgtA8SRcypszd8RRjdmthMKOyOLTF+5lJ/oEt/RrpP8Uibsn3dnYBQMnd0PVFOHjqZceig7W1FzvD+h6iYt24MeAzWjk3vF00Ol6h2cg2QZcwb7Y41GaAT0Ck9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBgumca6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBgumca6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D71C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753850393;
	bh=L7ehv2kCGnA2tBiuKHWxVXBQNbORfwLZ4uoMTyBFVzo=;
	h=To:Subject:From:Date:From;
	b=BBgumca60efKa6X8SAVEfg5nlMphGT4BZFG7aINCTp/xi1PEFlxHRR377V2uuWbRl
	 nK22rDmhaLXwb5tyFuu1KWw3m85VKOxGTOaBg6B8UDGOxNTtuJfFPtjaq6+tnnrFOB
	 TkQQ9WfSbfBF65Efslg/aaUdwW1W3SIba6Bmz6qfi/IRUrTgcNsvrHWpDyuvZRwNlQ
	 MSHr9UmErblw4E6h85c7thoVuFJI5VQXhZDrFGLQD8rO8qoSGNJtXOzp2+GzZrRxbL
	 xztu+Z1EWKmQxl1AeZWxAeSgTtcQ1NEoDD8QmA3pVXD6xvx0DbKdigQPPGue41SFMo
	 eqM9nNXuh6J8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD5C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385039357.26385.7379803104383873767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a08ca47ddab20942cc550a4963f168e7e0eae6f8b19677fd4a53e6077ec3ee
Date: Wed, 30 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753850393
