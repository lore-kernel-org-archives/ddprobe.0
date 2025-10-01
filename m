Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756A2765CA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759330194; cv=none; b=cbPhNIJETFiPkW01XCT6p1+32LpnJpZjgkJvNm8FLUY5qNAev1XJNhF06PrlsL4EI84FpunUaWC89aUoz+htkiKPt4lcDEDsq+bTMw05RnB4RIVXaMNlDVClrPCQgsOOaBwCNGZD2NlT9iB0m38iOpq7bL8jrTbHxut2Nz/U9Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759330194; c=relaxed/simple;
	bh=w0h9m+ITHSlzRtC4UnO3ZRNnC37pVAQ1iuSa3vaybfs=;
	h=To:Subject:From:Message-Id:Date; b=M7rNAw5kxYO1KzPjs46jO58XXpo7pcyAk7liE29tYusS1ka7GwhOb6bwNISVlyDnrWG9ppV2VqXjeuYHXRmLza63Ts+H+xvSVAzJYWG+I/K/c8RaFGCQnrB6UEshL/sUnuYI+l7IylTEujsPSQWp0d0OcYYu+cyvLUj5+ABepn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7L0XhlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7L0XhlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B854DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759330193;
	bh=w0h9m+ITHSlzRtC4UnO3ZRNnC37pVAQ1iuSa3vaybfs=;
	h=To:Subject:From:Date:From;
	b=t7L0XhlHyO2hRltj34PSgL3+aZhYYy1RqwS/Daq/t5tnJ2izNTvKrKt1QKvt9PKW/
	 zC0LYiA0ffVTjrVyfkYwLFoDcbyYxPR0+rFlc8vcKgMhHoWS+u6no1sUtJP8FFoC7G
	 Phmn2oSqjMlBKX2sV5HKTRjzOaYb/5pNtk3JZQiTJwzbEXzvwxkBTUX2IVAXdlDa1l
	 hY4HzRwGSjkMUfrEhvHU9mcbNUC2vf3fPHj36DzLQ1XoSpK+ME9GMp+4p2f0Pe2SrS
	 uFpS94nuKNBZO6BdiWUId7e5xt5QrSO1sMvFoFHBSkCh62EBhrpPhhM6SzYg6/dtcM
	 3pRzzilEhAndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E08CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933019367.12894.11973859344160510109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db16e684c44398acca07e6b49f4718c30ad4f876e676284a23291d4295a26c94
Date: Wed, 01 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759330193
