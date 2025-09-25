Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBAF2E7BBB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758821994; cv=none; b=iFXxa2WxGs3zb6UH6Big9EYZPmqmhHiIBdUdjpxTSzPE7/iAyuD1/rhxoGyQXUpy1Z4h8frnBQGctLTjOkY0XXXjIXMITSxFyujxZSu8Jc5uDJsKK5zHW81EA+CnPKY6rO228Kydwr+rg5Xnnqj3HxX3DeJOopMWrSixe6AkkZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758821994; c=relaxed/simple;
	bh=Q66jt43yOkfCGqNWs97MlpXOo3is+WRb8VNCiPmlQMc=;
	h=To:Subject:From:Message-Id:Date; b=GvN1208v2wrv4KBBTEwlgL4+O2ZbxknRT3ZzjPngLXLwXWJgvPsl9qfLftc3YdF+EIwo1naVhhppov+EBfvuDUlBYvmyVE4ghJY4W6AfYKId0KCn0Sr5WcsYqxm0AyxY12EIaWTBQ9uQK4qK4/ch9RN4kwH8CdD2F9iIUwVty9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWgoaABM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWgoaABM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758821993;
	bh=Q66jt43yOkfCGqNWs97MlpXOo3is+WRb8VNCiPmlQMc=;
	h=To:Subject:From:Date:From;
	b=AWgoaABM12KRNZKcfUZPonhmquq4dftdha/jsjlq8+4JfwSvZHs816VyZ/gTUMMv1
	 G/XSLCByTShra3TMIxre8zX4H7ohsZJwBntKz8yUbWF9ty65t5u3ddLkolJWyia+Bb
	 ofrfN7Yrt/ElzUrlhCutFC2hcxWf5suEVem6Wa5byLGC0ylxjHGqIW6TxoXBuxBs45
	 bQ1Ct6Hi8rMYZ38C8WPCLKy+iygX0j4bkS6gPOFLEobJ5KpqV9sp3+aNBrfVfYQThJ
	 UlbRY7kwkzY3trnI7cbhNqdEFwaKBbYOM8GQQKYOmFJ8xy9h3esKpMsS2xOhIjX/nu
	 CUgqj2aGNckMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9843BCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882199358.11023.10045061825523807316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd8e47e21aa80bc10d3ccd68b90b6207b04ff730c7920c67957b3e7ae30fc77
Date: Thu, 25 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758821993
