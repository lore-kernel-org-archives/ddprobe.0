Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260878F3A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775469934; cv=none; b=O9ohon22JjqLOdv0PuAWjgnjGMcJP0RK7ggfcK3/LbA5GLo+4D/FZR8RSQhoivUSxLWTazMcbZIxgYMSEM5TOAbn55Qt0McFbIFTv3PYVw8Izlln9r+Pb3x3iqn/O77ddRY5YmePpQdcyc+FFEboyVAF/hM2XuTJmvFVfgBBxSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775469934; c=relaxed/simple;
	bh=RGAO74fklzaQiZdeLtMbM5Kz+9aKlILgMOfIgAowGXQ=;
	h=To:Subject:From:Message-Id:Date; b=Ai6LAJccxuPZ76bALsrUKsd0VN7ofMowk4yeRR58ETCm/BTvmEW0JEyDPGRmiQfoTV8CKqG6P/CcjQucSwr8NoS6VtfO0AJeR0Jp6NYEw2Pis1qRrp7cZhvc4lxGzSZlH2QPN3zj5+HdUgifnm6TKs3YO+kx4fRgdF09ttlggKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6w7o6w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6w7o6w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC4AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775469933;
	bh=RGAO74fklzaQiZdeLtMbM5Kz+9aKlILgMOfIgAowGXQ=;
	h=To:Subject:From:Date:From;
	b=e6w7o6w9fTLkoDahkKFlV6uyR+pKrVThSJfWxPQJ4bVkHH2aBca06a4NnyvViL/P1
	 Ba3F8WvzPFdmtoOT8E216QdV6cCsVf24TQMDhMAIOvHkDoSotsK9o9IxvHdn4IEuMn
	 jDlFiTSmRpffdmAN3ngQ9lXkLyxjkUsdjBb1i6dcKCOkEgsgPGuInem+S+Y7ieW9uv
	 depy1sc89btGh4ucCPfX2+4Kwlwy+pWnQAvdKE5NCifM/ozmUWV+iKkE2CTTZaPp6u
	 n0N3fm9+YHtSdB57ul3jXQb68Ibe57XRuGGsj9zbO1DmuAY0TWDTxLjHVBccmvq05g
	 Knr+m3j4KMOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2ADEF4EC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546993369.5417.5456673079301968633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc63f36add6107b49f1febd51df20dce2d2dedb3f12574eb61df40c9880564c
Date: Mon, 06 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775469933
