Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB791BF58
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751741394; cv=none; b=iO2eaVoUsjNYfTpQcxbI4+nTzmyOVzb5kCUF0K4b0q9wkuXSdFzx/e9dv3jzoNDY3jlk7tbzqyhBTbspgKcCUbYMTBjBSH5yOIlqri41Z8qUAEtthLiKrkDLpYmdq++QWGpVlZCfzdl16MI98jxJxb+n8jgMEHqOvRp+zi6Lfqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751741394; c=relaxed/simple;
	bh=PPKoHbWpW3F6wkEktO4EArDew1HOWQqnw2y3iS3cDYg=;
	h=To:Subject:From:Message-Id:Date; b=HF757g/bks7rc8l1w/Gh2cl8nJnz2NmN7BuyesGOG80iyfEc1p0RCLUu7Mm2uPYPsZ0Mot5Jh1xOWPE0JV2T7+We3Mc53+PYBVhtEnny7rsjX+k0mGDfsYsPDN2V4LuF7lTXF/EvEtxxgjnKXZfo73gqWRXCUY0x26VPv1B6Mv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRWMNNjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRWMNNjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A93C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751741393;
	bh=PPKoHbWpW3F6wkEktO4EArDew1HOWQqnw2y3iS3cDYg=;
	h=To:Subject:From:Date:From;
	b=CRWMNNjSeefyQuYQDWLUtpBLW/jN72uCE6CtOMQ0auI5qQBnMYUXN6qPNLI00KrIJ
	 LQxzcVnZb/vEvUFQTpK08nnk3WuKe71DH5dTG6Y4YL1iGj6Z0X5Kb3WnimO8MonZMk
	 AHeHw4yv9dfF1YlEFePOeHrFJCGMAOvacQK8qP9DfXRc90GCAIzSZa+4iLCNzoQJTf
	 x4xGW12PtiS92I1lSH+Q1SAJ3J0F8xCI2O67Plp+xoYrAECZysTkZN/GZIoRqLbQkz
	 bLoJ4Eu/iH9hC6LtmB1/qnPgC/ZX0s1T35e6A0AdO0mT8NUHn7PYEZxme1gccGB5Bm
	 URtRwJ/IXrW0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A89C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174139357.8333.8971168278293612536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746ee3e1301eba6bf158313bbe80f23e2b4bf5a4502c0bfc121b9e174f339207
Date: Sat, 05 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751741393
