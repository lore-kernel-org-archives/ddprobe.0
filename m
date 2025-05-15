Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95C242D61
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747296594; cv=none; b=tqKh7nlMSfD6hokFpkYJ9Xi2eapQo3CuMarJNgDh6yfC9zTI0Z7B0GaweB7ZGQy4kkD7GUsWL0FJy+elQzM3ZvX5MmrcsIzXSgN4gfSM5DbktZqHSPmdtBbuuX3bJuQlDz86wmHiF7MOvXOnYzlV0l2CGBgOrC+ViAREh7Rlb3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747296594; c=relaxed/simple;
	bh=RghwJPUkMWFIBYiM9fSFA0Jybj5ua4WG93x+dSxziKw=;
	h=To:Subject:From:Message-Id:Date; b=HcVf92IShSfdcytYRucEac3AqEFD/kW6R7FFVUxvpGagciBw6GbklizbhTzJI7TApkrYSDQ5MIE49fboC4AAYpmRor10+9s+jABIvWa5SUDy8y45z1L4wg/MGn+wFtFhJ6vvJFM7+QN2Ab90XHdqFWVbh2pSE+IOooOvoF68pM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE2DEDgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE2DEDgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747296593;
	bh=RghwJPUkMWFIBYiM9fSFA0Jybj5ua4WG93x+dSxziKw=;
	h=To:Subject:From:Date:From;
	b=iE2DEDgY6q17SOuLbAz9CVFRLjfPfHF4kst3dsUnyhkN4q+9fzo5kiYOIHzZ1qe4T
	 o1pyxwqsSCY+YTFni2hlp7U+Tz3EvmKWHAfSj3bi+wEAIDv8AU7ztmPJE7oZftnHl7
	 1fpk47Ce138cl648ugPMIiGXvTdJhRHbS9e1etIrmM0MHkPduhSGO15muXpGqirv34
	 xmp8MQBIHfitTEuSUfUoQoQzHsOIBkW8bDX5klGmyASOLuiqr+K2Yrgz9VyVDuJjWV
	 sSwVYjzzNiwNsBLCdc2X351vQsHoDTBelrGZgyUP0+UdLeDhcOUaTZYCwAfqgJAKLN
	 3jQWQilrfXSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9370FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729659359.31044.17180791988368224304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4094ad27d9054cb2c397321d5b73f6734612fc4a6ad8a42ce0e92e944e76709c
Date: Thu, 15 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747296593
