Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD4511712
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726986354; cv=none; b=aN+RvDSbUpogD+N29ySRu4s+j8uXATwtzOl8lt9qGv76vk09PPXZ+OWaeI8kn/jC9nTf9giLOLHiV11Es8uVmJJH97bvkC+R2USYS/dijR4MRCFx5Q26StvbAULSieBqDjNTMuFiz7IO0IHGNOPuHeUGdpOakXioyGiKwTc2Ldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726986354; c=relaxed/simple;
	bh=YQhp9MvDQafASy2+sWnrEbzCSkRj8Rjpfn2jeL7lC90=;
	h=To:Subject:From:Message-Id:Date; b=gkvJcW15ioYATxpgt9R0NaaXfqqYVUc51lSgjOi2BcCq4G7FrTgtMgRxdXcBAOFGl17a4gcPEx+WeVQGLtu6+UFqcTjGVta5pFeQnOs2Q3tDDND8Rouuk5r0khXB9TfJCRaIlZr07yZ7CBsJkPUEKdaylskq/g2nOQpojGmM4gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it3nC7eV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it3nC7eV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD13EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726986353;
	bh=YQhp9MvDQafASy2+sWnrEbzCSkRj8Rjpfn2jeL7lC90=;
	h=To:Subject:From:Date:From;
	b=it3nC7eV56mQEI3zxTTwhjdnm1+XkKRnqQBd06TTM3s8Qvl24OzuMMZiONiHEH+A9
	 4gOdanuBUVIaCeZ3H/GwuQn/V6UafmLGFjB2pGsytxb4dm/CVC4ATT/fudYB275UOm
	 2nBEH+ab15mNBXa+9s5KR+XjzA8ls9tQmelVn/BoorCcUuYFrfXTR4SgXHr5Tinw+5
	 4FBR6cW/2xKGrqwkY1sVJf2FTHGxzgZQfiHfVlK39FXmVR9qPd0jAQcinz8v6Cq+Z2
	 f1mNbkmib5sEIaGyOEkddcR9t3SFCKnSlmp7rlNVGqUbBLjsevNRit6HZgVTcslAYT
	 Cv8gzBgKs3/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A9CCF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698635358.2289.8246254996871947200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5719a9140723df5577d9b762081f55f6e19cb0dd33ead654a8adf3786ae105f
Date: Sun, 22 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726986353
