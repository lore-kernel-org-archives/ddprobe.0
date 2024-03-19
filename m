Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5F233C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710826097; cv=none; b=CHw3BfIY5jgG9QfYmctbjOJU3q+DZpi0jCx2OqztjFLCnB7b89Auj+QRXcxudwF8/tpQTLwKlRsAfCaqBRcQBRN8AgbrSTpxbrDL6aN6SgEFnXCmZyhxnVipwoRq91mVIPElELAjOrMeSLWUpBHjtAR42suzl/97K21SLjlLPJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710826097; c=relaxed/simple;
	bh=nQJ2q9SDsLedBtT4fDylU6HEBF7SdS9Y0Cn/8kTUArs=;
	h=To:Subject:From:Message-Id:Date; b=D7XeH9zbw/pnu2vAMGIhG/GLtdQOmg35BkcnRTibLai3ANT65Cg8nLpOgGKVtnGBuMRhNbuYOUFbbLdRgdqyBGicZnBfJOFa9m5RN5a7zW3Oa8ykoygNXMGCBXrWRGqJ96vV1t0MLHG0GtueB954JLMVwTzPkPGxSRNXSS1JW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ffj8Dlcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ffj8Dlcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757C6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710826096;
	bh=nQJ2q9SDsLedBtT4fDylU6HEBF7SdS9Y0Cn/8kTUArs=;
	h=To:Subject:From:Date:From;
	b=Ffj8Dlcwi58s8RqeTZyZchnmfV2DZor1OFtlMLG44ZVtseDMvYsHh7eMoCx+l9ML0
	 9qvsAghOBaep3xvWWae1v5s7vLdCJwZdNHFulIJAaBlVshhSGunuk3AV2Ym5upJ7mu
	 +IUa5py6hacEWOOOPBPSAqStSyS97LonUgHzTsmExRo6yZwiaSjVDgivQ8LN+70FBZ
	 q+Ai0aKvHlJEPlaj2Qc4OLzcVEnrsvDeF+QvJhV4fxTvuQ/6hwax60vRWIoQAqBQRW
	 nHuhYFmqa41uB2e0r/Y9rZbKLBpQAoX9xQUoAuZKPpF3lVtee85Cex9lhT0HHY8ga7
	 U2ZDOvFSU+ZkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B2FC54E60
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171082609636.30964.17155756371007192848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0cdc19a051a4128a3d641fc8a83a4344417d57d1edbf713a5344f83acc7a03
Date: Tue, 19 Mar 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710826096
