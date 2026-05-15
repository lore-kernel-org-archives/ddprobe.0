Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380DF364935
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778811034; cv=none; b=kCbxl3cBWBYATqHR95Ee03IE6UKsfXID0Qpu5hT8FQMRMNuqcoCoh1lMd4zzEoOFO4IrOVneUdsQ4zy9M/oJGAtn/Zh7uH5MOyRFZB18+qilDz4yO1N19d/Cmzj6ReSWQvBC8JWH/OyLbQb54/4HJTn8uiptwwEX6EPUt4Z3A1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778811034; c=relaxed/simple;
	bh=l295rlmHvU7cuVEFgY8j8nTDGM3/7cUfrmrQgv5fdGo=;
	h=To:Subject:From:Message-Id:Date; b=VrDRixSWWNUHy3wVjflfq3IO4b2S77lbU0bCRff07tPnQ+ElTNClW3W0ABGkPEk0ryDM0cyMQkHpNLwBXmjjGaty+NKuOrLYsnvnb5uSJduT86jkvDGniXlo0I8uxC+nZAF+jJVrprz2v3IjhaVrnytPixZ9Liv4SUcv1LZ/SGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxV+pRdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxV+pRdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF021C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778811033;
	bh=l295rlmHvU7cuVEFgY8j8nTDGM3/7cUfrmrQgv5fdGo=;
	h=To:Subject:From:Date:From;
	b=FxV+pRdq993dPwOpt/AtBkBoKnpoRG1rclbRyWk80TNq5U+ZnWSXxVCJ/QXjPrt82
	 uevP1XE2cjc7aRglQ21m2OZBrzX5Ae7l2LXHi5pPn+cMvif20Bpm179zZ0x7I66Ofs
	 i4ezcfgJbNRxMLiZd7btACTQoj7Sxr17r3tpOHCXqBBOxNrhhe/zcpv9onZIWgeRPy
	 PyIjjIFjxSNxNUHm4MTme0mY2ddfxgbjLJOoNuRGmOP6+ddb1bJp2ybLBPpbspuVVv
	 g7A/qc5Vf3bzx200aHklqrKQSM4mIplFJ32iFJcQNgQiNKeaZZksxr3bWubaFDI96e
	 eZii3L8RsQabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB325CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881103369.17094.1553735051029514355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5138159e613b91e48842439c1b1a9304bd35ec060331ea3386e2f1d165ce5f9
Date: Fri, 15 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778811033
