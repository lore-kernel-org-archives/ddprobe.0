Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16417C68
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733201154; cv=none; b=t083C3ibCQ//thMAaFovmcmOI+usntOwNJO47uXFXcAo22RJUJMvPKib4g7A7PsKDYr5YUBncEJu3me3/bL0CL5dywlZcDcTt6qAeitkbjjZhwzZQFIFOYgM2xDgP1xNFUA2GOepy3tAG9qT2MFpeIrqZb6yoZrZ31q6na8UGsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733201154; c=relaxed/simple;
	bh=UxNnojkBa9907APlmp4Y691lI3ypwIGA+2+mSvx8B2o=;
	h=To:Subject:From:Message-Id:Date; b=BrktW3acpbaKwSpPiasY5WRQJ6XBs42RkuT2K7bGODsDKcYULwnR/mutlD8kji77UW5PA8SLC3ZELVzRtCzsMJpHhHtBdEEAhFNMUxGU/6/+Vg2jJTWsyW3A9ufvPo4ALBZGm63PUKu3qgV6kSsiaeKP019ngzyceMa5lWCTTQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv4FWxSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv4FWxSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C350DC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733201153;
	bh=UxNnojkBa9907APlmp4Y691lI3ypwIGA+2+mSvx8B2o=;
	h=To:Subject:From:Date:From;
	b=qv4FWxSqdG/Sns6L+bsQQt4BkyEKVvViay+BrFBO8IwOGylzPY/IV39CdfsrTU5Y4
	 BXfr+i6mflgi/Njt1kr32jIUR9QZvokykLPM4R9MbEB2HXkfKweIjQv8BsOd3reAMZ
	 5/BA0nTs8ExLLOIc5JOt3ESRnx9HiVyXQc6FPbdUNGP665nGI/WzTPM3HUa6Hf0xuy
	 yEtUw+I5m1cSp2/Tyr6sDaPF44ws93tJ6bBeIS9CiFRKGKS0Vc6+PiMxYsV4sPmFj/
	 GIdgFfXb/vDS7Uua4LvRZPoHOjUstdXhF2IWXXS2/xRpcaN3fc0hPzkMtbAMBEpQjV
	 EYVm45FLApqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A677AE6C5FB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320115365.30622.3127534389698889997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7088b80f7b3389a757f635396263c131f8bc3d4c4d8c47060f2a40d7810ae5d4
Date: Tue, 03 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733201153
