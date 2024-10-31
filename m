Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186E15D1
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730349954; cv=none; b=K+MOQToaDtbRgN4G+h+3G0QVm2Ppqv8snWPjACJmi8iE+mzkTQRE6tCcUyNVtEn9+I2hA+swb+y/HUp1tMeq9bvrhiecPXSTitfOwDKpsfBNDMsHWc2rsEBo9HZ0vqAUeDr92hJMdhRsoxonmZfFLKpNcydfMV8ME8dyMROa1aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730349954; c=relaxed/simple;
	bh=X0aYYqNTrzNQevUfWPNKgVVTL/BsA4V1nGwJLMEYC9s=;
	h=To:Subject:From:Message-Id:Date; b=QsbbrL53Y0p0npmGJYIt87jXOl4PIY4LLvwZzpcB3SmLUJGi3QeE60aNtIIUJgqZGftDGs0xtPnSuqqaGBRAdhj0vP+L47+0Jlx1Wl++KPq4M0TTPOYsrK3bclUyagUQl/T40rnlGtVPWVFVPPM/0jQrxSeScjM5JuyblCkSVxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDsz8arb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDsz8arb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7FC4CECF
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730349953;
	bh=X0aYYqNTrzNQevUfWPNKgVVTL/BsA4V1nGwJLMEYC9s=;
	h=To:Subject:From:Date:From;
	b=EDsz8arb7sor7+Ch+AK4s3S+PXupacQJzFkweZIah6IJiumaPK2aTWNUqAkgSofmQ
	 4Jce8Qu2B1AMZGZPYyvXisKP9y4jFpe9RmC3xUgfUiNxp2PmKQ43DkE//8ZaibkeOj
	 0TySxke/dRUex4Lml1zv8CYvF1XmbaYSmTvLpH4L4GLIEOwM2kYVZnH1lYWQB60slr
	 vXrkjglkj9MCTMrvuFAO5qbKNG8jKP82/cLW3E61EDu8FRc17udWNozn8ctujfPhWM
	 x8PfUT6qpbLkitTNZ8yceq4/mKgQrklk9fphTioWMU2pA8DMFIR3lhLDqEcgZa71Il
	 Ll4Qv5WDswhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC4E68954
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034995358.17616.5764250262821260379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43942d519d6a673adc7a0bb58cb81f1202b5bd31a649e96f221104641e278785
Date: Thu, 31 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730349953
