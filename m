Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241352AE77
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748228394; cv=none; b=MEmsRdbfyOXZFjbfixTL6FEh9rw/NhcvGZiB/B2AYy1Al8i/iz0xpItc/ZjAbnZCqxjpRMYZR7YwJSDNtQ3ZoIA0YMHRnT2oTsSRFIiGCqj5aRTJ4xqhhSMvSl/zg3JhOYn1fV2riWQa5xTFZ10fSJVCkvz/obQSCzfnxwD1cv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748228394; c=relaxed/simple;
	bh=2Zemx+sOn1K3ryawbGWLkMwl1ZxLDkja8Wr4i8cwbsA=;
	h=To:Subject:From:Message-Id:Date; b=nQB64OO3CzlqJbkycF0WrTXtuEwL9VqPi5aKDf/OMqzM56XVcXiMtew01v6QS+qB6paGeuhUyxt9Lrboe/g7lSSJS0vgVzlJS7FSqi7MYJE+e1ohlIpw/lmJfqune3sL3B5tH/1fUp5fRDxYwqocvzTJ8zfeDnvA+Mlc5ahdiVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmKW6CyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmKW6CyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748228393;
	bh=2Zemx+sOn1K3ryawbGWLkMwl1ZxLDkja8Wr4i8cwbsA=;
	h=To:Subject:From:Date:From;
	b=LmKW6CyV4aHIsd62RQlvdwM2PbEfpHzCHMLp6zWSI+aGL85yCjFKFkkIUYUkUZFRz
	 iJeueCajgCEH/4pwimmcHFa2Kcs6izmK71gLbDqB5fX8UdMLJhOBzAPsIzx8eA40kh
	 BxeNHLhol/ODlOoTmirJ1+N3lNkSJq390qKpLCwolL3lw94CsRHmuC7OYOvfp4JoPV
	 iLCv830zYccfwrEqv3P2JfUtIlgDvRDb2Qjw9lAjBAWZo5MGutGM8Ce2qXOA/cn0rV
	 Hq2q5h2irmb3NrRUMlv7AjIRhNbsg2EOGS7hKfEMwn/5GlahtN4AecJtauBPjhVggm
	 RTr251jSpF4gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DDC54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822839357.20736.18077099529373201159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b2d1e605177366da04884a8638e22b0e6a6d44cd549e0a7c0ac724fb86cd45
Date: Mon, 26 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748228393
