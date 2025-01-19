Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1D3F9D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737304554; cv=none; b=QkHtddGlkDFprTO4Ezi0CLv03O4X94G779G4x8j5BtfdTTsO2RH01w/hVk3G0+onLYdAI2GHwcfZBvjyeeHbobICPCQ25zr3IOO5lvzvFeUuLZJc37GO0hNyvjSh4eAeLRAFqgFhYkg6FNKVCotLxCUbOlsY5yRf/lobNXl7o3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737304554; c=relaxed/simple;
	bh=k1Lr2nHyMvBiHe3/dsLWmBW6ArgVQdcpyDp/gf41ezs=;
	h=To:Subject:From:Message-Id:Date; b=KvXIYojMsHEoruf7tVwqHC4kH1LRKioZVSx3l4VoUP+GByrCdUt044y5M8KHygjQZOf4UJ0GYkyusDcJzXUtCuQiPz+j88stVFRRFPgtFSFDA8b2ELwYttZkR6iTpj0lIUJlp0C4+N4BUF0ludvMiexKrhRlWx2davGbZp1dyrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX0xbYCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX0xbYCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF70AC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737304553;
	bh=k1Lr2nHyMvBiHe3/dsLWmBW6ArgVQdcpyDp/gf41ezs=;
	h=To:Subject:From:Date:From;
	b=oX0xbYCwsaD3VwAQxdX39XgnkFwDPwBZNh4IS+zSxU0uWpy2KX8olCwV04n0s9JR8
	 dosr4WQbNAUqo9GR0SfowJgWx/MsScm2nQSh/9cAb3OgpTvxJxOQveCLh1gKVBh8q4
	 /7Dr3tQxf24EiIiSl7j2ALpfb6x7PzXD22MY81sSXr24MmA/gTOksHT2Ezdeggi8zV
	 MymfwfTrs3m1BvNsZOv6MHuXb1qKseEeBg26jXoZMk+FYarTRc4sDKFtEmSCA46uve
	 Emk/XOPQKH2R5Ej/9cnpoF67aIoPEs26cqIKHatttM5C44187br+KSd+cesXkSDcI/
	 kiL9mXIzcWw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C24C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730455359.29685.5329684180956059708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea7cee0cf93bf7e59773c0bd5d7034c0eabe73b51ecca0da1abd1b61d9ce3d6
Date: Sun, 19 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737304553
