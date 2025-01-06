Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE2524F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736168154; cv=none; b=Pn28N3+86xVu3keeypA7qqBKG5z22aR4lDkZV1o/bEyK2ob0v3E5lXyt3D4dfsr/KXfxAALL2vwZz59GwrdNT2t7QKWEvNcr1Q6wx7jvQzpSbLq06Jxy2VWD2YnWuapy1rrdkI98DRaAixXNbir64WMRrXlhZB8jXzLgBxyH/Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736168154; c=relaxed/simple;
	bh=r/vmPmmihYbElRBIqdl6Rp3sA9oXMIfqRIWtj7sLWFo=;
	h=To:Subject:From:Message-Id:Date; b=ju7f7l675+lJdfDBUyF54eMwysEMwEnPYwtIN5KuMFWhqcK4GBQqYEjoHAuSKmEgTSbakGDAlMbks8Py6VGINHdeBerLRpf0G7Jc+/8MGhARWn7/5lzJEI9TwsjfdtnZ/YHT3UH/ZaUnai0pHiHwqfinGeHCCwqrgB5zxsusLQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyX91XLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyX91XLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02ABC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736168153;
	bh=r/vmPmmihYbElRBIqdl6Rp3sA9oXMIfqRIWtj7sLWFo=;
	h=To:Subject:From:Date:From;
	b=oyX91XLkJIwbL/AlVnYz/X+wy77nKRnP4eVnKQ86bjAjxhjXe5Fzh3HnUKNZVAiFn
	 1GAh70+Vw/kMspPpKXV6vtWLXooixDoalpi4d/JoYw/ZnE5p5UxP5vbWUnqoRIuLgy
	 2Tn14nrojC/rJl9lzWWu3CMQER5gVrSsAAK/Sg6LxGqsB8AcUiKYRjH0YuBlZvzmne
	 s4rNQ8dtFi+Kbq1JK1CNT1EKkWMu442QpEx8jbmw5HFllTalLVr5z/vdxI4aTn6weC
	 crdp8y5arp8yRuMmTulmJFpbshI55urJLFrOocYjtDLlIIH3pZlXGr22hIhRBOoOdW
	 kpEYJv79kHSHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033DE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616815358.10063.15188016888077156072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4721777fd002828bf5c6d2383504c01d064f0b17a587816291d953f987c4ce2
Date: Mon, 06 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736168153
