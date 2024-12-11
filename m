Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307231EC4FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733912154; cv=none; b=LVSmGKUEG1DjgVE9xOp4L5X9pqngLACidyHWcEFYfFbsnxk4muTTfd1PIMustPqgAZNXdyaNl8SPzqK0KWDQrZ4wHpp1vyktE0jAsiFbLPLdxUf4sxxOTBwMKA40L6DiReGxTz4UuDFTfkSwuMcwGxrlwPh9cT5ZDxGWDWz2yqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733912154; c=relaxed/simple;
	bh=Oh+KoJguMUDrbmqtu9VcJg8tyyh5RL9/GgeZXOM8mc8=;
	h=To:Subject:From:Message-Id:Date; b=Dg/b/tR0ZTKXNoj87eUoqxqkl4qiDRvfPr0omolefsKa6XOAybCfcTLVy0waXTWWMCKhhivOyVXaZLFdB1p7sk1uAxVh8JTHRFEMn7nMa3kbv39ojuBRPNxgFjbi9ydP+JLz7Dpc9ugEwxJEcVyWyg0nUZHr3Feu1Z5UG9evknQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2HjhusZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2HjhusZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB647C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733912153;
	bh=Oh+KoJguMUDrbmqtu9VcJg8tyyh5RL9/GgeZXOM8mc8=;
	h=To:Subject:From:Date:From;
	b=K2HjhusZwMpW7xxubSekrqxxYfgRdrnBoDpAudRKvvRSYKEen2XVpfFCoAgBjY5Py
	 /GfJcAOshB4s7MSuv6pErEkOHLTcxPPEV40lMi9FYYeIxUkt1TBkWW2YPQv7Ug64O9
	 m0d89lzcBC6hUEeXokirjvOEscuYhbPJyPsqLnr9x1b+qYkcOdcnQwPZ4C769K1uZf
	 GtobI7Bo5KdZRid0m55r2vwNyo7R9VmNnjWnH5H6v31EkvcDHd5Pm4ICm1yujaEJYv
	 +ciVUcfyGU3q0CF7ElQlZqCksOyVnIK0A1rv4Pgw/zD0q904b8IqcWEzE2dHPU9wti
	 Wnev445MuMEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E8E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391215360.7377.2298247006147759720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292b0367538bab63513d33988e075a8a144acfe7f2ef888f39dcc52aa6c41f66
Date: Wed, 11 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733912153
