Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B305221FCA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766243034; cv=none; b=drzVXO8mb2tCCigdFKrLNaDVx4MQ6cWNYEztAQdwjdGqpY67LyiTu8nIBIAx13M1wJ2zj2pj3f2kr48XuUcOkJgl+YsuD+/PTSNygJVLSwwJTUJQIoICpS3wIQqmtdbhpXqZywhjPPVbdwvzkpIwrZw+l5bejORmEJxf8gXR8Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766243034; c=relaxed/simple;
	bh=lwQ09eKYMno7PkD42+/jl3xGEvo7FHAELZw2+xtKldU=;
	h=To:Subject:From:Message-Id:Date; b=i9Ov1YwdlpvDhQjmf4ye5GNzHDzYa449Ng61SIx2fCK692Fjvlreev5Iue9ATH3SXPp/iYltBDWdL5gj9Ss51HBsVVWRlJVG7zh80eORT50/ZVTvx1Bfu0oG33zgpvd1FrdVBhuPy6XJdhO55KcaEnJc/Bgoud3Gg8/KcJprGVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8+MULuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8+MULuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E37C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766243033;
	bh=lwQ09eKYMno7PkD42+/jl3xGEvo7FHAELZw2+xtKldU=;
	h=To:Subject:From:Date:From;
	b=P8+MULuh1yrBtNC5wQV7DYSdEwpWEW99j2up1p68t8GgErB8ryyNT1QS/2zZsEULn
	 GaUCUIPPWs0d/+BBl5f0gjwntepWLdJStRfOu1uqVIx0sPFZ25CPpn2+N75luL3Bpw
	 Iwv5zg9yEywHITA4rLOtUFqhzSGHplWYDz16oGfMRKYtAlgySzpDqJFCJ9T/cmrOK4
	 beQNeE0Z17lzrBsCc4dTeWK3vLrXWje70eQaC8vWJJR1IFqaVfFnKZnxwVqJfxeN5z
	 VHEXxTVqNHAM/CM5KB84R47LphKaG5n8CCMdqwr5jpRYCJn68i8EvylKInkEimDKjg
	 EicJ62smRWnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641AD78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624303358.18243.16155340125765602389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa658c8883e7a9a4051488c1712a837de0857868456638d44874204def395eed
Date: Sat, 20 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766243033
