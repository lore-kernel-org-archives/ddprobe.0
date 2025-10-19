Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E8C354AFF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760843394; cv=none; b=S7k+TUE4Z2DIM3iHz7dAJ3mtaH5rzkRUBJsaZoJdZjiNvj2F3loiKQ0waBad5e2aFyAiGHiT0f/9zmQUUJZ876jy60NJuD+0pgIhWrV0KDGp33mJMGxSHBZrEMDB2nLRMxqqSUB+aL31UYn8ElwxRn0A0OoWg669vtChORfgmyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760843394; c=relaxed/simple;
	bh=If+/YJlXsP2SKAMSlNMJwNGz50qfnGmssj/hhjRUxbE=;
	h=To:Subject:From:Message-Id:Date; b=swi2sdM80nEQF7iNFaQcoYaXHEa4Gc8UQr0I4q6WvyjQG4EXSLiXnKGS2x+spt5V7qqgEc5hQz0vCy158Huqe8ztmRwTzWhYRL5SMJ51rf1caLral2o2DpXXQKHH0BqXasL8xMuSVPVoJx9vcmYizWt741EHGQPU2NHy3JtI3R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXU7M2S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXU7M2S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA42C4CEFE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760843393;
	bh=If+/YJlXsP2SKAMSlNMJwNGz50qfnGmssj/hhjRUxbE=;
	h=To:Subject:From:Date:From;
	b=dXU7M2S7dTTNu0ligzcEOIFH9JwqcR5W9clmw/kbCVmDZV9y0xn7juuWB32brU4tS
	 PmU3pfwcIVNneoDAAmNk8EfBHBy1dTG+jdns95oRawAxvNInFPPsJcG7Uk8JWjyDho
	 qYad+1nx2aPHx51sDHlcARXUslOb3/FQIL3rn+8dcdcNkzJrNl9V2y9VSApLCw20B2
	 E6/z4heQfgGcwZPUCYhJwnPs9jEnDWWt7PSP1sK6eAvB80HMrZkNDAD97dk6+IUG4M
	 U9wx2coL2RaLC98ZDYidUKL5hyiPV6T+salBKSViP8muqdxodGx/c71gY8WQb5t3vF
	 Js8BsLlz6xjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC5CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084339358.10694.15697976821991568886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f386b41ef132afeaf48ee95de0002e35008cb5b7cc29dde178565bc1fe67e24
Date: Sun, 19 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760843393
