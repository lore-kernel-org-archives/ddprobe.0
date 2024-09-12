Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2935D3A268
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726109754; cv=none; b=EX9pgccPDFEQ4e+xFbsZn5eGtgXmcY+gMZUacPVX2aExa2RWl2YIsKC/sZa+83Y4E+pihukvOSbzBwrx1Gpak+72eIrKe3mg4QvUEUCO55Cjv1ieOcTl1Uy99bXc185OWBkeIfYmQJ6Vwa1DMWL1x1iC1xYgW4Byuyg+feDVLbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726109754; c=relaxed/simple;
	bh=BZGOpEtzjG3VF69a8Vz8rBYEtThJYYiUrk+mpFi9cOY=;
	h=To:Subject:From:Message-Id:Date; b=u8x53CCZ/S9Sl2rSsQ6dAyfTT8vi9+eKK3KnQ/+rdQyBgHylEIgkvf4ER7RM38oredVngw+fwBhnnISiVV82NhWMv+d0A/wnIsGChIPbthd+rHFMCN9lY/cgyC28ShLcRUS4x55Kzp6ZrXS6ZV/BydulDavi77Ylra7Xm5IqUFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grn0N87I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grn0N87I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF60C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726109753;
	bh=BZGOpEtzjG3VF69a8Vz8rBYEtThJYYiUrk+mpFi9cOY=;
	h=To:Subject:From:Date:From;
	b=grn0N87INDrAeDp99iYCnMM1ECVHj4146SYUT+f7fre/PeDrLNvwv8YMSBsm+hkif
	 Mz1jAlKfXvCXgpu8J+KsGK9Av7fK4E1z3OTRgkJrPA6jheR0qJDYV1a4axsua2GxIt
	 1W8Si/FFZbaRRlsfeg0c/AzOyXAgsFI63oWiYGp2uI8SIQQ+QSJVIoDmmDNoMMC3lT
	 ldqDHAyAlOpKcXRGNcOpLPGKGPqnwdnALlYSiBwvgqd/J0LRUauViB+VrXph+YKDz8
	 YYDIcxwnGe5lRLHPQzwKGFoJsdJlbRpyKcDrkxAkuvMUGA/tANInfSCzsvlrV6kbJ7
	 D3CDxPbCzFKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC2FEE57FD
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610975363.12167.6675395122019806087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edad1ac0b8979e93622ea2cbd6faa968181075d0ab0212ce5bf955ccde8b2ef7
Date: Thu, 12 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726109753
