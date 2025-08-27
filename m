Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3545F301006
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756337394; cv=none; b=MqnuTGJuMruGGKOfFFGx2Duy+xc6tLH2b4KOm9jjjEXBqzlD7ieKavbQtdGDZgmrw7WSypfszqVXCmXfB3muFaRUW6yn58b817hevv5n1313Fv8QFfhrJUxi4P7J2GslVORR2NBuAs6W3B+pp8B2KKVK2Iv+XrcSK/hkghRUVJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756337394; c=relaxed/simple;
	bh=o0Z2bJJv5Nv0ikX75Xj7deU7Fhk9WOIQRYJYfbhcsP4=;
	h=To:Subject:From:Message-Id:Date; b=F++FnfRba9FXUnpCeOaktVLNhZSReXw6h8jcAhzImhUUjvu4GQ4xOVib+y8TU1igRXpcVoS71FQuKgMmR1jXkfC8CUSGSPjrN9xqtefHkfptHUcDUbe6HOtVOtNS+Ot0Uc0uKmPI4XRWzvU8X4mwET2/HqtksDs+isDnZDgkBAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka2hSrFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka2hSrFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D21C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756337393;
	bh=o0Z2bJJv5Nv0ikX75Xj7deU7Fhk9WOIQRYJYfbhcsP4=;
	h=To:Subject:From:Date:From;
	b=ka2hSrFuHaams7u30Oqpwml5cTslzYEWHF/r+2SBWZxRbmS0NDAqOeircG5PMoJwj
	 ZT3arNY+Y8pVBL0CybJT7kwPw2taPkMZFCSK9wRjLldU10YR5lsKejACqrYVLOcwZ9
	 mhSvxXLPw4u94q5bRfHW/475tfY+e5QeKUp6mcvpV0QLP2UoJsUjeVkrn/WW0s4pIk
	 Za05zUo/0n0Q8bAvq7NNdDlEcfEBguGAX10MFr10Gt8dL0oWHuGFyowJbFQtSZ+bTJ
	 q7cEMSqMe5Z6aKtUjzyNlxkc4A4lPAIsTwjDhdWptd+zZToNElmHVVVnE3601UbaZ5
	 hoYJvKo4xETtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED66CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633739357.12639.16283985100194771145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f6350d7aef74e59b5c687982436d0b6548a1dc481d1f594327ad3e410cf23a
Date: Wed, 27 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756337393
