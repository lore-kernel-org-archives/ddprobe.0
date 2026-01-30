Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AD2EB87F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769750634; cv=none; b=QwAMeGf/gT6kv5Si2O2BuTyXPJq3APWtT8KyB/1LZdSYQ+P8OaRPGmBp9MAsrcDvIqWJrlYDyvhN5yR5mOixYLd0WEViE3okngirklMInwmNJKxCDoN23CxsxV6006ZSXnNR5GcCgg1FaBRS2p9UW/9I/I6+2IpNYKxeWnQr4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769750634; c=relaxed/simple;
	bh=dw42Vfnq9+Ir531XMiLoYJqBR24+WNbQH1DOQ6CUPpw=;
	h=To:Subject:From:Message-Id:Date; b=WsdWDbKYF2DctR5vFmMGStSOkT6IfH2JCsEjYOLxGWAzQY7DCMnEd0ZFliylMe0dF+2EaT9UqFwRsMyO+X79JSG2s+1DQI8r2KZQf6jMUfPc43RdIJKQZ5tos6Vd72WHtuwJwmbR0IGd2RBDjh0E9UejAwIuzfSPsN8grr/hJT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2rMZKyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2rMZKyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6260C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769750633;
	bh=dw42Vfnq9+Ir531XMiLoYJqBR24+WNbQH1DOQ6CUPpw=;
	h=To:Subject:From:Date:From;
	b=E2rMZKyKWz5/z7QMhRCFHhw9hSyc6O1JUi/amHBeCw4+F+ae/nMSi+eip8Q4PKA5i
	 VRCzV0KTwvW8ZhlVqtQk0mPeDEmbZu4nX4yweixRlLi+zden46K0tENOR52G4tls61
	 3W7X/89MPdLwz4JWOV97/Bv0M/wVcQs0xt1S6HmXbtRlGtcmuFxFABgbehCA2qioL9
	 HwLnTlYbC2Ff9Ft4qiDg5AII8HzkU9eXEt/MoStFtBprjnMRUlm7iQ89kUdQ3kjoQj
	 z/sYHfKDX3rFNWJBUm7YW7S/edZ9SZk3rKERwzw/GaWHWeLOrGPLrqZ3eOIwXz8oUh
	 lFhrex0GqrwLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9882FD73EBC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975063361.27588.5814193185480506780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26de4e483ae7a215221b7d417c7224d3790b9cc5f2bd3d876553bb05a10eb793
Date: Fri, 30 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769750633
