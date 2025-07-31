Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339FA2F24
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753992595; cv=none; b=jNphtujBtkoYT9GNVnKUR0IGUUWViPZGhkt0s9kSMzR25KZZQFjRTCn+8YC9l0p5m8PiQ1i1MnMSrbvly4urWNGLqtDuLLHyT0U0Sakb4Pma65/Xw78fFSWkkqo16PloIRFTkEAdRq719vh8jWUCV6xMgxdFc9MoPkkWYPuyJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753992595; c=relaxed/simple;
	bh=Xbw2zm3MgG3+dN4HPtViJyFtZOVPpeQeEiepokW6BtE=;
	h=To:Subject:From:Message-Id:Date; b=Q+E+NgRMJKOBpyE8j5BKhLal6Zr8NDtVX/c5jxc+vcyYw5XYmiMGCaJ7bzEGQPAqS2aeu7rMBBrvMk1p201ysmeK9Ht3ynemATgvcgorgAUDCGpqENICBbcr3YcShV9mq0CF4dPwoKnaoLocEPZYUoVnLGTVphv0i7h0ZEJKpb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUEhSGW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUEhSGW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B42C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753992593;
	bh=Xbw2zm3MgG3+dN4HPtViJyFtZOVPpeQeEiepokW6BtE=;
	h=To:Subject:From:Date:From;
	b=QUEhSGW4Hx6g9/o16jasdQdBnukwB32OjVfeL9pZ1ei4aUZRm1tKewwu6oU+4IEo+
	 9n8sX6xI3lg4P17yFv/cwUyxbeYV23jAi7oZyxVhmjbiqQM8p8vLDohXiHZswFXLH1
	 Ixw7+Aw50Zs2BTV0Bc3OXfhcaYnletCdb6UlhpBIumtepQloLWH5YMakymXnN6QQK+
	 DlUQwUgUng6r7EByWBsZ+lCrOvfaZyM2nnugetJwPBLP5KR8Yww8/IAuIwwMt3sJHj
	 /NKPZAYd+CNTZaM2I/V2H1Yj0UVQludXo0U/VoXzxFbTtUzbx93NIY23Lss4iLUr9/
	 zTZJVaJxPV6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95946C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399259358.25480.12494410117520489766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222bb25169a4b6805f7d8ff3c20aae21a02532228a19323e0dd5b7c785cce00f
Date: Thu, 31 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753992593
