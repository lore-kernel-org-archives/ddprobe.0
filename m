Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2259D154BEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729583754; cv=none; b=qpeHTsCMegDwjhZ6x6d25s7uvdpps+iDuwh1eLoLOLeBRCJSGAPR+eHNewYGs/HLLMCNUaxOT8W/hmOkxdzJwtu8kJ/2QlE6FsuXde7k26jfcP+yVHYoN6xOucgRIjtJ8nhJOStM8VRw+cLgvquuiJS/VwhZD/oOiyAsanO+tgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729583754; c=relaxed/simple;
	bh=nR41d9sxRRO3K/miTyjVGybbEGbE7EGMUxfOI16D6DM=;
	h=To:Subject:From:Message-Id:Date; b=dXQ48/qYweXHiAYqNKmLOhaXxMKv84lTSgp4Ror8MF0YG908M7DVGbcIia/O1Y/CQqr0GKkIRQ/TKXVA+NVuWfftXcH0DbxhsbCgjCV16XcdwObzylob8sHDFSUOk+AKfN1EpEb2TqSOA58ALwatqB05Fck46A+qGo3qk90JHDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNN2ju/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNN2ju/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA7DC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729583753;
	bh=nR41d9sxRRO3K/miTyjVGybbEGbE7EGMUxfOI16D6DM=;
	h=To:Subject:From:Date:From;
	b=aNN2ju/HkM6QbGcOA214CAxXZ2SryTxaaFee6SwwW2AKgI1uNmWo5KfJa5H2D3UW5
	 I9LO4golyWRQjfQqGg+ecsBlpdmUsyba92D12sZ5AqHIgcl96F+n0xNw4PhczWnaJK
	 Tvb/2ejkoaO3EbFPRfEVTmro+hyrUJCyxEIxvkPBc37l7kW6fb+jmmyZG4dZuqTLXm
	 WX9b5zuw1j8i3Fuwv4nYaAXNGnVN+IYFKNFKVRt7cCqfpcSaB81Snwow3xsYtSTMKD
	 Grcx/Ba02Us5OHIbrLY6UtZYT0w+7kXTiw7Xfd77CUL+2/atv1ZJW8KxptvD+YkkpU
	 uSlgdVjZR4Yrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C08AD1CDAC
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958375362.13486.17176524026129444566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67321b8d2d643fe1c835db314bc16c62928fba0be432f3a4752156067cdcf6b9
Date: Tue, 22 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729583753
