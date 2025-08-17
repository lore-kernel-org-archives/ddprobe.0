Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA6B41760
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755404994; cv=none; b=a11u4ydLlzqzEr/UUY1sXB3YJ5nvEqvt4v0hXSDqg1m6/KLWfP8F3Jlfa/KsbrD9WYsPJhcMX5sBRPi5ptqQ/e0gAS21lb0RGMMTZXELgySPc5/627Zhr2GZg8M8n+48K9p8KI7T0RCkSu/5tUO/blJrBcVAdU/UCEc6y6RHve0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755404994; c=relaxed/simple;
	bh=5U/REaNZrKHxSK3uyUtD/44XFl0YQezjn86uJSf561U=;
	h=To:Subject:From:Message-Id:Date; b=IF7oIFzjUsh+mlNEPaLyLDCXKPYrnU/9AV8eDNqfCdaRb150mohaSwfa8Ekq7cie4Jg+ay8KEpAAO6+DV0ikde1OGWc343TpXpsvQlOsANNDptegiRYLoOw5ayzT7vSkj1ZujscTVIzeV4/VQJjk3qwpvwtzOUOpydEbP/Ys7DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD11E67z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD11E67z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2847C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755404993;
	bh=5U/REaNZrKHxSK3uyUtD/44XFl0YQezjn86uJSf561U=;
	h=To:Subject:From:Date:From;
	b=VD11E67zh450NcojAeZP2akgWbFbDriqjBVkiA7wNGwV6Hs4yF5Bh/CXh3gjgy+fu
	 vdeszD4GbMrEprK5r13BEYCyOPmBUqd/PbWoU6lfz0wflpzI2JGiLjVMdnI1+C/Mih
	 JrAUbwk2aCUEv+oS3m+0+QFQmxrpiK7bB3hpBUI9cRzDEo7fiUBddozV6lOWxcb/nT
	 YgGUOxJvpc0hWJcFiu+prHt+aB03SEwbINt6KoEuNzFVBNSyK5qKy83AsMxGiai87J
	 cIY2Feo15UKkVWKabzOVX5vz0X9qnd1dNd1f03tBGb+5bxA5i0Z4SncpWcPh8dsYoh
	 XcRwv4WHFYwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF43CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540499358.23443.14092649631370849704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86564ca631376c7dd423381af4d4f2fa4f9ff95cbe6c5150caa08a3248dc490e
Date: Sun, 17 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755404993
