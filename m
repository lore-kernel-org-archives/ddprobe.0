Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1D9272816
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778322454; cv=none; b=ATn0fsC9XtHRnMYOShidFE165iOBIZmExVh7JJCmK6bhBTsHNuVJOn8rPJ33HN4u6i5lPowSm3vPnnS8vnzC8Dltol1JBiQq2UJ5OOFGXuY2jN7yfVpAx5QB4YLulBycqapsUkHUL1Fmxh87DeKlzFVoLEu1GVMlg342b9/vwtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778322454; c=relaxed/simple;
	bh=c+6UmClF5aWfLo/ON8Bf6QdgVjJvPsVtrB/gV6HAs9k=;
	h=To:Subject:From:Message-Id:Date; b=FDeSzY5lMXBFDAgFsBSfwdXyFD6RRxNs2/nnJ8RAVYiU4TP6/u/NhzphD8T6+PUxOQ5I+JW0gX1k5eXQO9enPzIVQwSkPQsPQGghXOhmGAZ94ehPTjzu17t+MqHhLeW6wONbwDjyfVddXysXeCdJkUg98m2ZgRaxMwLUG5qFOys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNANxwZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNANxwZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFEDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778322453;
	bh=c+6UmClF5aWfLo/ON8Bf6QdgVjJvPsVtrB/gV6HAs9k=;
	h=To:Subject:From:Date:From;
	b=ZNANxwZwm0+7YCzhJDM63DNK6VfuLHQw/noCZVxIXC1zrYGWHv2K+IU4kdAJAJHd0
	 23r2cU5rHG/fPhz3wQwNYYaRnxka8X73Mr3sqA03rSOnHy5pG5SPl75dy4RjCGJH5j
	 tvtkuqa/o82s4JkPM9IWHwcPvEjo7JMoLG/78YD7hbH2iLMvlv4eysHs4nCFDAMwe/
	 ZFaAlV/VfdGSoTja29tEQoP7pdamfEGHKS3X/i/CTTdzmcRwI7N2WxUJI3dgxA5SPK
	 aBQhgR0pfbInKeDvjUyWFmnF2yRZj84dwrGQFFEXKdHtkaPSlKNIFRGJXswPiY4Aog
	 AqlNEdyViULqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA16CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832245377.1736.6943131029740975623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfe5e82bdecb85bad5b7f498d087d1323bbc149dca034089aeb4775d033b7a0
Date: Sat, 09 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778322453
