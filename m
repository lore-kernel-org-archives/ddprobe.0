Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FE4207F
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726434954; cv=none; b=NaCt8shgB7bnuGhBDR6gJDYCWeYNQeRzvqZMTzsCbiVdBwo14ndqhQnrGekonnQY0Y0S2rjVxX0oi/RtAGSs4ksHdqIh5/t1F7XmZemDByn59SzrjS/vtOIAhUYwmTgddNv69ETYuy6Nf6RnDcHWSQueATJs78eJURY35eFVNng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726434954; c=relaxed/simple;
	bh=2j8LhylzPT6SHfJ9f20P5BCa145P+4MJAYS0t8+eFfo=;
	h=To:Subject:From:Message-Id:Date; b=m+6tWugP90UvRJ1m7ecbDSC4orEq6Gsh2hDi4Ji6x3RCsSEQX4U3ode7NQmM5qNiJZUnUV9hMKMcQbW/+Z49FE7+6AODxZfrrdpek1ipmDAF0RCYj5cDYdVkhwTH89Jel3piB8h09g6jqhiTvCGFtyqoEoNOxXo4JEoX9Z78z0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfSmGP8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfSmGP8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726434953;
	bh=2j8LhylzPT6SHfJ9f20P5BCa145P+4MJAYS0t8+eFfo=;
	h=To:Subject:From:Date:From;
	b=hfSmGP8q16dE5Tzhl4RBMp8r1LbjC7iDlZNIHW6p5tDEKpmwEfpoMCvKMUvlf7vTd
	 UMX2oV1iNrXHAPWVV8kv37uchljmQHibAqtTDclBNUqkS9UVQBOLf4QpRfh/vwd9YX
	 z13PGUdIb/1Ik1rkEVmMoqdCqPcowR/tZPb+5w1St50glhdArmiMsCYV4Iqgo9Hmv5
	 vBy4LY+wclVbM0AZjHlvFf6atsJZ+ExZZD7u+3i1onHCOI0c6px043b9BkzxPy7Yy4
	 hkmJUtSXU3ayPIDGMGmqNIPWfVU03HGot0tlFXBCRAdQ2Rud3ofbWd/gDmYq8huqPD
	 yjYJsS8u7Uo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93580C3ABAD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643495359.15094.1066820681026072465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f729358d54658bbd778a8a19e3f042107e7a323120f0060b5663ea82b9982
Date: Sun, 15 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726434953
