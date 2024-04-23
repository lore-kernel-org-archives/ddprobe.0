Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506EF56444
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713863423; cv=none; b=WDMo0Kw7vHeJqJieyceHki4cbph2smEIMtE7HeVwvVT8OQsEwa1bv2C9G9UHLCqc8WOVV9Y9n6cxAWzXkmf+a2khQ+imBs3chuOQVqgLS2BilvPIujz0H6Wl2kxXZJR48XzFelMLeK4uRvoshxBnMrMkive3iZ9FAeu6kdGWZX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713863423; c=relaxed/simple;
	bh=JFZyWyN6SqCTkqBa3nk0vgB45G0D8Ye41OTJQRcZbSo=;
	h=To:Subject:From:Message-Id:Date; b=l18eXmDJC2DuoGuH02WmUNicOua/QlZMb2/Zy/i+UggeJ28lgQwX4cA3GBAyax7304KdaUbSg4/h1hBYs6y95UM3YfL7bIyaDWZ17CPaP+gpf4ysl+A53+7tlktDyJCffffLc0E88LHj8Crylw/kochv8+VWI55I3qvfUVA0ZvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR8KPoyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR8KPoyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEADFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713863422;
	bh=JFZyWyN6SqCTkqBa3nk0vgB45G0D8Ye41OTJQRcZbSo=;
	h=To:Subject:From:Date:From;
	b=bR8KPoyZUpj0fLbUTAkj4ft6iCx2LLhSmlVt2jNMJpKuEDfeKFCum9klDyDR9zyq9
	 PIMsT6W39hDucuDte0k+HEHyJZ8vszj9KGJhrGhtJYoBRnkbS6YMHeSJ+GJGJZ8jrC
	 9HJOpZONGKYADy38xIPW6z8g+7FFB+8/8XXoeBV2jnCcAANxlKrZ7ckzU4WzXPSjYf
	 J2lpslyqTpocvY/k/2PBi5By7LDZe0l6AlOLwPaE50QPFDCh/bVBPhgvhr+LWkeIDa
	 h48YvTQJFj/Zp4RLC2Em+LdsMAVVO5hlnGNnDoK0eWNXIGSAaKWb7f9dpR1Y9wz5mt
	 j4BOtGb9YHJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88A4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386342281.20142.15508571653262219417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e6ec375e633b655b91ba41bce8c16f981bb202465fd48c4d2b5a77afe613a3
Date: Tue, 23 Apr 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713863422
