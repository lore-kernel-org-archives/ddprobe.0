Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C41D5FB95
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727131554; cv=none; b=pcKh8Ok9af41G/NslZ4FnBne3i81ob+UHJlBOVu9xAGlbPJ2Oqk6HcW+VIGPogE82iBB9xpcPgUtD3Q8KLpmyYzmSAH2LL5QK8h/tiH0XyfPjNsGrULM6SmJ5jXBp8Z5OOFjzuxvGwdCfAxi7F58np3RqTRt3DyYqr0OWi1EolY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727131554; c=relaxed/simple;
	bh=BsndH+GZyveb2iEXFDU22RDGR912+r3ec15BtGy2wQA=;
	h=To:Subject:From:Message-Id:Date; b=gg0MtJbXmw6TfomJg3W8h5d5VBjyN+RdOJE+AKkptLRqXHN+Ai4lDdLD7unWN7Mhz0ifX8R1/UDTJom/J9HaJWWLl3/J7yXfpxuk2+v2IRsYha4a2DHTkweyNMNRbn/hMBRr54gb1XO0OrTXbbmJVLla/vaZ67u7KMeh19LbTE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRSFpea0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRSFpea0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1091C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727131553;
	bh=BsndH+GZyveb2iEXFDU22RDGR912+r3ec15BtGy2wQA=;
	h=To:Subject:From:Date:From;
	b=fRSFpea0gcyQmRLO+rQ3ML5KVGEs8w6Es1Z6HqxggcUbRniwGAVvVtpDTqFHAnHc8
	 tjUUlP/dO46eDSZ1jupmqJAy2DFJT7NwrAwDHHp8ocwwZ9wuEUr0XQZOSdR4BJWN8/
	 tY/Cce4X/1s3VnsDyE8KyMyTVQtaz6QnaIHys1ROIFXTmJvMC3PjC1KPyOnZVd8uE9
	 pJ/Bk9vuwygT66nq66cN2pre0FF7ED2C1blVdchuT3gBdQh2FJScwsl/OsOoy7k4Ll
	 dJAS/F+UZE77W5Dxcp1/GELFKz3JW3xdXj839QHmVNYBchkcPBVFzfp93HVI31Jzwl
	 npjYkZ+dcRw8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B025CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713155360.21073.16886839054770639485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7246354a6670770077a1679b046cef2a7dfbce1129f2f70f1f94ec80ec6e3c6f
Date: Mon, 23 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727131553
