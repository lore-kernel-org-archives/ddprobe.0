Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394292C2ACA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745353795; cv=none; b=KxtPUEvSxJdTfb66AWlvOI1opAvpdWMcOYa8hNcLMui4OUtfIPAWiubTSt1TmVCDxfbfhMEL93/ZkgRXpvwqsZSxzLBN8pn37N/st1csyR/sAc6fVtfuMe9vzaPqZGhbbpAtaTR+XD8manpk34GeZdCfx/stYaPYM1tL7NPsjeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745353795; c=relaxed/simple;
	bh=ihrk5Cfoiq5Mk/ibVERb4vKJFpHiPGNS9w4wgBOeo8g=;
	h=To:Subject:From:Message-Id:Date; b=kf+MF6qDcz7W+jZsHtYpyQknzGNtJjUsHTmoHe8AWKxvaMh9J95PUTkH1HZoUd0VEV49kzQQ66bPinVT7xjFeq2PV314kEy+LRlU19Zgb38dVIfD9DD3fsEHNyaN3v7q3QSM27JGhN0aapY7fiZ5D+cFSCL5G8U33poxsl+XQ+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2+35x/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2+35x/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6246C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745353793;
	bh=ihrk5Cfoiq5Mk/ibVERb4vKJFpHiPGNS9w4wgBOeo8g=;
	h=To:Subject:From:Date:From;
	b=h2+35x/KPqagQjhejaEUjBRHeR5ZdKxcDVVg/0u3vdnm05tLybM1H+hcbXUj5ooqw
	 Ru7vx9eW9MI4YT74V8IRud4wxpyD8dbxATEUtUYUMPlPzoTuEU8uUegc/EMJWTJ2Ci
	 TXZOdvw0YLVMZhHP6/gmWrrI2NoFnirfM5eSY6hHgy7C/xqbNPnAR3LskY4xO4ieaB
	 +3HCYj1teLPJP2FCpx2EaoJL6AK/J2QJ+2w2K6knpUo/yypGjR/TpwbA/ixwL+UsvP
	 iA4yf1uxI6kIGV4HZGiP4v8htRBtQ9ectzTMCVe513bglGgwJSxihHSm4wzI//i7XU
	 aTqGqD+EbSQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A013BC369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535379364.16969.596991082657004530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091cb2f18d74d0b169ee305f6fa9d50b5682f087cbd63f18f039779d30cd3d25
Date: Tue, 22 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745353793
