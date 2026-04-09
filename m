Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65840DFAE
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775693134; cv=none; b=k4Xw+sLbuLCqFwT+wCMkpxUdYgE9a2f9tqxFgqS+D/emi0t6ycf6lBn2bsd/pOe2VcIxoi/v4RqxwW5AEr1bfZP6Tq7tjME9QRfuCnPhamA2R0IFd8cJaeoYvhbxwE1OEyuxQMhTyHm213nE2syjnTdceQ1rc98CLZohiz2hr9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775693134; c=relaxed/simple;
	bh=agSQkJLdFbzV4GBtDnnSp8bvA8weAMoAYyIelN6CCEY=;
	h=To:Subject:From:Message-Id:Date; b=DPOLrPmJRxrFq/7E19F21oVvB4nEtv9RVkOnneEn/8a49CE2zcK9orVCKGOcOXuCiYZbGhuesOP3YfnIEfs/v0mVhtQRjbqQb+I+1CkhI803+sPBLUeDCND3vaeFwLnMKgXawiXg/jtfep14eIXwYC6FJEFiGY6UkDQXnHSf1LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke1wNwfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke1wNwfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9865C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775693133;
	bh=agSQkJLdFbzV4GBtDnnSp8bvA8weAMoAYyIelN6CCEY=;
	h=To:Subject:From:Date:From;
	b=Ke1wNwfj3kW7IR3p9OLCNH0yGd5jt2L91NiavSNeoE9lsmKZ2tH/MGs4IYGOQ+BuQ
	 VV/lhVzakp93c8czfoHzUVRovt7MxOskY9JmBv9L72hSCVicRUgm2bnGiIwcKGCE+C
	 dDjqxSVsJQgUsGGgNqq6CPmY6IMgzG3K5nU69gWXr5rQrJXrIlHrSIkDj9/u5naJjh
	 6MsxD9+hJv5XtoRxhTsGpjzn4PiV1DMFyPnC0jD9B6ZBs9l9dOQNcMG4xeks6yOewc
	 WfZNbkZZyeF/+6xcSiLzZ1SzDfUeNtmf/gqMaXnzTScZs/0Bs/EAYPv0V0U/2ku2wK
	 DGlrKWTbws63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B650B10FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569313371.22433.5409934983090184147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e06cf6e24ff29a718c5cae03a11a9c661633d17159bd7c40cf7f904ef9ff7f
Date: Thu, 09 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775693133
