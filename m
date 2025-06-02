Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585FABE6C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748841594; cv=none; b=ey10kB3vWSzdDaemTMEMGqqKMysmmCU7BcHPe08ktenLAXDf095xSno21T4Xks/DZ4hc2/f11TyTkjrtci4A/HLxlRopl8RrQD3W7vkLFYV+kxi2F20mlLNYFfpvYPVZYEfQBJYAN4rng8/sc+sjvBBtChh69O54fecXgOy0vvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748841594; c=relaxed/simple;
	bh=qovwLDlkcKoXCNVkTiaoBktdgwT/qScTvQHezTJV3Do=;
	h=To:Subject:From:Message-Id:Date; b=Rkz4rNQVFHWy0enEoAgq3CnAfe/8uHpoyJ67O7mZkivj91LmArYoPNIto+4JlS0juX2PFohdDhjlvf0iP6cm8EnNYObfTGMbNBXjP98QDZBJ1ZlzDwR1unmaUyKbxRtt9KEnx4vD/5ZaN2RCL/hdgk66CjHK5XTsKEO9KQKMtWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZNDRU8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZNDRU8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9729C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748841593;
	bh=qovwLDlkcKoXCNVkTiaoBktdgwT/qScTvQHezTJV3Do=;
	h=To:Subject:From:Date:From;
	b=bZNDRU8vBLnxCJNab9DNfxt1TeHpblPUQc8Ma65XYDqZSppHivPqK2Iuzr/nzbfO5
	 0X41V3/iBZ4/GgBGNDPkw7MbcT9cl6ND5f6e7cx8FJMl/sYSFFFEOEAPFH3r7AMrzr
	 qp7IbYQeGte4PpCvFu8GgSydVtFBTyvyOjtJOHwYDpKjQQnyv/kWEajhp5seN/lOy5
	 8/1rDdcvKxpeZ7qaQxxHzq5ZUrh5A2Mu0RVUHxU++4tXxDMAiMXgfx2z1iJr75gMT5
	 azsL6L1Mt4RKMP4qAVKAUpgfqQLfOaPSFJTHUDK6pLboe2lUIVkUPx12Q25vGJk7+N
	 GI25UZ1/BpLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96920C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884159358.31472.14470212400548011930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014fffcd5c14898835856f4b9b1683be76390e415d12a467d252de0fb870297d
Date: Mon, 02 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748841593
