Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611301170D
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714345343; cv=none; b=HyCJ7JpS2YYRwvVKp+KLtQ92Z7QQDCRHJe5rwPiixkcG5SppG4Ld7SiipQLKrtlJ3ltKJnm8QyCcLFy3/Yns7QopRvmLIMTuf1PaRQI2SNU8MiDdcsQrGa+eppf/SbC80n9hgtwDuGYucYWY+5sbwbU4LxM60ZaJpaTGFQ3UjJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714345343; c=relaxed/simple;
	bh=omwrmHfXMs59QmKGlsw2kbgB/lFIVHcVxeoggd+dOsg=;
	h=To:Subject:From:Message-Id:Date; b=gzw7I/v699JhCBHq6o+ML0m11rMJi2sBmXKMFhjiGFfXI8YyQgVonl+ymcEcPHWyCgSaAalhhtM6pz3xIR/aDcsPMNoVSVnpVnwInFGhlrGaTC0u52rLIE1AItmCcKLYx+E+PV06PljGhoPxgBavYRrAVfzjZbyaXvbUjXpmsmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGv1sgHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGv1sgHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77D2C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714345342;
	bh=omwrmHfXMs59QmKGlsw2kbgB/lFIVHcVxeoggd+dOsg=;
	h=To:Subject:From:Date:From;
	b=ZGv1sgHDUBbIaI5yFGbRm5vpPyxAf+NmcO5k5vf4pDtc7+3j+Ce8UdGiBdG5bIIOS
	 t/q8Msd89aakTHizddHc6GLlKTWMlhG8/CCxvzYZMVWsBJLzSKBN+J8Z4oUGBEQBKl
	 wKBDlZ4rS+2+bkq6L1krXwn0d3/CaL6LynjEXPtYXZG6zwnOYwt8MqeJz87jyug6bk
	 26Vp9z0oU/vihlMEAgEUDHmXPP3qyJ8wfctuzC4AmJSe6ok08CwF1hSi1olwiFXTxf
	 nbeAv7RnC0+QQeIq2KwwR5seb0HOvuDX9ty2rU45R4KvKSs1DRn9QhIlMCH6GgnY3F
	 PBiQGOPpqR3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0705C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434534276.26930.16445741281637291331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481bff1e1a71901a0f97aeb5bd74ba64042c56609ab3c8ae3fe93a7641bfaa58
Date: Sun, 28 Apr 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714345342
