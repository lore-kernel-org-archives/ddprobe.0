Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ED5235045
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759263594; cv=none; b=LDPegE1YEIlABkAf4RzRSTeCYTVfxboi0EN40iWl0y995X4yvDFjVM066iT50SQRRC3SkdAgYYjFxkQ0JtbjINoADOqg1rrh1FIEox+ZxFcGF+v+l9ZoUkNmqA0TLhWlqxQVuO4ldAiz0Z4PWRzxVVkKg5yvcv7/hxYygsArO/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759263594; c=relaxed/simple;
	bh=FrTWIINqkRmlJ8Jwo00aA8v49pybdJzdhwo3sA1+h88=;
	h=To:Subject:From:Message-Id:Date; b=Mti2MNUm8RUD1xvgugHlV0btNuqKxZNhVfaFm3MWb+3oHNgEulW2NLmVRBBboOVbT0Ug5VFYLoXor/HIA1B3/4//RqHa+MbK8xrw1yL8iw5Z3P5cdAd8zSAzsOQvoIinz5bVhjxhygg83ft2+hDqDFfxcT3lSQzvj5aFVzA2yTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pzh5UyYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pzh5UyYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3320C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759263593;
	bh=FrTWIINqkRmlJ8Jwo00aA8v49pybdJzdhwo3sA1+h88=;
	h=To:Subject:From:Date:From;
	b=Pzh5UyYZv1DEBgP8cYTM4GAC5vE0CsUjVOR+j3mo+12TTJ1bEnr2DBQ/G+D71TVph
	 91dbnluiUKV1n6mcFbcV/zHw6JpLEHTN+mjVAwDc509V7tCVi/ktmHUsm9vApxmBFh
	 5yGV1TAWZxi/As12DzHL/HTTBMrN9KsejHTHkX1JNO0vc6LTs/uX6ynUjcCG96/kWL
	 hQO8UfyGM1g+cSPYImbgGU9OymPClGtP5gwZ7SZGlkrzcxBWcClkBpIIM5YF8NL0vR
	 DHtPioVUlGy5abet/3VeLJ0ldhvEW1HC5W5tyLzfVWeSr7pLjYX6/PbTNS2HNulqXo
	 s+8Q+fnBo/AuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92293CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926359358.24232.11078096089536071052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c427fed4342b88368f3cb0836e344d60b4bce70f461085725ed4a5eb191a66ae
Date: Tue, 30 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759263593
