Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377AC18C31
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750033195; cv=none; b=ZG6M+UADl++GgZZO7W1LHGUYlfC0MAs2/HiG4uaU2d3WFaubKfxocg+EgI38vuX2bbV1SYGkjL0Vn/PQoX9l/j4blE94CFUEE3aU9Wx0A4utMu0bevdFLAlicj1IDLjv1evb2ccwYBEw9xQIaW664JLRdPNyUspAeWePAFXfu7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750033195; c=relaxed/simple;
	bh=CGRs7sW07Mm4mSVsJXaJTDbyMDK2A4Udu1MLOeA0V5w=;
	h=To:Subject:From:Message-Id:Date; b=p0NCQfiRMK1hyg/L148U0mtaDk1gAj1oXXFPHDdeOI5/Z6eSCYOBLpKJ5JJbxBOU+nE6+5cyWOhIBLeCIDBDK5+1ULo2H+bCT15XpOxSgl56g4rmmRNvDPWgDnkWYHjH/r+Ng97art2kVQZy75RlqLiO/hgYkzYlyuE5rkC20lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFaZWw8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFaZWw8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750033193;
	bh=CGRs7sW07Mm4mSVsJXaJTDbyMDK2A4Udu1MLOeA0V5w=;
	h=To:Subject:From:Date:From;
	b=gFaZWw8nO/x3sG+mDHYLQAhTEdajeIGPOd5e18pxzYKSsZmvqBzR0tCoqT45rfwCm
	 eb+Dqi7k7XstiGAeBA0mmgYbEZwDutkkF59FPrprqA0ATw91Y9xZ1T81DsUCvBT0Vs
	 TE1pAFB08Pa6geXPHrgnAkw6xc053MzYjM7z+2Qissid/4VQKPdcQ8ReydgmlkmKJg
	 uPI2GEWVhlmZBgxKAFCAYCD3HFbZPekZ1Sb2MRGePgcx6yozb/Moz8rsnqqE1JrRs1
	 x06v9nfHnKI7QZksuj3Zi0cfFZ86lc/U3GesdnrHDtFfRgvPG1xXr0ZHQy5Rc5Lj7K
	 yK4vCX6+RoSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F995C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003319358.19473.5231501669458230809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125381dfec98491542caa8acc8d3101d2768f051e72ab28125f475a3463fce38
Date: Mon, 16 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750033193
