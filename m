Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA7B246BB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753445994; cv=none; b=DAlipNBnz/zxx4frV1ThIBscFM0wC9mAXgpuE0JyIA0njMeHVKX1uM/F+916iFQFUoLro9fAoY4j4f3XNn3sdV9KILtiWSnVS/nfWgnTY/Bdg572RIWkjLfvlDrASh/Rs+wR8zY32iJHgecVy9CZ5P+MX1nglfk1rTdekfUCkS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753445994; c=relaxed/simple;
	bh=m0i4bVgY1NlBnLXrnksb0KYWp4EysZU4+BdMEBTjyvA=;
	h=To:Subject:From:Message-Id:Date; b=jbUhVZvCOs+U3fTmMVFIQzlHb6UA1UAUkspwXxz1/Pru9vluZ8KuNVckzBnZuDD7Yd02AGc8x6+qfdL1N3Ifia8VGZrmAqk08vszt/c3Mk2dHg6uNejanADV+S83KUHpB+RBNC//pQXeUQySpPpqze5PqO2RzLuYxuMEXi/bei8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHNd4gRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHNd4gRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753445993;
	bh=m0i4bVgY1NlBnLXrnksb0KYWp4EysZU4+BdMEBTjyvA=;
	h=To:Subject:From:Date:From;
	b=VHNd4gRngdYGk1YADCImv2Xn8oP8PWfSSzewJA3WJr5xnErCrWeeEGIx/dATtQJ6t
	 m4hTAM3qYi7zPmJ3ZCgWSV5UDX/5MZBqU075wN1eHCR2Mh+t8+8X3ZhvG6/W4TztGi
	 LbmGuWUqe9ld3i0+JSYG/h8CjJ1s+6dSN40GQ+hoJZ4U/17P10vztkDAuCD8qNF7ZC
	 fP4tOkUiy2k/yNNXK2RLrFBDKqaMIQ6KPf2gUlacEj05DBdPCOesqVYBOhIxUyoWkG
	 anaBxekqbU3P5xtUou5mQpdV2w1rTQlDejW+vQSaEgDVHPIh9ZB1YPxmZ7Ux+6wpbi
	 K/V32cLJgKUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94472C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344599359.10107.16671620970832699045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e182acc1eec21224cfbeeb44e4d83a7d5cf567c803f2186a152fd12a575f6d
Date: Fri, 25 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753445993
