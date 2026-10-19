Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA534848A2
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792395034; cv=none; b=ToKHPZuFw3eJZUR3P/z0y6JsalmYk/6yc1ehjI/kbHp3IByqheGJRHYxY4RP5yYDRve1eiHur6tSqz0GPnB2PSCTpaeOAzqGq3sHjGnhLuSb8LnEHZVb15pIevzo6kZlEC/rWPo8jzokONcyziFjVBSjuAUW/pvN0mEx4yrBZVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792395034; c=relaxed/simple;
	bh=I1IHQWLCKwXKerL/ToCLItlD3xWljskw/QbOLXs5Dz4=;
	h=To:Subject:From:Message-Id:Date; b=hAvX6wNL5YbJBepJoeSQ1804KITMoMCz2sF4k8QM/7fqM6t3HcVW67FBDmhAVMMpZct2YfSZrheAMLvOyDlf04CEH+bi1C2G044V0RgkclOgWmlKhgo/+jBGSr1+uIJkV3L9vbGn7mQt3fNur2nCThUEtB0ZsyXApXgZTJM1ukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUUyJoEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUUyJoEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E06C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792395033;
	bh=I1IHQWLCKwXKerL/ToCLItlD3xWljskw/QbOLXs5Dz4=;
	h=To:Subject:From:Date:From;
	b=KUUyJoEJgOuLGF/5YoXmNPbnT880dzYC/t4yu3ApfY4P8zwe80b5pvmPZ5KEuHjec
	 nZHnG+Y3ehrSQ8zgG/J7COIgloVQ+DuuZSZi3gyKldbAcvnvAtfogD58UD0QV8tX0M
	 kaKMGeK/AUJ6R7x/cxlRyPcqFGKkD2X246CyAnnZKJBnXdI8WfqY+iGmWOquG/rw4u
	 j2Z8kt3D2+A91CMVGhzZAI5EQ2Zbnu9gwK44u8fqJ/9lujiFDBvrufCzR9fr9cYjk8
	 7sjlaDQ9v7OoY8LG8jF9ips5YWacp7S6OamEhJAlDs9C+Wq1wghUv5DsEcfyJgMhxd
	 BMPknKoAw+IJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B5BCCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239503371.18597.10695436972714018483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd20c7cd4b192d5fe0b429afd6a258f845e82a5de68aeaa999c6c5cffc4df554
Date: Mon, 19 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792395033
