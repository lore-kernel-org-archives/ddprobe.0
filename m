Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C421EA7C6
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759575594; cv=none; b=JBP4QRPu6tx7LqCpQNsbczAaDXWh/KjFMhMBATvucKRF5TXPJa49Cx3AAmKsjiD/HMq15XqyVj/rrhuvmIwrBur7/HdcDsw9+MyOj+6ihTCQrjE2ArRL1IhoYw9YUPZHVWbAx09hr3rY5MAdTEdi5DSHe9/uK0zh+qdxVPYMGdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759575594; c=relaxed/simple;
	bh=HdlvstLvUOXjP0LsUeb//Tz3E6KEHJQw9WyV2Tgjfcs=;
	h=To:Subject:From:Message-Id:Date; b=eulZ0YMPIgP3J77jBvsHtTdRW2jN8fnp5bKMzjjDZWx/YYtm3DTX9jMBuJZE4er7CAV1TZggYipWJpH1JcgSeeSQDuQQM4m+Erj8S1vUFxat3sfsLNEnaQwz+XrsdXNPuuHJNsh54BK8wstuExu+OKjDAW8Aiw/ErBdFm7GVh+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDKx4IBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDKx4IBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759575593;
	bh=HdlvstLvUOXjP0LsUeb//Tz3E6KEHJQw9WyV2Tgjfcs=;
	h=To:Subject:From:Date:From;
	b=vDKx4IBEaUHWc1j6mX5Vy6jiactEVo3Bxc2HFbnq3wS5lKB4O/TSd8zfspL91jwcw
	 3UFk+KNFzMZKH+O3d365LewI79YknreC7h+Y24Ai8lLMTJKYf3dkg+SbjzFFX76VcA
	 jjZwk90c74yVuiSgEsmDSv4eH3/t+2WYeOPo9vBoIJ8UO7JKaYxNT8p4B/welBeBAd
	 hyE8gbFKC8qtHg1ZG1vV6Jp6fDA5kOMrgDwlPHktNwM4pa6/OkX+AcUNvqm9mrAdG7
	 +VltDbKyb8W1xoHE+gRk9WwSlhoUxVpwrjyRr+xA7SZYvqyX6ktWyfbhCugAq1Ifkd
	 iduevKROO1XcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957559357.11139.14700753694046234292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8984d4db42b7ed7ac76c3f9ed8bcd2ac51b5f8451f52da8d5ef17a0d865456e
Date: Sat, 04 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759575593
