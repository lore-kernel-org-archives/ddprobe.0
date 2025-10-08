Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9AD34BA3C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759898994; cv=none; b=HQ0yMQFgka/13j0iGw16wx5fGslH/SqU9JSQplhw9mb2eeH7Txmn21RTaDC1DkhRek1MPwxGzaMPY2Qt8APjvSyDA5HxmEC4+L5y0i7RLjEw5Lpc6VwIMJb7xEIs+n0cieVhsZOZOkZKH4T4aZyW5+9Z6XE5Bmn2wXxKSpY3isA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759898994; c=relaxed/simple;
	bh=JnBXA4TMMkVh9/mvQMoRhxBMeG9ds3ANrqur1PAl+iE=;
	h=To:Subject:From:Message-Id:Date; b=jmAqTaszB20VSle4aYUNnvLpkJA65cnEDdwI6AMqyysuqEQBsO4RPJ6wEpQ1Bim8Kdb9O277HUjw+r2KOsa7Gl+yuA/w6Dp2PhpZJ8Hp6pDRFHFS0VGFFG1y6RGnQGPIpc4ipwvM7/g+CRTasYKvM1W+hd2vqP4tlVDTSq08hgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOPcJrIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOPcJrIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD5FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759898993;
	bh=JnBXA4TMMkVh9/mvQMoRhxBMeG9ds3ANrqur1PAl+iE=;
	h=To:Subject:From:Date:From;
	b=aOPcJrIzTO5GXyx8Ab7xL13CL6eQVwG+yjykVNfBpqxa6jCAzoi2SoindePLXDLtN
	 WIdu5a2oDTK+l0D++j/0lhgUxXjjUOJGOy7A2J1ehioqLSN5+eMPhBMV8VV4FTqlHT
	 /hRHx1UGbIjOFQEOSlGGYb29Nptyv+1cWWATMD093R+WhkAzbmdrUo+m/3O6oyO/uO
	 dMYcS7KxIgnaMvoex69ziRclVExLRZZ1ABGNY+Bnh1u9jv0CAGN8w6NzlF8UbZcoYb
	 F8L4c3bqSW6s+yvvMdCD31M0em4sM74HvzGwjCyRHqrGsjodgR2s5a3pPGgMuevnxB
	 OTPxhxESXR6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E51CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989899359.29848.7361213205858329051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d11f25ea65bc262402893705dc59c34ca9918b6095ae68b53aa787c7cbee7b
Date: Wed, 08 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759898993
