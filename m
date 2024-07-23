Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0AD381B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721757353; cv=none; b=GEyqymcqwkcTdaEDRuAN4Ehlm1OeL7Czgxk+Z/B9Pok+Ye/YJPIlD5y4spxHuI7YRRMxoYCSUQdAAK80T9JMjcwddlgVW1WxdeZft6wRfwonx1rD7X3IiGtF9kd4/DxvrpR8WEDyw9OCdhh+tGUrmi9129K7hwDX16hGZUawQMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721757353; c=relaxed/simple;
	bh=+a8bvb30fmj5rGo9UVuTGMFXlUS+UWYCXzkqfgPDujU=;
	h=To:Subject:From:Message-Id:Date; b=Brz29KBYCHK+H2eqPDT3whzpJb1CcRMDgsEkJEalYMn5/DGtO1ePZRjDRdgXXhRpCD0mcSa0UcZo+Wv/rPdOAwe7MUOb174dzVqr1/AVx1nMoiiaswaojQTFHjQ91QTkG+qNLmmw3owc3fAqLlUoPb8JU1nhxxVksGZi0lTr6Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yoq0Tx9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yoq0Tx9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721757353;
	bh=+a8bvb30fmj5rGo9UVuTGMFXlUS+UWYCXzkqfgPDujU=;
	h=To:Subject:From:Date:From;
	b=Yoq0Tx9JMYndPQTfe4c+4ldRzfQ1hynNRb7VfYO1lPX3ZfyH1yUJNVNg65J05uiDM
	 YOphEqFUVAyNU34hRWuneMLwtwdUOwwMr+FEsHMXYBvBONQC4xikvZdcZGvDCs8Nt3
	 tTgOlhzZG5ZbF7vYZjhK/VDnmkOMRrFO+M4GUzhv2HZ1L+zOS+3Lmad29nqkS0uutv
	 MAuYzblCxt6hCcFrbzPJQ4mwYpBm1lqLK/gNHvNW8dfTKWEtFExy3GssJslCjhoMp2
	 sFEoiHyWdRVW77FsqEh9DZ5ifmFXE8whz88MQ/Qi8O6vfbADRpQwBz/VF8NRqz9JCz
	 92uwuT2T58RWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C43C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175735359.24472.11614814681083560790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f359473d9e05aa06d8177e5b7718d7b8ce713252df973630b3055730e6d5115
Date: Tue, 23 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721757353
