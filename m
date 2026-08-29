Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2243F106E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787963434; cv=none; b=BBO7ESzlGsGpygTjh7giCLyTnHyIXfv4MmWK6aitEM3j9vf3TE000N9UgZpsY9akTMY4Mn42j/ywMW9KvYiJ2H8AJomfGSkYz45SctRfFQTS8KL+o5314kDhQdeunQ0pWA1DYst+rWGWyDsKAcQyzZynqn/6P3qYKUx0/OjdRHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787963434; c=relaxed/simple;
	bh=MHqqnXjY7O0x5gWdggWc100LgRrEVDl6UpEw5zAwB08=;
	h=To:Subject:From:Message-Id:Date; b=ueg2kV0PHij7bQQIVUpgYuRkRXPd3JaLpMSgr2U+jHID54x4LWthrxeDvkEg8bIdv+GKd4P44HhoOVGUV0FWTeStC8PKW4ZSO6gXFxW+RZAttC3XlqxzROduXGTApwn0TFm0FDHtYenJNuGsNhtsyAz4fdUDpKsSNfWL8TNa4jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9Jzp/ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9Jzp/ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87ABC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787963433;
	bh=MHqqnXjY7O0x5gWdggWc100LgRrEVDl6UpEw5zAwB08=;
	h=To:Subject:From:Date:From;
	b=F9Jzp/ijenUKoTM14ROhZH5p5iC2v5Pl6vRCQr8AqB4NIGYU1U4ediHdqoiAXF9sJ
	 DjdT8zn2b1KL5G+mtuOu6T3HROR4Tn3N4Y+nevcjK39qI7oj9MeedkbCcSxXGwVzF+
	 yY01obUf3hNk0Yiy/RRF7NC1C6ZoNwCqJBjXBfvnLn9IxE6ldlN+ZvvZj8Nl+Q+sV1
	 qZu3G+wl0ph1m1f6WS1KYiqtATlClv8zeUW8I2GiD2FDg2sFy42bC0Zvq5toVpEVZd
	 KObABnW2cPnEecn0/ltGThy1NPX8JH1YObEmHLR8W97PhGENEl5Wo+An03Qm6d2p01
	 qG0Uhb7LQB1LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0404C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796343368.20768.16727038623749253557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b312485003157d14312ef35650d7c07558d5f06e0bf16e1917c0b6fa7c23458
Date: Sat, 29 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787963433
