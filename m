Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147A1EA65
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765720374; cv=none; b=qz9YPTLXnYokG6m8+bi9HI0BRygl+aH5V02yshb3AYv2wa/V6sFoGasGJexXkId6kUNWpkXTRvhfv3CbkUw0eN0UfImYcJ8d9O2DjAr55p8K2ZgJhNDQhBA7JEzwjuKd7iNNW9BiRE20zrPnN/Poef/qX/kdaW1mcMGoi0KmPCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765720374; c=relaxed/simple;
	bh=T7jZG4uvokdrcZyZO9oMpkAVS2IUjh9/EC91+EWWr8c=;
	h=To:Subject:From:Message-Id:Date; b=UTrRGxsDIhjpmQuzE/+d0rDq225Lh7KxSj1mFhnvgbmV5XArZUxCIXo8N5ezqHRGf/L98WY+vTRELi8itDCsf1jsLBMD9JscTzk7L7kQCiSLDNQxW2L2SSop8zPVAzwC84CXKf41qO9pdBcP1xGkmkgu67oluViAwb5KuiIAtIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWwp8Esq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWwp8Esq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE91C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765720373;
	bh=T7jZG4uvokdrcZyZO9oMpkAVS2IUjh9/EC91+EWWr8c=;
	h=To:Subject:From:Date:From;
	b=VWwp8Esq91ombHIh6ojF3/K2J4qHUg6WDx5J5bRrS86nA+d8QLKOVegXpOqaQDd/W
	 T/ScSGIhRulexXgGvqKrwBFGYlhTQ2MTQOER+8Fn7jocyIV8FnlMAD3tcURR+cizLg
	 l60qnV5tlpS4t3/r68lVuPcbFHyaebAlCEdj/wM8yy50Ywo9G+3ruzkmlJtCTANZNQ
	 oWWC5c9v7sFUD+FiLjwVoXsf3kjxXZjTiTsssbcdTjmxNtqP04en44IoSOqpOrdy5R
	 rbNJLGEPVJjuYVmQoiTiGI0F6fEqw0XvpxcWXLDX3i2puAdk1B96SnSUkdFe4q2mz3
	 faJoRajcQ/sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B171D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572037361.12870.14022781951286817000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcc9c0cf79758edebe80f5380f61b13bf874209bb0673d4608e7967abe38c2b
Date: Sun, 14 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765720373
