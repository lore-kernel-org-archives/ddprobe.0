Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4810D348C4C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044754; cv=none; b=O0AHs+o5lg40+esd9E7CkcmOmaNJggjNRJqdc6HaJRzTPcc3EkkuTE1+/adCGGAaWWI7NKbOgnJp2PHD9B1K81zq0Ip01pfeLMTPw7TFr6z4+6zCZu7wDMH31gyD3OKQX0+bB7qRcZ+LoDBJh1jaS++YDcXYdgwqmmqt/ZMwKJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044754; c=relaxed/simple;
	bh=qC3AAddAufW3bzx6ty6qwYSpIDrtRlN/faZjvQsRIy8=;
	h=To:Subject:From:Message-Id:Date; b=BvERutC01sBV1N/yCnVvBermPzzUhFmzRvt5bF8juFVUJWb8GAV00xHPjit0EOMF6BPFAc8eMaaRfcqyuGrX3S6qpss8Dxd7kkFSAxDJw9hyfjaQ6whYUm+hI9VLee3jBX02lqc7G81Z8tCSgiDYGXrL3Po8s7yHqNxBeavuEXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em+Ct3Hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em+Ct3Hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27FAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780044753;
	bh=qC3AAddAufW3bzx6ty6qwYSpIDrtRlN/faZjvQsRIy8=;
	h=To:Subject:From:Date:From;
	b=em+Ct3Hr8LG8GM2gpEcg4yIyKjce2Rym/pfplZggbk3ZgiS1wn0CA6BDGi/+prNMM
	 kuCvXsPPRTcPrgLkMuewqLR8r7o3jBWwaKV0bcik8qx0axtLescsAuY3PHX9NvaTx5
	 c/NXC9lysMBeFfu26eDbIQ+tZ0R/Th+IHQK8u2pT9DpEKZJTt1hFOLL9/C8r/y1d5h
	 WvFO/VyfZP0M6tQKFhssUscLzrUv80zGOxG92wpmLehWy55LsTvAMG5mN1J6Py8c6i
	 X0US75Plu2CWr0548UAQDY8nKuq4tPzZhtbVgFAmk5kcit9bvCabVOS8bWw/9uadGH
	 aTsFdGQeLtb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9040CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004475368.23415.8381683992021809269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f82614743a2a47a6ac264a2e6ef5582c04086731f65426ecbb74da5c0033f88
Date: Fri, 29 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780044753
