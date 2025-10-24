Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A1B306B0D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295194; cv=none; b=AEnZ6+n+gKNh0ZeMYzNSbQmEuDL+IuYi8N1Okjmb4RDeTZG/oVJeE99l+2KRpAh+p8kBp2MoC79cdDnHlEI6q762IKJ7rDxo9VOGjkeW90aeUh9unevY6SF2mG3eLThTSpygsWxccQlgo8/FSBPqNIgsKeRldvu80TrgujqlpxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295194; c=relaxed/simple;
	bh=KvvSmemHOLSElwDnj8vtPdJLMHyR3hNgC1xA3gd01a0=;
	h=To:Subject:From:Message-Id:Date; b=iYx6kFpcBlAyUOTHI66nWS9Sp29IvHvc7ntUQZGrsyj8uEkVXB15WnTK0P7BT06lxOdoRx92L08Lzk6I1SpNmlv3BbFX6iSgGDtvfnPl7Kl4tKPe1vk4zN/SlFzRbMjVZraNiOIlOa3XQcv08niOdJzDIPvjW+jyzcYa0l20CJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1bzLLka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1bzLLka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28FDC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761295193;
	bh=KvvSmemHOLSElwDnj8vtPdJLMHyR3hNgC1xA3gd01a0=;
	h=To:Subject:From:Date:From;
	b=D1bzLLka6awYMyFYHvU4P+ybW8SDg5s5KjbuQtgHsPE418BzgHT6zFZb4dZj8ha5i
	 GyGzRPLfSjLbaGDyUjgIUTfaLP0hwxFrrofxxZ68WXHVIAh4PGc9FLM94U0J6+7mUO
	 0REpKzdZV5EchumqdQ04ynr2OYd4MXdX9kVwan6zPHoG1jW3JQ+PgNce1Rm8/IEtXC
	 QK+Gs4x+Kkp1w1eNaIxLoY5ky03/P3E9xMk1ZfqfnE+NfmGxRhQUjAdtbPoREJCjM+
	 I2adR9haEha9WyWgbF2dOSdHowMoE68VrtMd7ORROoP0Aexnz0IY4YAq4zvRfkJ3GQ
	 5BsvHGX+hSHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142CCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129519358.30157.3679709670174373699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd649f13b587a3415e59e18be950841f5a307fa48a858dd1604c31a9bb324d73
Date: Fri, 24 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761295193
