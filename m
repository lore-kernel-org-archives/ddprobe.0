Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBF243AC0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719564263; cv=none; b=N/YYr0eZ50JARzu/wLAOjk0pnykOy5SbByQ7Y3mcidn+1Keutn93tsauA0O7Cp9WhIvl1qWm07KM0K/A99Vo0cDa17fjwoBhlTfKOMGEcSHlJJSL5pu53T8pRewasg0GkHY1Gn5wt/KQwcI433e391N8oxYF83MbwDmsHGo5/6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719564263; c=relaxed/simple;
	bh=Ei4+vaZnm2MxLvgHkbDnr/UU6wmT0qUPuvyMw1XXJ34=;
	h=To:Subject:From:Message-Id:Date; b=ZtE7vzEdWUr9MU7DWOrRJWYA5qrSGgY8W7n469OdLsawPz2pC+6NWbvjUohPKcFlv/FL/NlWsZ8W+2aeJ73griTYawdDfSn3yvTEoJI2M+Amwv2cVPyUcBpz40mjjkYv4KgTcSTktFIO0Zn7RroLkhAuCCbgpTfbyoAZzh97EB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/fmISvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/fmISvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32F1C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719564262;
	bh=Ei4+vaZnm2MxLvgHkbDnr/UU6wmT0qUPuvyMw1XXJ34=;
	h=To:Subject:From:Date:From;
	b=H/fmISvDIzdnremLu0WFGThoNSuUfrNdnGn1ORN51wg63g8/7SC8IXm6r2HRf907j
	 c/AWeCv9ezI05GpDsTJwPIKigicjyIHAaNWgVJBz1V8olKBy8VrZrnxLvscyCHC4IK
	 peozUPqm7ttlz2egXuQCLxP6lSKqTqds4zJ1hJsoJgBls5awq4SxCCWZ7vlgBmzeZs
	 SzyQk9zrHAf2Gy9Cruhzc+DBrgvtMGQFXAd5GyfAH/b6pC8QQ7vQricT1A36hpFbuT
	 8J1ncEesJFYrK7N2YJ+nSTQbuA684JO22gDm2L4i83JOo5cneVmBK2Ly0PJBciipIj
	 SIPHZJn+QU0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEE8C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956426277.18816.5286034660046892240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43501f59c2b407e81faa8c3753ddb0dca8d8867cd8444b30a7d89b0b28f924f
Date: Fri, 28 Jun 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719564262
