Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FED1D5CDE
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773721494; cv=none; b=NRMJ6JAatL2xnY3x+qsVsZ3/9p7ivch0S2QtDfurWZ5uZ+UqY33C3Y25FkNhRimifO1vYIVTSjm1QbHB9Ynv0cOLBHnPlljYCWzG+SecXOXaFLlbAuJrHsULLcji1ioWSwIBnh0N038BY1YLX1/VJBBTr1KrctgsCAxM3md1N3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773721494; c=relaxed/simple;
	bh=JEGpp0QjpOqzxP+UbifC424rYrf41PplzUIdXIctPxw=;
	h=To:Subject:From:Message-Id:Date; b=fVOmN2tbgenHQyegK0cmL9gAhieD1qFuL+l7t0wD7BSYsHv2an3ynm98/4QjeMyeKmjylSk5fEv0isQZhmxHymofA2NxzI2cyi/TTonYzskBRdG2C823krD02/AfQoDYfS7mvO5jYSjyhl+K120dhpoMzgFhmr/B5qS1prWpQxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiTYeJJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiTYeJJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA100C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773721493;
	bh=JEGpp0QjpOqzxP+UbifC424rYrf41PplzUIdXIctPxw=;
	h=To:Subject:From:Date:From;
	b=JiTYeJJ2A4QoD8Sk2jyKLOzNW5lpj0Aj3OOHpMmYNy6hIScaberMTz4NvtO9DRqxv
	 3n+A5CbjWOGiA0sru/kCBIIAkfF21U12PqhjmhKq+/+TdIFc/HsZrqviZ3727AtfHb
	 porFVAT3YdcOOetCKKyyipzNR/i4iOmg1bl7xuxVsk+NGBC0/7XyFkOT84fp407KQD
	 3TCgDiGQ7fwSReomiIx7hZ6++fmyX46gWEvZyxYx0eIzLRzKAg8SCkp9iuDQ4oA1Et
	 mztimukfuxTXnsziOSYEwNbwjuCqEZjt+uS1RUMCb5nVlXIm3T2lcvvblFwfWtkkaD
	 a85TD6w/A5JLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A8FB5EAF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372149358.13318.15067767573242877059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0cdd3b24201f244f735033cfb0147b53495994cc68ebac2331d71b6cfc3813
Date: Tue, 17 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773721493
