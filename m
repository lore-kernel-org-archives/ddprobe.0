Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C814138E
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719188543; cv=none; b=LYB6pw1WeAnrZ0MnyNY9ETQTG98t8PiIyvaIQsPvssk27L1l40CulDQUWEMkmkJeA/7zNFH/cIsuxQ8lo7cXunIFz5VvqYHI2X5Lims7gikJ21eZDKI3iRWFcTS0IYkNIYbwvuqccXCYyOttF6EiFw0zmhNUIO3fviDdebM00lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719188543; c=relaxed/simple;
	bh=4Yo+6t42Ktp2IbFOmScqEaTW8nSCSjSVitdKZVoKwl0=;
	h=To:Subject:From:Message-Id:Date; b=SYt0q0bDz1w4ZMuis3mvAKpMgPIfChjOkFu0FKxuMGquqFA7jn/bgpnbScuRbDP73/M6b5cg9MW+0k6B0Ahv9aBPMs0XpvuIJ7Qg7SMZFBpbEd4rX3+qwHIrMO+3b9JpxRJVhQ7+8BwCnqnDtCFpYf1djxU0veOR4uN2TqaHPUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1cGVIpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1cGVIpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D813AC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719188542;
	bh=4Yo+6t42Ktp2IbFOmScqEaTW8nSCSjSVitdKZVoKwl0=;
	h=To:Subject:From:Date:From;
	b=P1cGVIpDL/InMqJXrEpvBuYQoJwFyON9sbOi5Gbv3lw8IXGoWf6mxmeW8y6DJjpoH
	 qKHV9saUn9tfc2nKPWi08dOnZeP1m1Q3QvURhb+ogdgiFLokfFw7l0U0X9iR65IEbq
	 1XupGWQwHyFyEcr8maopVMFtNgG6ayHjPztwKA5SvgVzF3PyzcFFMK70QhXQojXklL
	 gLc7V8NWLh/vIlEdXkpk4YIq5rqPV1yoIZMnEwQvgwyokqtxcAdlNGwujlpjmEO8Q+
	 DAmUhZGkEoyhxsPvn3b8PZr0DPkdu6w/dsb89z3r/qflD5WcXvJ014CqV5tA/UTtDs
	 NMSqvp+AaXF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33CFC27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918854277.25167.17596593031590547684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1634ee225425b7dfb884feb3ae82255061796f44f7d60534faf5c5deb6854fe
Date: Mon, 24 Jun 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719188542
