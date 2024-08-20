Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCA1B813
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724142354; cv=none; b=ZYFR5GtE/sH5EpyyI1uMbMi9vT1Lwrjv3W0J6aWFmYVMPEkNluO9A9wzF8Bj1M64nYiYw5o3iNKXxmH3C3RryV/fTF0Ft5cjHWa3P1zPus6E4qHnqNr4gZrTMNEYdLkVr/e2WSkibeN/mh8JL5M+kAMRLbzJcm4QfdzxcVeoRjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724142354; c=relaxed/simple;
	bh=Em85U2oPPVfieFLx8hvyMXrbeiQXxfRn7MWEI+LLzJg=;
	h=To:Subject:From:Message-Id:Date; b=s0Wx2QXC6mj3ywUn2P1FrbClzGH5E8w0OqSZ/Bj5++4X9T5Hwc0S849h7mSTLNJ+ANxo8IJ5nDuBQ0Xfg1dIpyC4yEUCbZZ0ePt5MAvKvqH4kW3mS30vPiOS75MNNoqChqE6M5NU2Bw4T8Xy2ffR7v2QuHWlWD2Xv/2u+V5a9l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFIrhvOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFIrhvOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA471C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724142353;
	bh=Em85U2oPPVfieFLx8hvyMXrbeiQXxfRn7MWEI+LLzJg=;
	h=To:Subject:From:Date:From;
	b=gFIrhvObwki9RsoOv9ArbLQyTCiHNXwYp+bgRNonrum+nTHzYmmkDYnftwzIiNJ5L
	 KpojbN0/dwM9BPoR5m+kHe2btmHE5YlyoxaCWCT5CYjSNXrD9K7PrMcHWrU7IR7u83
	 sqCJBu10FXZ5qUimnbMk3J3aG9SCC6qxk2q+KoaP80K24Ei5j5LlpJK89wMlPNHF8W
	 2UKA7UvNd3KNIUr8khafIVtfJI/bKnhhW+/D5S08X1BUkTOEBsSffuct+1x3FeTb+6
	 6bQaVOGigzrB6+/IqoXZe1/94my2/a0cS6yFz7gXind++tNhQ2EZhm+oaQ7E7y+yMF
	 Y8+EnCuC1UBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA5C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414235359.16244.12154917127759248270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c4e2fa494f7a2988da03459350730034c35f234eb053ea3df69415278b41bf
Date: Tue, 20 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724142353
