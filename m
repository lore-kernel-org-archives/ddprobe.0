Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452333ADB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784790574; cv=none; b=I/Y4kWPJ1Ojy9CHVi2UEOJtVcRKDI4n/bxJoF14CJvIMOQdnkEN47XC1tqgzcAljFgpWlG2XlNqbE4aF8aIQxVFX999p3WA1d7ShaCGeGcvXdaTiH/YQCzPhRMJSeVTur9A0qMc3uxVuFWvEU2aEdh89efQ+gvtlQpH0dsBRMC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784790574; c=relaxed/simple;
	bh=j9HZu6/1ibPab9RVuXu6ADkGmh7uQZyNcWekRFyT9K0=;
	h=To:Subject:From:Message-Id:Date; b=Q5hScBvkBFnXz/yHEuSv3EbqSrBIZCw1gHPgia468fLKOmaYJvtSNBlpsvtBlue6IqMT7dx8vcUaBBCqJpRgDXAedjLfqp86qZFxHzWL8SOlRu9ioN7EVRBAGJCcCPvX5lORu8uWTErC1e8cLaYhbZLhlAdtN36H/H/YtmDQxdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZzThXFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZzThXFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1F4C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784790573;
	bh=j9HZu6/1ibPab9RVuXu6ADkGmh7uQZyNcWekRFyT9K0=;
	h=To:Subject:From:Date:From;
	b=pZzThXFgeEJnxjFvWoLQTVFTAE070RTFjH9C0+mzqlb6OW5FnGVc+6Tk2Pzfg2UFt
	 UvnxqFthyloaF37btLrXZgygTx7g1gNzPMCHv9v9gGdlGaxIhywT3U/UqKzz6cd+Qf
	 eY8BMiAG464xJJskDkZA66EAdZkFGVT98WW2cgRLiFXgNYkim8sjly/GWI1bXXRZkE
	 MfjE9cF9PPw2t3avXoHuTN1VAJLceZhhsNEvvTz5YhdylPCjHJx/eq4Xfvq1tsOes/
	 V2+wAp1NvKVzt5VQNvbRUQS+LWvlsgFvo56EFM1lmKpqEkWRVfMa7yvHnvubqVAmIH
	 VwLEuHVR750Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB56FC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479057369.10894.9437507541609819108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcc3a90f2a96758f8c3ed739390eecbe1126d2666c2dadd9c782b9d1a9976b0
Date: Thu, 23 Jul 2026 07:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784790573
