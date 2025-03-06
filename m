Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBC619F495
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741239534; cv=none; b=Z673gg0u+H80UpoUbaKifsLITYDXXfY2foOk87yuW4A1s+VJjvw3bI0r44D0ntluyg9spsstdIPjMFvajJ/LLrGMMa2MVSVc749wp2Q7CsGOLNDdnOtt7lLjnE9ple+yWZZWwkv79nVkpaCERINhN24VST7WDadp8ecgbz4gByA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741239534; c=relaxed/simple;
	bh=e2i3cJ9IdWrRjsCk6HdbL8Re9HBlFuaQr3nXbQiOqMo=;
	h=To:Subject:From:Message-Id:Date; b=kTOHgr4j9my1t/0487pPZezJhAPdtDCabRlsW9r1C9gwZqGLJOVklfzqPl4IQhZsgAHDU8yeypegv8VUYR4K1x4GsrQrimSJiDA5PPT6CuHp/1LIAKzXnJlCeqEM1K3i6oiSPUzk79MaJGO0GDbZCiz+HHDjS4/Eth5sAKRplYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSFvmGmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSFvmGmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B79C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741239533;
	bh=e2i3cJ9IdWrRjsCk6HdbL8Re9HBlFuaQr3nXbQiOqMo=;
	h=To:Subject:From:Date:From;
	b=uSFvmGmxI2gJZJ1dd0/hFInMMNnX+lKN82D5Ntw0BhUYjdrkyoQ1CvpuT6rc8DKHC
	 40igzih6wKofKbEa2HGPrHnKZvsEiQ9w19XbmhJVcQGZOAwa29F5HA47uAPWpBqB+a
	 bZksVTMcIaE1Bb3KCf6mXlE34P3bqCcc4ROCRWNLqL7j+BT1IzGWzoJ9cDjslGRD7O
	 p1Z13mS20m14a2VuDMejMcItZskQoPbPY7ya/y9qxQNAbleYKL2T+94oPpanQhPMyU
	 lnvC6TbVnIef6ti2mnYA0qbSDcy8ArqAKDKEAR5Ys3AamF+IpJpnWrna5wgQJb8sLv
	 PPOH2ZF6SIDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137DC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123953358.2010.7602213270835462602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b68c141f4729e96c70dc41a326710bfef77223ee79daec1200426754dd496d3
Date: Thu, 06 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741239533
