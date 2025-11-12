Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FA02F2619
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762930794; cv=none; b=LavkqIe6VWVzi+D/k/hS/QjeyDfM2Z52wJwUJfzImGUwyBeaLcxItf+urSMtvPbPqn3e915TzRvOyNGBZx/uOGz8dz3JUqmwR8424C/B6JkJbtecH1YYBtEjv7NgxZVGbH/sy6MQwv6Rz9whq0InHH5PDwslKeM3sGYl63FyPXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762930794; c=relaxed/simple;
	bh=oQ+YkmdA4uD5KRfbuZ9v+eCNeh/6Ld+ywMDiNIhFFOE=;
	h=To:Subject:From:Message-Id:Date; b=FlHDp/8jMYLthdGwcX408Ztzr15flHntGyrFU3t1LAUApqHGL342BxqEpRFOO3otO0qNlUTobh/p4awNnN6qfOt9EtQgppG+s1T9GGHzt55NZKuVBQGVvFk2PMe5G+yVDCQC6UFNcYPS29ZTfPSzgsfeobjEyaYKJPEaSkGlaS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gcz7GgoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gcz7GgoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CE7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762930793;
	bh=oQ+YkmdA4uD5KRfbuZ9v+eCNeh/6Ld+ywMDiNIhFFOE=;
	h=To:Subject:From:Date:From;
	b=Gcz7GgoHExUv8KMyDd//Ivp8Z0vCwU3cI8CAMxjF7jahSOZOL8yuBy0ku1IhsHc4a
	 qf5I5F30DPs8YaKaJoqBPuviL0FNRuoBr6pht5HRrR55bL2ZnEziDxGuh7l5YLNNpu
	 w4v2EpG0iovp2hkx18Rbwykojxh2JNrqBvdxXTwD4zB6hctvjvzrHQvPnRaFihOGl7
	 h00kcjaoNgH6jxFlT3iK0s2vsL6yCpp+hRRYdZkOk176c0mdeCejHnPc95C7FQJSHa
	 f11em8lmDWZCqYeb7HHlWEIpHpsyLHvKnPCXCniTM6FvyKAJ2RuOxjuEC00qAzttR1
	 IJJuExygdprmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41DCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293079357.963.8888473176064170830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6debd936ab16fe0d6971a6461fceb48f5a994e8faee111ec44da0d5964627301
Date: Wed, 12 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762930793
