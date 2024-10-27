Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B901428E0
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730030754; cv=none; b=D+ZgMH/bFfFp6R7xC7WAdtv47xed2hREQrny04ghbQkXyVhUZ5TPkL7cPpKbtNuEOv6WUcSsh5+yasUfQslZtwEMM8wVfGGW5Smuozf2Y+TY/h78MvzAoIrmvJ4gELsi11JwIacOkWM1EjYBWsv3L9045Urx8SbiWAfgTlTSTgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730030754; c=relaxed/simple;
	bh=EiHC+q7za/Nid91eCBCvUFk20giWDwQEcdj0d2Cf/Pw=;
	h=To:Subject:From:Message-Id:Date; b=uKURsOr5tdSLobyYggLRPO9Lwr9S4Pf/9nDgLKwRfVYwwXkHZH6YgpHyCjDttClzFFJI023QJtFORVYqJaMyvvlURgk8u1kgJ4VwxAUw+71ZFcecfIN2l+63rYNvL+1bwUl58OCldUwGUDSjGmyFFoo6DArnrWzKgj2sqZmiCiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYdpVhFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYdpVhFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFAC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730030753;
	bh=EiHC+q7za/Nid91eCBCvUFk20giWDwQEcdj0d2Cf/Pw=;
	h=To:Subject:From:Date:From;
	b=OYdpVhFoKSFELsaT4qitWnWBZ8dEOil1VEpWHlsTa7nh+0C2kThzBxhiMH/6YvERs
	 SnDtbvU9UWUMERJ8no5W2MJKLilQfFwQlOIwz7aWxsDQH4LOAWmyTCt1JtEllGxOY8
	 xj+cH6VQmWEDXX7+/yIM5+bsjYEmNIHYva5sMBFzavCO6soB6maPmLs+qpy6UO95dI
	 hqIA5GzS6ckId8IVeZunHVxp+R2IsQDOcIePD/HW+YXMikHI/y489KUpYeEemCwkKR
	 emnJozTtqQOglvpIbdrjc2lEW/IZfj49tQzkG1y9Ff+r3PCKmkHeo+m+od5+/h3097
	 3b3wItvDIqMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7B0D10C1B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003075361.3794.7707308707766750907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd78320e7db73243fb55dc2b1d0c2b04b9a84a84e51719f7e81d02b818d23786
Date: Sun, 27 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730030753
