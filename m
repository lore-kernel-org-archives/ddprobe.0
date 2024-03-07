Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3A68527D
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709813897; cv=none; b=T30zVrgvpD1VgrKOr1XGq77W5V/WrJNDTEDLq/vAq3CiVC+5jreGNKFsIzq/mLsNUESLXer86tttUc14CwsFdvLeAL0fstt0mWCgOhdYm1i2WAftzBO0UBdtReU28pcJnJs2INLHOygsOogl1pIao72PSqXbAtbJo2xWveQBNlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709813897; c=relaxed/simple;
	bh=H8IK09wlDqtEOgj0ixm/vMbAyfkjUz2DGpZt+5yM5e4=;
	h=To:Subject:From:Message-Id:Date; b=lNcnZWfu77NegcGGlshV3PTwV3Iip2oxjYfBcvWW59K8kZqbNW0p/hFX185DYezmT2l6tX1iAlRzG2JwXi51Ds1+Dgwm6Y0Q0IyA6UT9xjsiiOa0dVMduVUlYLgDE/qGOFgVCRcTypLq0lB0AxywaBQmHgg2PQrtUbatVXvOvUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgDYFwLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgDYFwLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEFCC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709813896;
	bh=H8IK09wlDqtEOgj0ixm/vMbAyfkjUz2DGpZt+5yM5e4=;
	h=To:Subject:From:Date:From;
	b=RgDYFwLk7ijQ0kNDzjozJm/oCRkH9lsk8QfIo03DQqXApmkF5F9u+TFiQkfz+PHn+
	 NQZ8Kg9lUkhXlnJCJJ4cC0dpZZ7qpVDXOgqgUauyLqDxvIN2mZqMGrDB+fxRceZq85
	 tKAFgbQwwCNNSlXVLpsEqDclBE0g2EtcagnLNnR2wSxQLGzQ4+EPof19AMuERaW7bD
	 G80XFFse603Rw0pDh+ghwQd4WlQ74F7wX9e9ZXC0ZWAeKeGgN/tIHY8xoaiOtMbijh
	 2JfY5uSKIUlPThmekSvuWnvSZGYXattA8lE6ItfJ4OnS3aTZVPoSjlXvJiMUgO1odQ
	 JcyDki+rHBChQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619F9C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981389639.31366.16962604345252820786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aba8529d0119fdffef33255cd694d36b2743fc478b758fc235cbbf6866ee1f4
Date: Thu, 07 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709813896
