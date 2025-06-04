Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D501DA21
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749007194; cv=none; b=Bign86ZljbKdx4Ws+3XX2DTzm2wfsGXrVlZcPJuvFYafnOAfs4/+ChoY8N/yWt2I50K9C1QIymCFpMg9uF2HXQXd0yXuFEg/psKbFkxxBmp8MOzVpw/GX8GfJ5YkLsBUj0fkSaoI2GvwgUmlV7VHVgifKAupogWp3+hcMaHHPnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749007194; c=relaxed/simple;
	bh=T7Q0DwDwgyxHZBCuCqjzEVVwIKzF4cUQKerzwi2bdQQ=;
	h=To:Subject:From:Message-Id:Date; b=LDZN978llmxEwopyZsjKpSIRdfQ3nSZqOpRw3v4jSediXJ6jbGSIvZEBur1lbDjFR6ygYqpJBYKi5eTRLo6y1+JLmmIyTqM62NQoMyTwurXQHYi6Z0RpLAdY14kLZng7ce6KPiVcNR0EGw7tugVlpaJPIssOYnwvO8sgR2nvqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IReQ5Jgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IReQ5Jgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D77C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749007193;
	bh=T7Q0DwDwgyxHZBCuCqjzEVVwIKzF4cUQKerzwi2bdQQ=;
	h=To:Subject:From:Date:From;
	b=IReQ5JgmfrYBOG5K0srGCSlMXHY6ImX6YCMP+3vCXftkpMc2HuX5Bv3/xxJfA8H3I
	 +x/KRu6C56o5LbGi/y35FQR78V3L0eU9YNMWg0jQo7MQq5BGLwj941O/G5iFxWSl47
	 J+tWkfvIoKbadJH/tcVG4H5RmP/DaGtTNZEvq8FUmgxu9+IN4WbhulHC0Ye0EXtpqZ
	 NqjXIEC6mM+unkv6JHm5VtwjG/gDCThiU5boSMtFe9DZ64/L9gAn4ZLfCsHVnufn1r
	 ob4rTZ4Ha8dNQNe3dqj3awdcEB8z9AZw7e7T7OldmAj/iSajcwhbUpJM7usJuND15h
	 4x4g0d8CCuOAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C63C5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900719358.11282.2808981367881929915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a174e37ca7025f5f63761c537de75aac29a0c77145d61a5bb6ac84d30c5a6d
Date: Wed, 04 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749007193
