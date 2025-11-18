Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412F434E76A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463115; cv=none; b=dvOoa82eNtOfSqP03Sa83VMLxN7sVnx13fKIAccU5juBGW7EEDQkMBN4FtrWgiynBBtT3hpfVNRo1JOLiQe6Y2vPo5Mh4GeDhOdVMnMMGR2BA1JQe3I4spJC0P78lMzFOfsPJ5hTFc5p1crZi9FHRE/OXF+2jpvg3lC64X2zUQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463115; c=relaxed/simple;
	bh=NXSxUs/vxq6eF7YZf4dF8Jrqbfj7AhuEl5yu7Ks/OgM=;
	h=To:Subject:From:Message-Id:Date; b=gGvWFyvTd2n5CR/DAt0lnLJNuqPodKtFc/KaeLAALZ0rGhdPxbUIe95vgdVHt67j/GfVA74q4N53dy5Xnfx8IXKKfuh7A3KYJ9bpPS3Di7k3chpSbUrJCnTowMm3fRdpO6FCYg8foXOSnpMFm+K2bMS8CMD0rBActUdOo5Ptw2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGs9byBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGs9byBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF5FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763463113;
	bh=NXSxUs/vxq6eF7YZf4dF8Jrqbfj7AhuEl5yu7Ks/OgM=;
	h=To:Subject:From:Date:From;
	b=vGs9byBsqUWQy/40HkH1pllQn3A3yp4PYzd/0dC1LEVR5nz6zIs08VNDuOC8LQmmY
	 h6eabhTTmUGw4uUnML4biLbi62d79N88ToXiuJm8yKCebhraopbU8eOMf0h3iJjRfq
	 JizdJQk0cS+MyDH9w+3DyVPlfqKwWFu4EtMuxAOHgj5PZ0WbNh5dsRkpGhzSLXJ8SP
	 AzlMcz+tae9/J531GDu394MSMDbxRRNzzCcZ+zHNfxQtnf0nCsIPx+lstYVe6mFf+x
	 oxKOeu30QjcX1zRecvMRE8pHbQeeP98Xqb3OoZlkFXnI5BW4m3FjS6mKlZXTcc8OeZ
	 o1lltYzqolAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E0CED26E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346311358.15955.218867627814589842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a491e68c6867a0316246d0c24acdfb03da8d79f0599f71ee49478166b57f7de
Date: Tue, 18 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763463113
