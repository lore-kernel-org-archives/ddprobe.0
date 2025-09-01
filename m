Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A7155C87
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756699194; cv=none; b=gElMQKxFCyvTh2OQ0EBeeUE/hydmtbCTQFsrsnWvCY12WaxzqR0fn+I1KHlGPevI61m2XahAcnfl5f0baL/PTexn5VRs+bSWdYhaJnCO2i9DkUj/bDYw8Ml+YWDTdnzFwwHFoFiOj2/8Woot8t8op4k7q13wyXG15ax2+Mz2lQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756699194; c=relaxed/simple;
	bh=dVYP4N9AIeRTLEeQtVpqMkydxPrbjO2TljUdc+OKas8=;
	h=To:Subject:From:Message-Id:Date; b=Y0iZ78VZlu+h9ul4Cfya6fyjI+2KSb59oGM13Bb3AoQctUU7A4ZtWpT8vMELX/mYVNUcuqUmkcypnbo4zVEYt9wWv6e1IJzwk7pyEhhZY/43ILBdrf6pdqj8P0wBlXPZH7xx/2BWmGUH913n6ydmHg3N+c5fdXsuW4jLanfYtW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoNhrEbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoNhrEbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D65C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756699193;
	bh=dVYP4N9AIeRTLEeQtVpqMkydxPrbjO2TljUdc+OKas8=;
	h=To:Subject:From:Date:From;
	b=CoNhrEbhOpjmhdAM9wbafYjD/7hREylim6JN32GFpmsgqtxIouVe/WqFPE9/dpPhF
	 eWUlM+VUgK6PweHYE5iWb8tJrapwRrb+DGodCmtgII48TfbhL7MjVLsLabQLA6Yrec
	 XdvVdXn0T73iXDLiNL/UUrMAM93ETI+C6i96vKE9ymStF3wWujC1UgNXrqTXnJ9IO7
	 LTJADPmzXQHEuotT6JQvWTXZbaS8r0rFwlEcXQ1yPndfwDzoJWxqS57GoaMJqO226A
	 jJlGBDuC2yv37I+ys2bCGuzhCGdOSsJvo4VsXSAOK/7o3p+rm3JQsFuqdQ6olifGXd
	 r+Ih/7tVEmT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EDCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669919358.9381.14110820765148390979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be48f7114cde1c0d38d977dcd22d04ae5fdcef434f7e209372240fb4f689770
Date: Mon, 01 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756699193
