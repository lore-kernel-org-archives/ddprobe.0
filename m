Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8411EB9F2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780997674; cv=none; b=gpwa/SISyYuTA9NE7jTMwo9s80Hx1L6WlZC5SO/zAOlJhxI+Sgnk5Ea/QyY/93QeyXIRRIJYs+4jQTKaAKpD/WpsaaRm27+aXK4hrT1KjDkFTh6sQJ0u48GsZURgzhO6GJcvBH5S3AHrYqqoqdLbDnMGQYWVKwpZDZEYL7xXDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780997674; c=relaxed/simple;
	bh=O1HPWhgGnlo5xY8CD3BiiKVUoMTDY/Smx5VkEIvXqfc=;
	h=To:Subject:From:Message-Id:Date; b=Up0dPOne7xLZxAul30PYH1nqVqq5RfwY7jV/JzKbXQwwScN969BFtrdEBNEaCYoS3nLL+IEQpNqT86/dCp5sxHvAhucXxFzkFlidvruxlJrRvhD07zk+LDr77pI9p6mlkA7kKsgPlN9AoUF04/1rPayXo1kxLd1p7sACtHdHc1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da4CrYvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da4CrYvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA84C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780997673;
	bh=O1HPWhgGnlo5xY8CD3BiiKVUoMTDY/Smx5VkEIvXqfc=;
	h=To:Subject:From:Date:From;
	b=da4CrYvdTAHk0kToTyeYIgnCA+fwUMC6+KhmuzeCqufbnkgwopDTUm0RodijQZgKw
	 Nlra5DS6TnpJbsPEvf0jcvQ1Nna7GZom97VixSKmlJIAu4BWkaWXdlik5W7HKsN8iK
	 qvRnXrrbKQWtSAYaMA/b08D/MwoFbdsRLOG4ZzaxoivVJOLXxGMxP2TZsRSuM4sMI+
	 CUshq4XiAOw6qsL8SuScSnEAvqivLuUxfYzx6kRln2n8+7eI+mBLtOxsl5KazyaL1j
	 T8WFYsHzkNETSGUW+oRu8y47u1mtbjbICGLbMJiR0jyGmtOsc+RUDbEOBaL6E00N+v
	 Q9z3SoGtv/yTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B0FCD8CA7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099767374.24286.14683059550152470999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf87875cf3562ca3fd4365078eee59b098788cdc02cd3918e3340fc3ed60257
Date: Tue, 09 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780997673
