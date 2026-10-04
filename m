Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9CC45039
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791079834; cv=none; b=C6aQu7WBgwlTlRxbMPDiZmsJEKVS5wBzY9V+vCfuBBRHD8RFQ4iD3dN+sz3WHO9AqN/+vIUmMCJSw/GylLGytD67WV6ltOlDQpp2RPzgrpFhVyDvdaL4tiNQn9ljnOnJlJ1nz1jDGyRXeCeAiaoKsXUR7nSgNRZ59U9XkBTMa3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791079834; c=relaxed/simple;
	bh=XI/+IPzwz9BFBspRYiUApxMuxU5BcbhqL1jNVMS0ars=;
	h=To:Subject:From:Message-Id:Date; b=HPYG/Oi6c73kssvKFbUKdUj21p6IDeHLA2PEawjcyM6mTc171EqIcMWN71r/+PJXRxtURO1c5INkpWNFBXHj1G7EvDN0pHJxoEScuMRXgyrexrlp4bT6j9TSRbQT8IXSOkLwkmdQxxLwQR/33oIdiEwC9bvuTumdUCIvj8UxkZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR4I6aC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR4I6aC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A0EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791079833;
	bh=XI/+IPzwz9BFBspRYiUApxMuxU5BcbhqL1jNVMS0ars=;
	h=To:Subject:From:Date:From;
	b=nR4I6aC0jMSz8PUkvIxrGVu8QyjJwYtg3FSJkV7+gCnnXwhjyLQszJ1H4LK5l3qBj
	 9S4jvqUu0Kr+uHgp5VrApEBrreYIxqHrttO39XDccOVedBHWvISk2CCD3XCEfLpZMV
	 WjVm/aq+iP6TNSZpR8pvlW41raODXmg4voi0wK9CynJlHJz3QbtRqkkAT36XWj3LCc
	 VFSF13/XXbGQPfMuyEfdp7at4NlVj5svG5ry70V1hZOrGl2+wshL8fDUxbPdf2l/z+
	 7S+UOPVqf21gWtMCHr+QbsptcfjGmhTpQzommohWDuV1wBnGoGymK8vfWdje+on6Hf
	 lPnbQF8G8CMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8000CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107983372.709.7373591798636719332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4401aaa24c18e421a6d5a60352a624268ff61066790dd85fc0182794678a032
Date: Sun, 04 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791079833
