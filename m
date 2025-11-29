Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D2821322F
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764453774; cv=none; b=gVbIe8mVJfgjmrCwCTuTduoYZL2BUYHs8t+2Si1XE4ph+yQLVwPtAT/IgTiMAYDylZx8WcTTbKgG3aT3wAVKocjsa3HaNA5KNFtPOSNbnrqteW9iuXOJRsa1vGkeOtVuaaAWkD5EcLsrA+7732a4TiTqT1gxaSS7Gk7sluPUFt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764453774; c=relaxed/simple;
	bh=e20DG9R+bseYYauGJHJRFIfVuFILGCsFA3Ogy4uR0kA=;
	h=To:Subject:From:Message-Id:Date; b=BLyBQovc6PdqiT9ezZx7cYuUsEfE5IfdNrAjY14Xjg9ywysrtXmJv/fscyRXfrpCrUtcayaHl6SdURI6EJYDMnWwnzKUlO9GYqrZ8shdLvTHmKCgNrj9LKYxSMnrbvfNoXVJcXjFXcCB9mmw4KSiZn1ZNtkSKbplIN7JjdeIOts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrCeTk5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrCeTk5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764453773;
	bh=e20DG9R+bseYYauGJHJRFIfVuFILGCsFA3Ogy4uR0kA=;
	h=To:Subject:From:Date:From;
	b=HrCeTk5FL+jPKjYH4swu+psRrKZguIfFtOETUU5+Qux/sGxr7ZIWyXcJITpNduI1a
	 ERG65jB047Zd9eUy5yB05NrwiOiFLKH+AqH06Fz09ho+o/CYQqHBkCMrjqx8XMvMHs
	 cBejs0nUbbtWsMOC3uSDNRoTgKCcPbtXbtRTBxnGMceyZ5mS9DNzRxsp4GTbb+1i/L
	 ZkcFutXfZ+ZTHtfTs9poiemo2chOHaJba0VuaOba/sF0CgBY7d/d0p7yrL9ONnobnc
	 Uhldke9BEGehI8ROAWied4dw024eLlMa56bu15XfMSQo8XvSaEBQLfOY49qW074W+q
	 j6w99tUhS68ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B61D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445377358.5597.10927917994995962573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f7e1ff581b48e38f248bdcbd79e4edd8d1cb5f9df72bff5fc47a834c04d89c
Date: Sat, 29 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764453773
