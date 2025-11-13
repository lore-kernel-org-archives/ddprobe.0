Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E085280037
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763043594; cv=none; b=D7onG05NBYSo6SV8iGfiVXZtRfB7hBHh5NS3zRxr1z32mgZH4a2mIrDH2sGbxPkWpDdVOetojLxrSFrN95/P66SM/U556LC26Pm82YJu7FFE/o4sPvFJ4h1yroanKfgftxKGMqM86J45rZfQx+VLeuPb5ybWSr77lAv4h5iZ560=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763043594; c=relaxed/simple;
	bh=kcoFRcexwa9fs65pHzUO1TMnRQghmww028bjL/gVz6k=;
	h=To:Subject:From:Message-Id:Date; b=NSGn6Wmgd/vlETg7k0g/UEeUS+WHEMVcPhjTCqHFARrF/eKUFENdZ1yPHOZYr4LsISCBtSiM+eziaEy0DBq35ZNi74laAEZtxnMNBPhpH4Ghr/yHjpKO6u0oHd/YvoTIzr4Wjuis1Yjod0S45UudRt2xVETEiy5be4sYpAE/Zhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvQAzQDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvQAzQDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B89C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763043593;
	bh=kcoFRcexwa9fs65pHzUO1TMnRQghmww028bjL/gVz6k=;
	h=To:Subject:From:Date:From;
	b=IvQAzQDNsiD0LZYn4AHoTtyfFusHP75Dzq/86MvlVUem2g71p9Oe8bJAvFvTAB9SF
	 gpvJXE6y5LIhv7X3p9uKRL+DfhcVtUFyxO2DAbib50+sI+7V2D2jBgiJ2rTX92p/PO
	 poJk3KCp9YwjYm2byn6YCU7eQ4eT7ZC/OFodqC1VuCNkNpoD7A0+3+TWt/1tRXxmG8
	 AQWAPTbr1SRHfVCrBRXoW4xkhyHJdZd/j05QaMxo1MitIoe+32+j+AZz1BG9gwo0Za
	 1t4zX8khIIP7ggKeMW0pi0YNaIzvq/t0MZYfmvbn932Raj3y5XpcsUuIE6WocAtNqr
	 4K55xTL4mE6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2059CD6E71
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304359365.30810.14777052216581033823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b95147096ce663ab300160c6075c68106dab3a9ec3cb5ce62f55917ee36ff7e
Date: Thu, 13 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763043593
