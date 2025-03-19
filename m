Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1431F9A8B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375994; cv=none; b=s68n1uK1q0ViaO0jNweOdD5TUnM0McrFj3cQCx399zZmg1F7J1b6eiHNqm2MY1zSSh0uaAFB8PmF+mcTmUiFo/PcE6emRZUYCWcxykGwKO0mZ+ECxp/CG/6KHvMvj/JCoH9ZQZMvvpXaOshSuP1cg8Wbrxz4yLJ6D6GNTX1j5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375994; c=relaxed/simple;
	bh=1YQdEOfO6ZMwunMljUqI+t1sSMQIjTMfSD/JAs2WXHI=;
	h=To:Subject:From:Message-Id:Date; b=YhJlEN371/ts3BQLpt7kggTaNb9yvIiZmFp3p89YhHugTYIummvp3LdhxvXSNHviSQLgT/yRpPzx86nR0mO2e5ddsaHefHWagsNcySSVTO6F9OCeh+8bMbEaCea4QdvmM2t5iGg0xr4dJG9i0vf4AXadLE9l4gJEgME8dAvx95o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO2dlZFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO2dlZFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D782DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742375993;
	bh=1YQdEOfO6ZMwunMljUqI+t1sSMQIjTMfSD/JAs2WXHI=;
	h=To:Subject:From:Date:From;
	b=AO2dlZFUcSq6TPujDi6AlmG7MGlV8V7M/OSj3hgKGl7rFBWzU1vjpBBgNLJ1w0oG1
	 8Chg4bhdhcsO+xSxAOvH1891cPrpsjsJZpB4UZVM39+TpRefizrBuNlP1Q2VU18TZG
	 UPlhEz3YBriwUM4XUAdCwOty3RDeWi7xK+sTOyinmofLAfNi1ScXUH5Dzy7TO3beXJ
	 NXgg4fiDVH2FC6JcwCm6l8MAXeAszQSCyHdCGvrz9aNlOEYxT+1rZeWOg82krrkiwU
	 /bxE/DVLf9CtaDo0D+tUw1y/kNvGfLlJp3K0Iy+liAb8eLnXIX2DHcJskox/slI/w0
	 couGAj+nqBYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D12C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237599364.8364.1186260199473463105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda8e0444daa13261e3f3957b285807d1cb65ece5289e081dbc6245dedf28559
Date: Wed, 19 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742375993
