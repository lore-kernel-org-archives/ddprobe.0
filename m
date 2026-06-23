Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8221C68F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782253594; cv=none; b=cur7/HBj0gLmMskUiPSnRCeHHug/rvxLW1E7VkzGimyEcVbHnxKdLzhDKainBmd0ysOWHTq9SqV50AnOtuOr6GKOfECHLaBxFxGCqJ/uhZkDwk9oEssvLYUMbAH84CSRFOLznGxwheFpxHag8qUGvIgYVp6BeZqgFXewMxChRGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782253594; c=relaxed/simple;
	bh=5yUTUZSVVEi1Rik5lqXG0n1F/TTWBOH+cmiBs5zVmrk=;
	h=To:Subject:From:Message-Id:Date; b=hgP5EqteYpnJETzTs3TIJNQfGvxfW9esL5nbJaEx9U7QfE6ilXL+cIKvm+vT/angyvxH26IQ2ylyRS4Vdx+rUKF6wKZDSCQaxYMZkWmddqmesxe2iH3UGmTZE76NbIZzD7wZV1IWDhwHWyiEzqZsFKqeVHyXVDQVH87D+KZVzY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikyO9HMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikyO9HMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E271AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782253593;
	bh=5yUTUZSVVEi1Rik5lqXG0n1F/TTWBOH+cmiBs5zVmrk=;
	h=To:Subject:From:Date:From;
	b=ikyO9HMSA5oMOmS4l9SgFxNhXbvZ5VTJ1B9jdurNA3zcxp537ijrskpLAxYSD/tRS
	 T8/GfbHivgfKHHg/u/kI73guEWxPKUjoDjD3ZdWw9e3MgaRNk7+PHgA3RIU9M8iSxa
	 iiAPe/Z9tBADMokgLadO8RbDlkF0vY+wSlttkRr+1xnQkEIyJF7P3Hy2h961pQbTjT
	 s9RCELiVfNp0g79OjijNy42nmrH3k9HRFAAXJsI0AXs0WXXXzFA8W7ag4mELPLpI8T
	 JroygMj/4aash7rNxCAM/6h6Odkvm2aPCKQCWTKxFMEcTjFMD+HyhNSBBIrT8dMgLS
	 N2V8RqlkR9YAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB83CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225359374.6298.16588544777324530133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109fe7993990f30f905c13fb911b98fb37d457ef8d59d5e354b1b37427a8f4d1
Date: Tue, 23 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782253593
