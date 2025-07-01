Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0621F2361
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751382594; cv=none; b=XIEsnMy54gLBQOepZCp1Cy0pEtC2g8jIVMUJVXOLRp8Hd3PC9rIZglgh99SiNjMWBXq3OYWMgrh5RLsBZSsXffHwUnXi6LzPRZ9bjAY6VQjYrVh3A6cnxADPyLmJ4y9AmDqXBMfxyLLR7sSOcm6MlJjmRavp0iiBMocbme0fBpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751382594; c=relaxed/simple;
	bh=xORC+O8RpZVEpUAQIevHQqS9lKsQGYwutJl2WHS4tK0=;
	h=To:Subject:From:Message-Id:Date; b=swwlLEYlNwtA0d/Pdt4bvtSvksp+T+plZAG7B33gpl0jFa7v4N9IJ/BFdAVKzyaNFOc5SzkZferjdxjx1v0e5C3VoPOdv8ivM9woK0sLO6O0VlmmPg7cP53xBjZE/uWMP4V4WCBqUskvR1ofGK0J900caXTrIAPDnAqDFRNYGP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7pVzjuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7pVzjuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751382593;
	bh=xORC+O8RpZVEpUAQIevHQqS9lKsQGYwutJl2WHS4tK0=;
	h=To:Subject:From:Date:From;
	b=q7pVzjuXq9mhnXLzwxZIxT0A4GLHayA1y0bsYESpMHWBb1pIDpRAWjBB5Oohlkdon
	 DAsk6j5fGxd2DwrNz/Rhgc0JJ9WeQUAVLLURAUtSbgK5njinVxiIVyy6fZS+BWVLok
	 wDwtGILMHLJxavPhrLN7+ceXqbvaK2KBz0GM0jxL+e4ruYMSGGj5YG/dytWholBS7m
	 LLfEDM9sbSKGNYfTi3pRTq620yNXW2u27on9zu8lGYE55lDIdmXumxutb7BDN9BrOp
	 dSpUCJiy86dbzFhYzeUO6TKuXTGuqYoPfyIlfnJK4TfCEPvNLV5WhCU2DEZxJO7koh
	 fWy68/+k0wEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A45C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138259358.1636.10667771702183828249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047f845eb3737aa1d8289170c8cb57d3112b2f9f0dafebec3b991005193184e5
Date: Tue, 01 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751382593
