Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8E024B2C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705579697; cv=none; b=DcTV50cbMQrbv9ew6z49ttoYhiw2ECP5d5+FYRZjKJSNoHLMPmepQBnma/8XI80NDDHV9kCwOB/wQWUWEWbeBNH/G2D2CRTp5y060ZLhsnm4h2RgSKHBzK7e7AWe5TpHe0vQpuKOJLxy8Zsa8Bv/cuAb8xzxKPkq78KlEE3ZkSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705579697; c=relaxed/simple;
	bh=jC+D54vaQrCJckE0nexCurMy4a7dZHnLtWO6wth1UA4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ho3ezJ55750sSe6/JTXOgNvtAXTu/V6FRxFde4DdAB4bghVarOwO+jRELZc86n+IznJC2iX0zxCjkUK5VYUm1ZY3i03C6IXzDv51v6ZyWeFQ0Dw6qnvvEVDNbuBGRo3LLf/MnMahCIfesCFv15IiSb37oJty07eYcmG39FlQqcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6t8yBrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6t8yBrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B753C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705579696;
	bh=jC+D54vaQrCJckE0nexCurMy4a7dZHnLtWO6wth1UA4=;
	h=To:Subject:From:Date:From;
	b=r6t8yBrUxa47igyUV7CWMYjjyEGQLlOM6df1uS06fZbaQ7jHHIzX6V6Hxw17Axvqg
	 QrtidvnlrnS0kgkY+7hOquyKJt86H/XIRvRu5MQxl0nInnLBVq5JBPDnJK2Tgj+hZV
	 dr7bX8RSRIkazjy8AOsTO6OfODVrCmMKPD1PGfbsZ+590ugkd1rs9gj9yIYFck6dKd
	 vfcFZnVvcLRDNL8+oru1uHUIYMU3S4m+4SH9HMagI380rzhXr+/m5yTolyROFVozDF
	 +oKta8Aeme2/Kl/Q7tt/5IRHJM7ZvIFjbbAvZWGSJlukIENzFvoODbV9Vh5Jgx/A7g
	 eXNNslrKnsQ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB96C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557969638.4786.13537402527902316464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0310891f9203a543923ef4e2eab993e31c43b5251b189f93880c6a80d342f3d
Date: Thu, 18 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705579696
