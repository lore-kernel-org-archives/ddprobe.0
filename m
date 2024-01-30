Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7564F58AB8
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 08:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706603898; cv=none; b=f2kNNfgpJWmdjxyurnfuivzqRkdtc684MOc2VypqB1DSPOIASq0CN7L/NI2TOMPwdPAD7ixJz4wEs/em3JfK8h15N82dlKTSzdKeegahiMLPpRJhQxihq1iIPAonNFnPjsqvW3/Bz6IJGw0vL5XRZ+VBlhECOiBdEq+f25RFxm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706603898; c=relaxed/simple;
	bh=zK+heENgeoYjPxCSWPb+nqqdPEn6j9HUy7Um55r1DZQ=;
	h=To:Subject:From:Message-Id:Date; b=Ea1BPPP4W1MpenvGHZNkOlOrFD/sn0vpkIi+7L42eONeDpKcE9VA+U3MNhjhfdU+1gvEHBRCKpgPXrcSWkDRdlqSLYN0ZR5FNnqfKyxXHk4RN8GsZJuMRz5il/38kfQplNgsAjCoo+KPyU3wObtn5vVt5rB+VC82vnkPOefwU7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPOqg52e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPOqg52e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F2CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706603896;
	bh=zK+heENgeoYjPxCSWPb+nqqdPEn6j9HUy7Um55r1DZQ=;
	h=To:Subject:From:Date:From;
	b=bPOqg52esBI5Bw4GXYIK3G6F1/4/SYYLiCfymE+0GaCNANiDfKxFzN0DXXt2a8TNV
	 60jI/FGEYhwFEVclvey5R3d91IJDVkIWAdy8Yd0nefOORm0E4Wh0mnZW3hyvYeIY/6
	 LItQ/vtUVw0eBto8vJMcuAYHiF9pdVYURLbKamOxZevBUhet3FnhTcxCOQxkuZE5Di
	 3RvXi2rgqEky6FphLkeM22BRayUEoaOFdZ1tn8ZJI+xRx533quRCHm8W0nbsapCrb7
	 7TtndbY08xvFMqUrrTS15cG00sjH8qU+EME9nvR0RHLK2STPyt2mN+iJPJPW2vrwyX
	 V932zAtez+nTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEBDC47DA9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170660389636.1087.17598560825685248960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be7b93c14fe6dc2d1d25b1cfcefd3198caa4fbf869ede2495d067df49feff03
Date: Tue, 30 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706603896
