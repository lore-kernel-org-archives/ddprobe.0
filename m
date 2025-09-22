Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1412B9BA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758510594; cv=none; b=BX/L6NdgPSf2N/YlODrttZx/uP5Qbd+LNXUWI1wkj2QjM81Uhl07yC1DNQR37g5WnhTU7Ovbz8YzG4ztD1DUmxI5ENItmJ+FsALdCdy3BX4MX2XkFvkPF8dHnu/AhaM1oKwIT9tKMYnRLgw181+paXIq7aUTefsEt9jTdQJf+1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758510594; c=relaxed/simple;
	bh=30KobT+N2H+XblTWXb9IJZMhVVyBf7eSSVlQMwrnuK8=;
	h=To:Subject:From:Message-Id:Date; b=HQJ03uYWvs5wMCnEeu3faXrGJwx/hsZh3nXGIO4gajhzXOCgQzliFUYZk0tcHWgFkfseG/1l05rRFNSHDrsvXt6ZYUGGMhH/fyhfTn5JBl43GdX0JL5JZmmFAVsLMDhlULmZPlmkEwF/cGaWdEbDES+PILGQzHLTe6ueP3ti1Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlVJQ/F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlVJQ/F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758510593;
	bh=30KobT+N2H+XblTWXb9IJZMhVVyBf7eSSVlQMwrnuK8=;
	h=To:Subject:From:Date:From;
	b=OlVJQ/F+Cdn4MffjL0CMEyOg7wFoY6RfD4PDDbJdetlbBbe9K5IoapQzT7WqSxHjG
	 0Ut5cDWxiNStaougaqm6timnhMPBPMA35Rp7CzjEdTuqeCqt3I3tq2dOx+Yrn/xoZY
	 PyGf9PZKfnvFSq4O3NoZkr/bJOyM0whN0z0T2pkr2nUBFItI07HwEBovurlobsrfi8
	 NsH15Gw0MVIVwjY6r6GStQIo8ZZz6kmoi/Jvl/szPRYrKBUuplpPQWNhxozDQJFJwk
	 3VEmvsdwQG+bRgengIBMoEhhXktC/T0TLjAEHkFVoXtdibQ5fDQDyYLU+3rnWTLj/T
	 yiUI09hm401Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CC3CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851059359.29319.16206437116683105466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84351bdf8fc3d295ab3c3fd946cf4f9076d6c75a12319a8d950c900c34a6da8f
Date: Mon, 22 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758510593
