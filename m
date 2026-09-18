Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B174A9D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789730434; cv=none; b=i85A0q/5sXUjpyjIm7shIuQ3FEw7D5s5GZm+iLnCbMwJrQ0HMyLHMFxHavAUDh9wnE4+QpSlbO0ewEFIBOtGmp9h125SCB1EsH79/5MfP2PVBDByeA31r7p4Gjonk03zgZsMcY5sJ6sM+5Geyu98YGr0lIinxEKthyCY3yoByQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789730434; c=relaxed/simple;
	bh=1EulFW8czpCQSf4KM5i9E1IAaZ6ijWzkUGtTmuJ0itw=;
	h=To:Subject:From:Message-Id:Date; b=ru05VThU2rtwAkLqzmm3HI0IKP/Jjdawu7yNGGtg6P49rHy40pfSIrO7JCKc/4uEvE8mvSZ8n1WmemqI0TFcXkqcoo72Nda7Fptq20TjM2HUzD4Q6/XGF9S0X2Q0zL3L6nUj0C//43Pa9dSRdvAXjcmZ7FXgqWMUi/mgBY+ZkGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3FW/0zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3FW/0zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE429C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789730433;
	bh=1EulFW8czpCQSf4KM5i9E1IAaZ6ijWzkUGtTmuJ0itw=;
	h=To:Subject:From:Date:From;
	b=W3FW/0zcjEOs5scdYBTbOComSxLnUX+WHck6A6SY4Biimlz7SRwjpmJe/BMlE8uAy
	 b9j/D4/YdDnz20iVGQzqi4k7DQGvjhvJwszlLrzVMnQMj+c1xJY0k0z0K99vWPNlGU
	 8Be+TjQTds9vbrVjaa1iOQ45uoaiDOgiFzPOuQGyuLVY39pCo/88IZCaIsqOi2WiQc
	 +o75te1wBihqMWf5EwtfocB07RgmGZhFHxzFPdCjWzJiKqK3PLaqGCwgmR4ngfK2SF
	 AQ8Zmf6URVV0N62ccv/HnTFAUdWC8ozTeVFIERppd++omZwNhgSXqCrLm18ISJ7flu
	 ogjerCvYa9u0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C21C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973043368.908.9869836391684517154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0a7139e334c202530fcd932076b8bbc75cec11315e7319234afad6273d0957
Date: Fri, 18 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789730433
