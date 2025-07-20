Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219DF376
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752982794; cv=none; b=ee3fDLO8uN//9o2/9mmwjt/E+3H8zJSxSceyDXs3bEd9qmQ/dTT7y6Ioatld4BDS4HEP/n2UM8Ina27M5JDnh7DsYePDEiCwN0Ep6E1eiu1EKWQhz1q8ZQzqNZTYR0Fs606eDz8MlvYcjOmub5Y9vXJALkN7q+nc4vJwzIfKU88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752982794; c=relaxed/simple;
	bh=f44pvPxc1Lvql/k/kirSI/OYfYbZD60hYbsSdrAjyLo=;
	h=To:Subject:From:Message-Id:Date; b=OMv23CsNbnIjKgkpbQQNt32F2sDllOW86auxa96FIkZKNGXBD27yPYBHAYfS+80+04g8gb6729VlXFPhhMbkvpRUzNUzKQCsOeZQ0/76pLBJtbsI0qF6v3kfYMy+o5u+2R8DiM92dWm6dhU6JHWAH6KM3NPBnQKLBSyh/rzBhDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYdNNsE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYdNNsE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677FC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752982793;
	bh=f44pvPxc1Lvql/k/kirSI/OYfYbZD60hYbsSdrAjyLo=;
	h=To:Subject:From:Date:From;
	b=hYdNNsE3BngNBnuGUr7dYCkVMOX5f+XvUMPsV5G/+t6AUrjvE3blfB4mpDS+Dgezv
	 GjaOuHtzUuvdCj68xTwV0UbKJB8jLEK+GQjkchtdjX9KaMW5CC864nBD56KxhJpjOW
	 ysBjapBnoRAzSsYsei9oP866Lql+LDq062ybq5ViijZ/mD6hi4XQ0dVSAX6/IKLbVe
	 y/bY8ugwgZqldk7qt8BCjyhCmQ1pa33mptN1cIewyWP1J1shc9C/nNeHMKbPFK+5YH
	 1Pp/6QKC3l7G+OaE1d/K1UrAI68Y6WQ+3ux5/wrYmLTjBGTHZ4ZhjNNJJb26YWlL/2
	 sRMaU9pKzH1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E07C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298279358.16249.12890120550167508380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd114051a00381e55712c1783687d2dc7026d38a5d8aa1f0d0c7293492f7e1f
Date: Sun, 20 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752982793
