Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512AC39FCF
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717327523; cv=none; b=OYoefTqj4lNKxouFnP467RkoSt5bxPZPCMypEQVi7ylWfXR6/DmBuE2zgSvoYcfRGc6yEvV49eJ5DuAbvRRnZqt0QcGshk46SecgnNrESJyJ37Xpfdqn0wliNVCUNmi9kMz+95moi2W6SUkFe4cH28qRtAka+1hFM2NdKkmLz84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717327523; c=relaxed/simple;
	bh=bGseSKfbGkzkbZ1rlplzjM14uOo8IlhOSEIFv/PVhFc=;
	h=To:Subject:From:Message-Id:Date; b=JHMA/zTf7rk31cg3clJVxsx3/cYniyORnRdwtoqPb09Qxz+Tz8mle9bc5MAcZZiD/YJkixZ9liYuFExxR1LpbXOuYfZwsLFCKMILcrefs6chr2aSMXzcFYBRWNZJ71qYyCDdlpAdkL5RZQY9zETxABKU+XyeSpcXt4+dxFFsvtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdizfDkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdizfDkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25B2C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717327522;
	bh=bGseSKfbGkzkbZ1rlplzjM14uOo8IlhOSEIFv/PVhFc=;
	h=To:Subject:From:Date:From;
	b=OdizfDkTOuw0Ic1r98p0PTmD0Z8PVSM8XGt7dzVdBDAkEykvvQDpuR6Leo11WXSUo
	 FbRMZo3HXj4r+jiAldUpbaD9pw0X/luP4PkeJ2J9BuOm0c3ByvRGSFrQma16x+PVMV
	 PC/x1kCljK8UhZVekvkWN7dtWCIvBjRi2PMjTYQPhSJH4LbAQkiNZLBWirP+ZSRrAL
	 nb5ISUA2LEkSL6MTTnIBiLKFnlw6CJRde0HpaS6iOTCpsVrWg/+NE9B1JEKoq77Iy4
	 P6VJa/1wAF3fE/HXugV7nVofBI4XBpFw2uLesuMCD9E5SogTqE4INbzrkZE0NVxTWB
	 iXxhWBXCAO/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C2AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732752277.3995.3120003382660788714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2187dfdd3d69cce1e5b22658f3c545d93d34cf08b48935c437c82f74999b346d
Date: Sun, 02 Jun 2024 11:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717327522
