Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2115F3A7DE0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769070834; cv=none; b=ZWe+v5EPZ4QOp10hoQAm9sIEBQ1bpwFhRoXOZ13Kxl75F2/bgTVlibM8RwoULHnQHuI9wmPR69AbSUVOgkwHrL/vQjAEA3eWj2W7DH9fWs7An2vYseBGqCAfZglcF4bIuCuBrYald6vjTmeGfDplA0HSmCGFMKWgRu71cXZiPXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769070834; c=relaxed/simple;
	bh=liPDtxzC99z3dH3VzypERDcuk8zfY0QiJ83aM1scAwY=;
	h=To:Subject:From:Message-Id:Date; b=DcCvnSWHDjKepx+uaObyFH0cIRTIlbQycISdyF1UExi2WQecMvUrLTOgJepwhrzn4W1oNNGrIZWU0/OfOvY27Qu9fGAd7T2nxdSEjicAakrIEr4Web0U6NY3VfmUFgFPEbryB0T1d9WMWlC4ARIjoZiu15sllKzPyFcX2VixKQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wlgi4bVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wlgi4bVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25AEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769070833;
	bh=liPDtxzC99z3dH3VzypERDcuk8zfY0QiJ83aM1scAwY=;
	h=To:Subject:From:Date:From;
	b=Wlgi4bVoa9OgzdynbXUTYgnWQY1DlhiltMsW7Qu55hI1d3xCLFXMHfsq+Kg15OFrc
	 J06wBQbtFPR+Fos0l+AcTrqqUMS/aHU5gU4OR6qp4NT3Trrh1AQaqgBDmeZ3Mm0kyu
	 MN7KtAVgT+M1TwIFLBNYIWGJS0JdA7GUyyWJss72S7omCGhD+eGmYtaQYi+8rooRlu
	 NrHoV4QDh8falo3Y3pNln7+UYuzL9NSPD54uKyREl4BshHa3ciQ7aoD6Y99ZAYAyfk
	 T7p4G012MZPuZ6fFiqwlcf5PaRBkx29Oi30rpxSTwYhCCVA0qSGGMJXom6OOzabkes
	 dcy6qshC0guZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338BC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907083359.32268.14535701805460831019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433b14f227854bd3b85e1e15cc462aee240bd804267a3f1f5deaa373436fb64b
Date: Thu, 22 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769070833
