Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0453E18A921
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770505434; cv=none; b=o8Q+h4RYH9gpqDw855lJPAadEl9RSmhSNmWrwjoJIrwzkkmObG+qHLQN1xyzA94lnkTiMsyoUQ16lAuaLPAhr8RLk/36wA4ZysdnxeIyf3TtMkjID0oCKABBcGuFVu8806SCzdeckzRknUnN47q7w4wfvI0IPAQiWJQJlBubFn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770505434; c=relaxed/simple;
	bh=stlFnZqq8jorT3bxQdWgEVYuC8LygvFRfaI9MEGahG4=;
	h=To:Subject:From:Message-Id:Date; b=YvhBHPaiXlvEmX1WJMCQbmmjGmFSR2F2duM4qsTuQfhWURSyrsVRb4sAGsFVcWJlacBHeFoL8v6XBnXIOezesVu7tnw/B2jOM6aEWlhelkqe6bKtlA7cgkA3YRxr+6RDlfTYYAjur1JOS6iXTqPe5EOkMX+eabzaanNlSDyHQiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTlt27VT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTlt27VT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECCDC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770505433;
	bh=stlFnZqq8jorT3bxQdWgEVYuC8LygvFRfaI9MEGahG4=;
	h=To:Subject:From:Date:From;
	b=BTlt27VTcpsHn+Apd5fsOyTr0DeG+QDTRZgzGPmTq51SyW+8e8iYwAgigoZCB/WxK
	 1mMxgFGLbukGmOA8lqiycwc5lCkGFgCx3mEUG/pkGlf8LiTet4JOI07lO26KM5Pokg
	 INK/6XJf7aR+yM1WFG1uWYIAV1ODQMtqNsqZr8T4CW8FvNnfs4YYvYP2LAjX2cSHTj
	 2SoKeMT9NgNrMbYUs69REptgbkGZK7aRPsaACax4gnbUY3rJX8+i8ohMG04gL5V+SB
	 0Xv8P3TqInv2kI5MRNQVJHdMKD+5SiGYFVU+uhLyDvmnua1k3ld2yEyxy4ORVCb54P
	 LUXmjrds0oeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBBEE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050543359.4796.555368090091199981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd56fc7aebbb75a9e94334287d6a39079d476f64d9326092b04d1c447c6d330
Date: Sat, 07 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770505433
