Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2890E2FF64E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763590314; cv=none; b=rfIkKST5nS27WztLuEFAT6WozJvhCWGEKOZtrhUruZZskS78xdOW5HYUi1bTrhJ5HVG2lmdz5O3VJKQD1q5KvlvYpvGVJjpovjiqKv3Sh8P5bLMJpJHXOWoounEX7Cu2JTbgXGVmXR+dB4ZYYwEBdZyU/URoCQtIn1KqrGOjLFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763590314; c=relaxed/simple;
	bh=rwiz81pFxlTt+slUgQU2iO0RgczJ9FxNDPIXoB1BD1U=;
	h=To:Subject:From:Message-Id:Date; b=aoBilkaTUsZGUgZQ4fKAi+XIRHJ/CkvN5DuqFD/MaWFd6Wjylhal5cuTsU+iuE1jx7n0EGTa0WujKHpiFYuWt3EwmU6OwUs7VMtmPJGNDdJSxk3EeQn/SnE3OGLPX43ulfzpkIN2cIq586zo9bWR0o9xAtLM6mT4esitWxuckjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl4nadbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl4nadbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7879C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763590313;
	bh=rwiz81pFxlTt+slUgQU2iO0RgczJ9FxNDPIXoB1BD1U=;
	h=To:Subject:From:Date:From;
	b=kl4nadbl+Pzm2K+Q6TCdvX9RbdBNrPUbVe2UbEKNCOsJSJwWM/tt+zELMESx/oroE
	 buVQaXtXskJ3tbvEIfF57Yz+Nqnmx8mUbM9WyIhjiq/L92znquzXGTgdl5UwLKMXQT
	 QmiVE4/kMtYWKEZ/12H+iL75WGg13UdZUVuOizw7CnLOv/bseqRHSnC2iMA88KGdRr
	 Clhu6KK4ioqr8FO+v+zhSO/LhQAapu6BvOBYV1u0uzCuy22nnFaF1RwokZ16QIwGuB
	 dtekY3dCqxAmvQfH35ciRtZ1R9wdqEZ3CR9Lg/t++/XYMb8Micgs51NAZ5p4KxEPY2
	 QbHy05B2XnYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97562CF6484
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359031359.29541.17947160728733158436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051a5142d2c76a65d82a86a06a16b823222b92a2e598724cfeae2247c126e784
Date: Wed, 19 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763590313
