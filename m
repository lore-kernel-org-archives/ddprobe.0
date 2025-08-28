Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DC5272E74
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756405794; cv=none; b=uFmAQdAb9kFDHh/lqcA0WTxa4BAIWrD5+3tuGhFtOndYKKiKiysu/8FjVG5oVt2XAFQDhdq8+JVMFMvLdqqFs81bJgqYOMoXRJuRJvucIlblhjKquMH1Ap1boXl0Otg1UwgtCtv3jQHxTIKYIblAfCYNz1Nx7Qn/7PKxO8enyeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756405794; c=relaxed/simple;
	bh=E3WnEwpCGXuVG/rwbRaOmV11C5n/lqGUpr9pcdeIYos=;
	h=To:Subject:From:Message-Id:Date; b=pUtztwy6VLHEJhPo/X3FSXV6OQHWWEBifessdU5LRQ6TcXeJkOEIoP3EHJH7IWCDW37V/N6vTzF5djA1ZJpVHCn07Z1ademAiL4A2sayIAqUkvMUk8iESVWSIbfoWsMjpdoWEWgL/PtkQkF+9MlkEgiv9ar/9kCwSd3S2ydRY8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boQNAVIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boQNAVIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756405793;
	bh=E3WnEwpCGXuVG/rwbRaOmV11C5n/lqGUpr9pcdeIYos=;
	h=To:Subject:From:Date:From;
	b=boQNAVIiwA4kOv+CQTkOxLv0TyI6pxI77+BwelruI4y9LnhqKYEqXwCIQXwYIifHw
	 pVkWZVmfK3IJ3YDMvZGv4TwnbRfON1frtfn+SiY/bLIiihoec+NNpQHKo7KUqCDMip
	 f2tjCDsAcvk3VKX61FOnEg9rSLZeZqklXAmTdoeKeC37HmBxnq1rGsIMg+nuyZXAQu
	 gm30BwonGyKS/nOgVPHxannIgfqgdhUM+0RP95xd8/AaXRPe9LOT5LTpj1oWKIWWY5
	 7clxIVcEpbdqZucZvvPI0NoV32PFDDcQAWIzB+DXSx+hyOI0Fe29nyHJ3qG6/7NLA+
	 Jq/36cFz67daQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B81C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640579358.20712.14523569199940875384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021d31b20f920bfa9b7a354db3ebc10cf5b6b7142a1301a9d41804603f73cc90
Date: Thu, 28 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756405793
