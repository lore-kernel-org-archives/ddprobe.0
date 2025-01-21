Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6461F3FFD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737481554; cv=none; b=vEaMghcYluTIM1nm+BaHJNA6X5lI+TpiipZcnKyOQuzjh2GEhgZWUDq2J1dEwjVTfxX3LLmxiWqENo6U8PC11/3asF8jIWziue2RkOeLbZNwg9wfmlshOLj2sHyR3z3pA2dq97kb15R08hX3sgU/ppIB8CTvRVcPELm7rLnT6EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737481554; c=relaxed/simple;
	bh=qieTBDRGPUCoV5Nug9Rq6UdsvWGZ4kdxLxyXQkxTNhA=;
	h=To:Subject:From:Message-Id:Date; b=b5uDNIsoPPhbf6fsE0WjlfqzPv8vtsh9XNKoHYfQmFiRCADsfp4eYcUWqzkMtx8EDPfxqm86qcDo7+o/rc+qj4dGcP4r9l2oj/lHE0UR8UMgk3bJ0TctKU5ClujOvf2/AcE3TtNfI8mF9/FCGtq8GpPce/hKSnp5XkCp2nTIWfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYz7qP1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYz7qP1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BCBC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737481553;
	bh=qieTBDRGPUCoV5Nug9Rq6UdsvWGZ4kdxLxyXQkxTNhA=;
	h=To:Subject:From:Date:From;
	b=uYz7qP1eCNllGhE8Bz6tQSDZ8MVZSm/oBTqiwfXfAOt3sa4IvLaAUT9VKTbLHMM13
	 n89TCSWhnM1VvjuAqAIvmshlXieXWlLIzO5D+KFy68chXkWiAxtzDEcQ1eqg8oQkYn
	 IkdpJkN6g9xbFauso3XziBL924kOdsrbfcFhfBYZVDiuubFjsWBZY8ucT43HE1w5zW
	 En5WtbY4lEIRHaF9Urlot0FKI8fIJgdNV/NQ2T2f/Y/CQEXf5p/9/GGmVAVQS2V0dz
	 wiFhCk8YE5Wr9XyQMHpRlG6U8UoL8v/IqsbkltcL4md3GNz6P/B6U06l7LNwr1MwZr
	 D+y6Oa3FF8fgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96158C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748155360.15819.15019107360946933276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b52e42fb931f2c229eafc2e0b11adfff08e98db1d8395b5c68619ecdcdb7ea
Date: Tue, 21 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737481553
