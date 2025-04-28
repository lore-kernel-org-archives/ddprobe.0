Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2AB1B0435
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745879394; cv=none; b=sT30ut8kMyZUM/mKTrE5BH+z7uxYspwtL69OelaePSEPV5KW4kxbJfKPD3U5u8B6a9tNBZ1awW3I/yV9edc6DectIe4By8QYUjHJkzfUQMYlOICFUIr/+48qzSqQ368X9ubCs8wwxuLdl2Br+OGmceHeBzi5rVhd8P7WFplUzNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745879394; c=relaxed/simple;
	bh=AE4IBBfpMXZ7od30ks9cjP9cfB2JTc+3NOdWYtwOQrU=;
	h=To:Subject:From:Message-Id:Date; b=K6d1JlH2W+MYnxNR0Xtdm77hvCLsvkFUC+Pg4DVFRogVQpc49JhQlpIExMc2BKK65IgbjojxLbOYpVDtntVa2RJviEGf+ifmvsxnd9IzDOjkYdVKgdGpoAbn+h/dROOyIbmQ4AECzJRGGSmNTs+lymSNmRa6Ne9TS9I4xCazLBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqDQ3uOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqDQ3uOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA79C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745879393;
	bh=AE4IBBfpMXZ7od30ks9cjP9cfB2JTc+3NOdWYtwOQrU=;
	h=To:Subject:From:Date:From;
	b=qqDQ3uOI3Bj3yZJM4tgn69iKlU8WDM1ayA9NRMjlVtX25ZDmtpZRB9THyw5FoP04d
	 56T/CVXTPLP1cNkb2d6xmrEduJjl5u0WCamwgl1vLQ4EqJ9nGLjY/LbvusIP4osMFp
	 Xw7lCMPw9ABoM46IcqEqsVYP3uR2hUFZWB3eB5brk0h2N4admDGy/ir/cDh4rQDzYF
	 INDl1jm6X8rbkqSZKDIBJjcyMWbG1I+4SMwGzDQrafYoj4SHACOWcudXIG72JUIejs
	 1qXtTJ6FpxWtoJGuNkoDlWCSdwXI0xfw2gUM/6RO+x6WqMKJEeuQw0Wf1rgHzvB2kH
	 z9/Tc8G64gC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D1C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587939357.1046.14541207426448420709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d18c11afe039726e3267e40f0992a26be74a3a4a663e6b128ae83ac8880862
Date: Mon, 28 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745879393
