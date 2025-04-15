Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4247C20FA90
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744733994; cv=none; b=IV8m01mtuzPyq6S+IXwrqgA6xSFnqdKHOR7gEXJNLyFkk2YvTxg2TyfOzI2UinkgZ3AtH35u09gQwPZz0mpiBRlCXGOSDqlevxBeOtetuV6tV7Uzn4Oyr3XG/I+altmbPT9RuXFCjB74LPgvZtos5OlVIlYl+DhSxyrvzmzgCak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744733994; c=relaxed/simple;
	bh=hGTgrSicJvo16JEP0c3liT9osTLVxLhHnrlB5Vox/Bg=;
	h=To:Subject:From:Message-Id:Date; b=q/gDBE8haDVyuhC4BEoIZaKxEmkmhzoHvtOEs2zQK6SiNjOIxksf/hacS8J8sX1utvkj8/HTJUh9AB/lF373I2RQBfvECeq45bTPwho7y+SZKl4nlx7429qiJZxaGFKf95WWGsP7BWZAmg7BIypLmWsUXVOEJBPEJJk/6PAgOlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtPeO2dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtPeO2dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744733993;
	bh=hGTgrSicJvo16JEP0c3liT9osTLVxLhHnrlB5Vox/Bg=;
	h=To:Subject:From:Date:From;
	b=DtPeO2djsgu3FANktyD04BjvCZceoxxXJ71G4eOa79S98v+Pfu0pW6WoFy9Vg4oaM
	 rsH8Mo81++wuExByCQi8x8zL4/WgcqvuapNvY3x8Yp2NNp71CRWb3OHqO9T+c5aTqH
	 6T7MqvgE4K4VS1o47EDiwtFbTIXZsQGxeCVoK+u5DNfXeJyKJXRgBd8RwT+9Y45Ys1
	 tVkXwtjA7V7Sa/HufosabrCQ99jPJ15rCp/FOgeTS2JlgnaPhvBgRWxr1kZYp8KwaR
	 HADHDQUtrL1V3g0dOpakg1e7sDW0iJ89UVJFlR8tea6RciAC1qKchUwdlwEDVxase/
	 j106vMyxkZe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991FEC369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473399361.10560.15295336188488698877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892f85d25f0af1e618a479ffe88fe1cfc73423af19a44b28c813bf77895e9afd
Date: Tue, 15 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744733993
