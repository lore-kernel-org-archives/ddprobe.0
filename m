Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A60F1C243D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727463354; cv=none; b=jEhFyDGfk6AbjeYNnl34WU4SYD4BIKZlgChYXxh5s3etxX1A42deiUKn5ux0E2VoSktU9L0ebjd9XRFYRe17kYzQrF8mdUdZo+lOH+8wqFx6LjhYsJSlylMiGKPNEgLk+OSu6zCmJ457+TpXjmsGNBf62Krq1txLrGWfyLmyC50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727463354; c=relaxed/simple;
	bh=yH2nyZacNizgH4GQxPFrJCN54fOAnxUeP2SMN+zBKnU=;
	h=To:Subject:From:Message-Id:Date; b=SRdm8SC2v86sgxLBJok1/R6Dux4W5v1exQ0aWwA4H+lzpNzrHkXSLY9GXFB9/S5DMpF/5StTmpzygdyuFkILPftA0IVpm7hRehiHD/EOGn/X1YdZGC27BlruLFYA9UtqkMKnxk1Ajc+9LX5fqyPGs7PUmo/AgUqThyTicOzaidE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnUdkrnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnUdkrnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A39C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727463353;
	bh=yH2nyZacNizgH4GQxPFrJCN54fOAnxUeP2SMN+zBKnU=;
	h=To:Subject:From:Date:From;
	b=NnUdkrndOAjfu1DU9W5p5W/z+ImcHG7/hDK1p2ioM3WfVRH7oRKQrOWMpWaEDF2yT
	 spajPhHvdsnL/yD5qouTVkwi7/S9EchxHUp+x4Xvnt0wYaz2U+lURNPr4m9HGVqbOG
	 8Y85Jqb1tn6fwxTKkBff9w4asg4DZyAqdNFXeRfOcctIEyvqzp7U7Wkf+d/tvwTFYe
	 9zaJFTavK2rNOHUlHNkjWyIpUyDVHlGcNrH6BHObORpO99KECoElpzRBjxTRkVg19p
	 nlSu9KFJPuNeR/ZgVtdeYYMo33IVJIkOGdVABRfFO9wz7i4/eIRpREqEO9gYLFx3ND
	 TrYAd1JEvvxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E12CDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746335366.3605.10161112592586099203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b002b56a233b0425f988d4cfa1bbe22ae95982f485cfa7288e237c56c60a46ff
Date: Fri, 27 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727463353
