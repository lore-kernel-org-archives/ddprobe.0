Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B816469D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770249834; cv=none; b=Hvt1hrfVH+3aKjTSK/TvdjXxFhpgekldYZ7dMOyQEYwGBN7Zj23LikzeW/RyksrR1AxsmBxnejbO1nKVVOgySic1JM4rG+481cfMbQsnYKHRQXnSbtsM6op68HIjAo/xqEK924Rz1iJamtiPIoadAO+1s9F4/CNRdJD1tGMIdMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770249834; c=relaxed/simple;
	bh=P10v9NnTrS1zCcDxgltd7s6tMrIg3vQso2I/9AJA43o=;
	h=To:Subject:From:Message-Id:Date; b=iV3jxS1AivgjxlYdlaDYrkLgmggSFOjIPcwWfyTQ6aP3W3KGgRhGLTGrwhFcAK7ZgbodpAPdtfnaE9qEBw9xB/2/MEZIm6TtGc3Rmj7XBT9ULppaPP7RIiLfk7eWIz+NeENik8zelEC/1Gr/LfV0DJsNXKcba9fJ3AVU/SueT8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHuybMyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHuybMyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA158C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770249833;
	bh=P10v9NnTrS1zCcDxgltd7s6tMrIg3vQso2I/9AJA43o=;
	h=To:Subject:From:Date:From;
	b=PHuybMyyoDM0DTKPfLUalb1WcHJ73mJIg4r2I2VQJXJoM8Lli/AlQINGHv+S2Iyow
	 wIf9YhEFvrXqJAzRxyw5CcXHBQi4NGpmtup2jrgdEDhnR7O9YKIaUHqBE2nFwHZWD5
	 p8k2vV3+pzv0w1py719RPUvBDpIxaioifhWF5V1VuML8tBrh+zK5vLrmkwi0DhouGo
	 ZPqIzkESOFed0lekaFqoSOZFsTaWZs+BLIkypQPY0rqRpop/qrrxrMV407HwWIWnx2
	 Nbl7Fyqiy/oDVcBnXcH9ve7Jwp2jyF1HRRpagCoLu823VgqSyT89h55qo7y8DvuLHz
	 2IvnpgxUh11aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38A6EA794A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024983362.11221.14365798430252057145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cf438ef098fd8fc10047cf21bb9fd97145dc07e72678e8d3228c0417b30955
Date: Thu, 05 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770249833
