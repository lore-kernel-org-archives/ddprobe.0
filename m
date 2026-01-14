Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ADF395DB6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768390434; cv=none; b=kw8DawkCBqexC91tPlpUTiIxLBZaOffvDT4LsPiaQgxElSvk60l8UI2Dy8IJC6LMn6u1U5oWaeRJg/tu77NSZGtpUahvb9AXop4Rv3vukUrShCv0bg5y7ouTaxKcHTD/gMhYH1kG54osXCcEjhCSyP2LQknSW/bosE+HokZq4Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768390434; c=relaxed/simple;
	bh=5rfZVkE79twE8D3wgSHC/CsSNX/YYUp4wzP6crNsJtM=;
	h=To:Subject:From:Message-Id:Date; b=I9dyQQS8ODzVaAO3WCf8iChSnAb2CDSrIuVUD6+FH4srUjP3AvP9Ru2+wRIOIRJGkTC7mxlfDRbVoYcBaqU4QT6ko3wLv83seQ30wsb379WVamcIMhfyYRYXwZ+1nVg+Tdi3biSRLMXGjLmeKoGLnO8y4tDkqnA5AmWF+oqqJEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfqAYGID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfqAYGID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3EC19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768390433;
	bh=5rfZVkE79twE8D3wgSHC/CsSNX/YYUp4wzP6crNsJtM=;
	h=To:Subject:From:Date:From;
	b=nfqAYGIDGPHNyMj6bzSlx6ZZ1c/GwP4mAmY9sk1o7fYlNbi3DDgX5wK0iX0w3dnGc
	 kgc+i73DcOkDkF/iyEvHADeFEU42q39fuGvg3QntE96oU3mGENNskficfJN7TNpqqn
	 m3Z3agUIsJCiAiw9Toqdevdbj22JfaIAmgRygxu1zMuWwX1/yQTaD8GbsCX1BC7955
	 FVZvl44YRpvW/OSFepVZZZAutNt1H/fRsVyyRG/4NcmU/9Nm95SVfnuZ+FQKXkSqid
	 7UuffUqCswoZKlSyemzA4sunWC9bUMCzfyiIk9ESX4CozbOgq5p5TYhi+5IeJ6NYJ2
	 DM20s5Cb/ADIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91369D29FF0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839043358.28475.7437515739499447811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6eef5f657b5c755367ac29f48749831443404a5584316b16e3ef554395dfc3a
Date: Wed, 14 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768390433
