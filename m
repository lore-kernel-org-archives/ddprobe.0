Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94FA333730
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774115693; cv=none; b=S+S6p9bDAlH4zyFT/19Nt8xbjhavSd6jOEcS0a0prlZmkB6GCDJGGAzTpKDjs3sSJKxdu3PGGGl0JFxr33fplJTFCaul0oQr4OtkVnl2ZUyXHiemm91hyufU9M8hRblt245Go+yErh7CpDmMXpudDnJizX4YvKwzkzyqkfiZYg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774115693; c=relaxed/simple;
	bh=2RHBs98yjwHv+THBWECRHIpJMlEuJMGfEbJfLnfgD+M=;
	h=To:Subject:From:Message-Id:Date; b=DIzkm7PpBS+3FmMwBZByS8ZCkX4U5pjm++V29dNowlPjkX/nbu7Ba74GFxZDbOeMnswZIKBwf8nztNz7uQY2tluGHk31qD4Fbn7wTdGfz3askrGzwxjODKKMnMlr4v4b3W4WSkZ7SISkvNK3x37HP7E7+K97UfgwuqBtUjA+Q/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if0nUWko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if0nUWko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEA9C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774115693;
	bh=2RHBs98yjwHv+THBWECRHIpJMlEuJMGfEbJfLnfgD+M=;
	h=To:Subject:From:Date:From;
	b=if0nUWko7yA3p9GcVa7CNk7nbY5lYCfkPY+71bYBofM1yn60CvnockqOJBTfUNTxz
	 gw2l3zGUvrQxKVYr8UtV2STfXGnkQvZNfodB6vpFW0TA82ozhkZSDvLoUE4ad7Avry
	 2Bzl0Z3wt08+vLTXzKbDzDSPxtg1q9u90laguFD4r5BbshLS3MM6TvGAJDm3Zp5DEh
	 o8k2g0jfakJFSBGmnqf5LOl+iGN985f4CLNNr+OMGpNNPDCi48VgMZ8P/opwaCmjAJ
	 LZmtfYLZ+YEG4+4/HhjHVtE4fUtQFMcfhd+z6J3NayK8KdHVajZ/YSeFjRGuR8/Rrb
	 wvKusBvs/X0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4C11094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411569362.23440.6524629959337314881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94bdb39dd3d19f33ed8e06c5aa50d6faed89c0194713dee7690bfa3dd122369
Date: Sat, 21 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774115693
