Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A99156237
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765730574; cv=none; b=uraZMuQbHTS8iOOt9PiHhUwRHeh24Nhl0LxIeYjN7MeF0AqZvHJ6i1A2Xh2NoBDtPArznE8We8hHlA4Y8SFx52eIMT2jDRtmTank6D8iD5b9d2rZ7xKVstI680tDeCNy+Oj+JEjeoHZ1BxgUt8nl15r7W+ROivbH77RCKuWdl+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765730574; c=relaxed/simple;
	bh=Onx2vhB8+KRkRun0gEQp/El3P7BU6FObECyFjLxDLr4=;
	h=To:Subject:From:Message-Id:Date; b=ma/rlfSCQcXc5852rFnqWNAXayq6Ficvci2AMiLBBrkOfYvSjM9/cmQS+v/hfHGuJL/fvA16pkplDVTxD0meJmX8cW8CkbDAuXc6zyDMOMkodVC1NSq639pULRMTbIto35/ZGDWD6H4w97vCSfmTG/GorxATG4KtjAnYCUd1Gfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn1i9Kjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn1i9Kjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765730573;
	bh=Onx2vhB8+KRkRun0gEQp/El3P7BU6FObECyFjLxDLr4=;
	h=To:Subject:From:Date:From;
	b=Qn1i9Kjq243gvrg4znYmcmI3gMyC2KXnda89FLLVkRx4Nh6+npSV84to9/l3D4Ssl
	 1glnnEznVViiKV6oBLuzGcxN2uOPLyKGQy1XMNozsFRq7dTH4sY5h4k7tDPhUXaGP+
	 9bu+lj4rQp/5jng+jQuhQuQQakcU9F+naNa4vvJe4hr3nWki56ClhA+o28XNMmMVB/
	 O0G50dlKG4jUGysEHvAB14jLJpeoIckstbF7S8pGDjNBG+0SCcvTzIhL+Rikq6ywSv
	 Z7QiNcSyVxOsT1/4q0CAveDAzE75LNSgH/IjUV3gg8ujnynhnuvpUwfHQY6olZtKtW
	 0VH3mXZuBkgrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756ED5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573057358.12759.10989393149344330226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c7c55caecf405434367c6cceee7592460e155f2cc07fab11ed2f7cb43a03b9
Date: Sun, 14 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765730573
