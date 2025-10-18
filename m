Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285C51FDE01
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760821794; cv=none; b=t4KVKfmyyGdzfE0wtgs2rKq/bDUNxGiNa86o/mcCWkOO37/9ODhhaB/9OlO+GrlFwbGLrXmjZT481LaSmlucYWRTec8vmdSvd/63uksJgZfRLYAWF61/BDXPcL0awEa15GjkmKdaYx2zpnEYoacCO5aDz3AMaZZY1CmIejsBiYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760821794; c=relaxed/simple;
	bh=HKAkalGacfi+2jEKwrgyJlyEUXLeGzA4z8KmshMYy1w=;
	h=To:Subject:From:Message-Id:Date; b=UcctqgTCOFX5PSp6nvFLBQl/WEn4rtU5BTbtl9Lkh3ZHZxRTzKZ+S136247o+C9U8f7soDe4FwkIRVnOdzDCcQXMa5SPctOxQCik/EiA9UEnWKsEgY+3L88XUsyV0Wd2MHKGeY9H8v6cgiui2LxLlD98pCzzjNfzfaz2GMANDUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfAhqPmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfAhqPmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDEBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760821793;
	bh=HKAkalGacfi+2jEKwrgyJlyEUXLeGzA4z8KmshMYy1w=;
	h=To:Subject:From:Date:From;
	b=FfAhqPmyQoPnv7H7zncDXYNAcrx86D2QnD95/QrbF6uEuMaVBkK96iufuMFoJrcUH
	 ndSrTF5+zgK/DwXiHh2BVxihrpuMoGfMgOlYe4WlpeU4LPhJtQzElmGacZEDxy+Bkk
	 aGc+jOV4VjhGpmC9WAMJb2Lmd89L+PSQ8kKNnk5XqRLvhjJ0k8SWk0WlQhDEIpBtKC
	 nXiJ5pWIh+zbAUCRH362YU4tXnux0fKfGHwkGAfrt90C3/k7GUQxT1dy/GyU790kZX
	 eWFlsrW+NS89kRl8KJduAvpkzJSLwaSNoFlZxoFew/4Mse+Bn6vaejCrQwVlA7vpkt
	 plo/4mkIBQelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93596CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082179358.3707.18097306443896803083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2450f325f6b0dd619f6172317b97f1da0a753dcd19737254e59c52bc9eeda006
Date: Sat, 18 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760821793
