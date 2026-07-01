Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0636A35E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782907714; cv=none; b=Q00Q4cn2suWogvzDXmfPFNFLpPXVVbI/5zJHznyYnB/NzoQHkByHPdEXmKS12b908fce3Oh70IrOEmfVgf1qfp9mnQRRpX5DYcAX4Q4WhTaFx2YjdFD+cKwhlkHTp6ph8mSixw1WSi1VuyWs0fKXUPSN2q523Oy4v15KQ9BfIDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782907714; c=relaxed/simple;
	bh=7JSgLGiTsXRwE+15p2WMd5zZ4/frBk45XQujwqXR65I=;
	h=To:Subject:From:Message-Id:Date; b=HrreHWB6iO3X+QhWRuthI9kjAfvQE+kNfMRlBIKe1GUBR3oORXf88D7C3nFHqyWaTpIBB6r8IeE8vRH5VVMxHTYiC9wL8XEJnSDeK58y4hZt2fNgLMQFCGBqH+8qoyyTbCD151KygMK+nGGDKlflDqPpMpVJzwMmD22+jIRb1II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T53mvJ8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T53mvJ8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C030BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782907713;
	bh=7JSgLGiTsXRwE+15p2WMd5zZ4/frBk45XQujwqXR65I=;
	h=To:Subject:From:Date:From;
	b=T53mvJ8uD40d+gvk8gaZQH+XQisddQnZk+ua0kb//XS4HfbGLJ49Sns39gDmRwYse
	 c0lfhxfbV4afJCUTTDec9+Thtg2kVbkF5BVlsJPLSfRZGGuhXPJ5AXvPMgab8hRIzj
	 tP0NgW/cdegFigkQL10YtqMwIlwnzSxYG7s2zO68dG1cMPuectSio7+uTPWnhdch3L
	 8q0bg6Usc23nza3YCPZQC3q+gY1DTPMC+Lgftfos9f1egDVYR3Vx9awCE+QA6NFHmQ
	 IQo6qThTHKlAGhLrFdgf8vrBSgT67+tcme9appckXtoFQMi9V0OmXpLeW+PyYmG/wL
	 WvnXJ/Jw2tGWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F3C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290771368.26301.6504637358508783691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92a813c4d8ec9c83c998127c9767cdaca543db029904ab856d72e6a05f6d2d
Date: Wed, 01 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782907713
