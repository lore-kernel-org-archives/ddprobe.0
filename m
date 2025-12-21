Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1161E78F2E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766315634; cv=none; b=gHpCQsNTnCUWOvOQiqgt6ShVuZIDwFFzTcnt/iS/XNE6ujRC9hk+VZi14LPURlPvSy4ZTpPnAh63/7bw556Ijs/DtFumSp53sChQu9p63jnvKs/V2jOLkJVEAemUH18k6ZlE5/AjEUyTE2gq887NCZZ6MKfb0CHmjFO3g+L/nT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766315634; c=relaxed/simple;
	bh=Md35hKyIF5ZFtPyCCvit89kydetQ8szJtRNSTqnhnGY=;
	h=To:Subject:From:Message-Id:Date; b=VHRMtFZuroOJWxWsuLr8+Al8WEd70rx/Gzn32RBda61DNcnC2vr/osdLCbTfvndu4DkLbnSpO7Qjqt3QF4QZfxE1+7Oud9MAwLT6ylUgUgrpom6R+IlWY7IDePlolCvmv4fmuo/6GDsSCECkBLVEMkptpeygTM/5/bDSufuex7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILYE38pR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILYE38pR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984EAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766315633;
	bh=Md35hKyIF5ZFtPyCCvit89kydetQ8szJtRNSTqnhnGY=;
	h=To:Subject:From:Date:From;
	b=ILYE38pRelHCnVt7SBrelp/8dyI17CO6h1w85tzkfIaITg8mRZCQ88SUWWStrqsDn
	 SyrOjA6kaaTqmKFBiHzerm9Uer+szyqWSWe1Xn0H038WggFRVdIsJGW/SfxriF7MJ0
	 nrH1sq5ogRtmMI+sBuVc+vmVunFFpAosKTrBJE1LW62cdbb3OGnoEdpl9Yz/Y0yZ4x
	 ySZ6/IM5c3wVLCzui3ydasHmDsQs2eoGc24gUpErLvobfUF0PPIjXMcHmpV716kF8b
	 NURVRByHrXzjj/12aF3Fjna+WZsfnHUsZhOBLCd8BAn/QJeZLx2YY+Yz9ZthqBzup2
	 XOl7zZfeplS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009EE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631563358.26156.12362170988848873520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a25b6c77e567f9cc806e2cdea3f708eb99314502c6a4d41eb04c56f0652ad0a
Date: Sun, 21 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766315633
