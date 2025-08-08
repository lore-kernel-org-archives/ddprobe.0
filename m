Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1589224BCF5
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754639994; cv=none; b=cJoJfCQ2h7TsItRkicp6UmkYDSWJXUOck37SCyBxlNjHHMPu12BYcSWmDlNFiWVt0wDQFnBFEJdff/z4IKuedmLlki81xtUmo24IZi7aqt1NBSXU4ZlIfujX018XfyoBw+cNfVJZJrPrx4ZoDjzlM1xFixytYOVbnousaCIYzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754639994; c=relaxed/simple;
	bh=U+PuTL50vv8NAA+tbz8l+jxhsDceBjey2E0Vl5mikbU=;
	h=To:Subject:From:Message-Id:Date; b=PaNtwFpnEW6d/8eQeDJc1DZ3jopKT1em/n2rU7pKhVUsWxcNlLt42os7DYBMFC7jBTGe4pIchAmQUeDfGjCO6MMgswbixtggKZVmAkwkc1FvqmdVrxKfdib0WdcwzDIYNJWS0TteXioIMPqmNT8gx6/uVxBc49aLfSNzrc9/wM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjo5TsGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjo5TsGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D3C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754639993;
	bh=U+PuTL50vv8NAA+tbz8l+jxhsDceBjey2E0Vl5mikbU=;
	h=To:Subject:From:Date:From;
	b=hjo5TsGTBKtQ/g/xATiRHV1fB6gkd3DWNMMCXZz2qnc31iPf0+ur+YI4UHPpt20GQ
	 cvkYPGbAnEtRTZkhq4sfYhRZR/haFKk01HSsdLL9j2x8smn3C34inywCNN3Fk4enf5
	 OY0szJlEMuGyF4kL0eM2Vqt5VOLRfT9dz16Lbu4H7ntMGPFQENDRx09IgBcXMSpyGP
	 /KDN8HTDnZ42p8aC4bZXSeDs2XZBFZyixW/uS8JHRa3AxCnkTQV/ViopEgEGJyyowv
	 q/edmOIdc9HquDY4ZNM2Q9syJotZ/26Xoa84HIoafRjfiUCALwXRhXxgXhwgjto8Ad
	 HUQvTdheDCkYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68BC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463999357.29526.1184893353564895231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfaa78f1cb63107123c1041bb4ed2b8fca58c25eefb8c63105a8e5834940cb3
Date: Fri, 08 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754639993
