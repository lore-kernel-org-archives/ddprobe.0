Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5B61F2C48
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736277954; cv=none; b=cXT7R8x90rmcoEUvkKwxyoRUUaq/hOuv6NDh5Dlaf6GUONeSIRvcMgJY3T7bqlmlIaZ2dMEBJoKdRj4jkFAsjAtk79laeYySzUJmHTdjC2S8nvxuTFN9BM6P1pD8fDBFJxs9d2J1EWv6vLUAphsAMPjJ2BWsB532tXcGscDuSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736277954; c=relaxed/simple;
	bh=GLoAigj7eCQ7bQ8Vo9Cwk4wDC3YF/n8X2ntHqd6Hmuo=;
	h=To:Subject:From:Message-Id:Date; b=A92TIVgu2/LkAzPANNy+riTjo63gGy0D97Akl8mddBSzjQAR/zGA+dpqOP/pNvq2XVqB/Be2TY5SLVMdwwhl4gqJRQv7rpUgHGxCxDqSUGefUNilnz4LcNsVHUPsPLlmtblCIJMTpJ2aE9kFzcCisUKbKyvKSrbEPqHjijJ9x6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u12+qOjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u12+qOjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1204C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736277953;
	bh=GLoAigj7eCQ7bQ8Vo9Cwk4wDC3YF/n8X2ntHqd6Hmuo=;
	h=To:Subject:From:Date:From;
	b=u12+qOjcBlIu7z65B5fsD7yFxxEKEkejinz97tseXWLJMHW9bAgHTSp3nAyItQiOg
	 LnE705c7nZe7qlNjSsxK6Caq4/4TECKQMOkUPabigZ8ovRFYB9mIjzMYi23GKEas5D
	 6TX2s+YUiJCyJbq44ID1/XWPvbxVP0XL7lX4LAFCIqyv4CWJr9IRJnw/V2pBNQ6coT
	 AUO8WxPRb/vG+5/YfJncjTQ0IfiyrIUcBNPFRbdgyRChu61V/AO0Hpl5abXKyx7K9T
	 NMVa7HPJOX/HPRwJ4w88tBOpnjt/g3JoXSMU5o/0ry/MF04F/6zQNxpX8lXsmNs+8c
	 Hcmb6gPxpb2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF90E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627795369.13427.18081675267153693882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03e82b1d8f2c5dd977e9c72efc0929d98400828cd01adcaeb6a8b9da9e98346
Date: Tue, 07 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736277953
