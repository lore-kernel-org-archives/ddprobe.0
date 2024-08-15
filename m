Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35B1804A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723703754; cv=none; b=NjdLYs8PamiyYCdmbXTsp1bFZoA5i8ORm7En4hBurTf6/bvw6egpli+Fv6ZO8hIGviJS1ExJ+muLaUyHl7yZKYZHqzvG0Ma9uPB92ZORf1Fg1B1D3eCkTl/QyBX+k6OnWkeuFZNUdvlwdzJ/WfmlyFxegnIWhWadIofcNOI9dTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723703754; c=relaxed/simple;
	bh=4t8jvb9xAPL6UPMWu4vYOwnW2vHAqugjj6NygKLCR9o=;
	h=To:Subject:From:Message-Id:Date; b=VUCflXTBrNf9obXI8ip6wUmQeBayW2B+tUs4ooSWsRx9Ry657a9rvssFxyMPCJiwJ2sdH7lUlhe/bQPYPNoYk2pmzTqZUHQBIQzdjxcSNRndsaI+NOIicT+iShIPvruonpVOSyP8XsW6mxNdghSHgp/0XrR0cE0ujoNL0rnfb8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VStMum/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VStMum/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0922C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723703753;
	bh=4t8jvb9xAPL6UPMWu4vYOwnW2vHAqugjj6NygKLCR9o=;
	h=To:Subject:From:Date:From;
	b=VStMum/Wfvx1vdyHuzqmeFeni2hAFWx0nwPfnrwy7SviF7jUxxWDm8qxt6dR+lAog
	 FRpCHLrazEWeiC1qPc0oAplwit9z8bjYfiN47K4EcCwl4gBERf0BW+0UDyld7fPPYn
	 oUeT9PN5OK81HdhKAQEq0NOdjt2CgWazJm3f8cEP+agytkX3/h+1iE5VuyF9+M7zWX
	 XM8rCSDLDr00ahbDoF7tt+g9wSPQsiiX1FwKK83gbYJxMLJVISx6yL96Ivg8ht5wrs
	 UrJVsXfeQOWyNOXKMQpSKMl3gWhEE5Zgu6H8nwHkv9oC0LONEckQ56a5O+5QTQ0A/w
	 mu4UAGeAEIEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE20BC3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172370375367.11006.10754299671164001426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760674d69b63b0c672eaaff4cf24930288d5da8e40bf13fb87bb5cf1a19221bd
Date: Thu, 15 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723703753
