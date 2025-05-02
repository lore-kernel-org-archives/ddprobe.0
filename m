Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBD54A32
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746206395; cv=none; b=A8HBJ9ExDlae0g45Yf6l4C2MlUyJBPc7bc84w9DHjfwjim9lfSTEoqyroUZYVO97BmBwHsgYu+SY4Dq8O6uAXayH2fCCYhkIzby7D6OpzzwcJOgE0Yuq2RvwupcT05kJuTGkqxqxftufsp/iQW+XQOKJW/+ogCEIzkpbFETA8oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746206395; c=relaxed/simple;
	bh=2anpyLBPhVGPjrNLRWi3aC6FO53HiMeEtTY3aYCINGs=;
	h=To:Subject:From:Message-Id:Date; b=QTmwibqYgokUTbr1tnkV7145YqkOoM6D7XKOl3ewjApm9eFSUcnLQB2/XdPqy/Uj44/9rmxKSvK8q/eVdzE3H0jM0Y0oIRuVMbY0Io5AYzQkUJt0Io6M7z5uMZAlilzhTfRrV9erM3c/MTvUTJREUm1JLtLsHypMNmomttrCwFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwWWAVQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwWWAVQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746206393;
	bh=2anpyLBPhVGPjrNLRWi3aC6FO53HiMeEtTY3aYCINGs=;
	h=To:Subject:From:Date:From;
	b=IwWWAVQ3CqvfZbu6MltjskVJlm8rh9zXTycni9BUTWglgqfLfk+uZ514UbmLswbP5
	 s6sw4F9V5ZPE3irwJ4NbVLEL3mvO4MSllqGDZZhAUWTyv9wbYyWRwuhYg1Qo3iXfdO
	 9WYzlxS+uhZHC4VA+EG7NyogDFM58nOSoCj1JF3bnaIpDzCi14LDYtxgXC1vSt1u0M
	 EdXnz2oqg/x182bcoSNviQ2FSHqyX1oHRdGZnvs5STA8w29VSWH6Zg7zN5dq2Y5vmS
	 Jl0Ww8EyQ5p8NfI/y9M1rSAwkvW+f0KEJQrlM0VreuGaFNgEwbaNIKzi8m6DbqBWYw
	 uPUoMV87zdoqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB03C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620639357.21298.9003888232346270712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a13131e0122a3652993f1a53afadc08d6c51b8ffca67dea0d76882751c0dd1
Date: Fri, 02 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746206393
