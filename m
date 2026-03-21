Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A03C253F13
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774078494; cv=none; b=uX8ycQRekf4RyunrppEt9s146AiFNIt5GxQcAes+f/K4kIlFk4hkCLR5Zw1Hd21YHuBd9jerj/dJmTp29Dg1etLoir39GFGiTab4SSI2tb+UjnhgSeaDHFBrYr84Z+ATdkkF3ETxuorby+tma+e5DFPEwfFRT4iyYklaMeGtsLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774078494; c=relaxed/simple;
	bh=24wXV8CL2VTt2xpvckAQJsS7pUDC53kSX5hP+sHJgUg=;
	h=To:Subject:From:Message-Id:Date; b=fINkHMb6hfZEar31/zlypQksernh4cuViSpVdjECd6PZ71E0NIjwZGkOcW8CnKLVgTKph3jjh9mF5BwQQJoJm/qPfD4wL1QwaVdTqYaheljBjngkPKi/2JtEE/qPKfpVW4AHJtJAuVXX+0GXRQW/d27wohnPdMo14ADC53JtVlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM4MVTiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM4MVTiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5763C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774078493;
	bh=24wXV8CL2VTt2xpvckAQJsS7pUDC53kSX5hP+sHJgUg=;
	h=To:Subject:From:Date:From;
	b=IM4MVTiCBgZeYf+PiU0orYXBfGKQe67FfYJfxziXS8ekjt3RLydr2De2GGvHdsuJx
	 GVw5UpV43tckKWrDQw5cnur4FkxAP3+DhUGe8ojZHTVlhOsEK2E/cYGyA05PDsYZAr
	 WPWmbwWeTBlignXLcQq6IgdOp8ewBITUhfYecr1hE4zKiIZsurNJSbOQU1lh1l7obx
	 Gt6ZY7gXFiPCgtTYolZwGAhHx+42ot0PnEY7SR8i+alFWEQmr6i6UcdxK7rz9RGcXX
	 RKXbMKzJRSI+RO5vLFRfTHsK3NBkX5CSP/5zMBMtgSDYOrIzejA1qHGS2GJB8hAN7L
	 +SHvrpk0pJVtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D11093174
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407849357.24590.16530081527419840390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a71fd4cd4ba2a3a5ffd0fd4ff58a99b85b11d2741cd40669ad7791c3e2ec6ea
Date: Sat, 21 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774078493
