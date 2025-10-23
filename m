Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6C3043BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209994; cv=none; b=U+uahfTf9xejCmiTHm/BPTZuj0DDoN/+vA/hIL0/PCAqMOruEtnu10G/rGNdiGPA2p8m/Ua+eadPekBZ63nF9VlUTzskDlujaGoezz/MdY9u1EiANGW1Sb/N01m92lkX9bQF3Jy1v8QRfYhNzM+LsAVkkd8jqIclwubp4wJzY28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209994; c=relaxed/simple;
	bh=h0ft7J7GE8EQ2xFIZTiqikmDe00EoFcKfiHR/xVez/Q=;
	h=To:Subject:From:Message-Id:Date; b=Dn8yh1Pzm1s2ci672P6EJ0AAxi8qx+DYYi1+mV7BuWuYJeHaMyLupafLXpu6angMNZnqOxjk/759argS+NoUnajXayjLonxkuOGK2Qc9DaCFpkGdI2/g6hh7YalKi5vzb7j8/9yMwFJyzA63vMUJAnP/MH7prLIqSyhm13MSvBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv4H/NnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv4H/NnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761209993;
	bh=h0ft7J7GE8EQ2xFIZTiqikmDe00EoFcKfiHR/xVez/Q=;
	h=To:Subject:From:Date:From;
	b=Qv4H/NnX4tv75XeUF39qP8o/SAgvZS4aBxhyfWscdweeeNHIcDYN2XGAnXPEnZwZG
	 j5SyemE+43g1LvG6yt/34kt5GNrjf+yfDzAQuftxUeEQ45Dxu0s8YwGkBFTW+lagPK
	 3AlRweCjHHnWBxAGWRGpvrkeA25pq3m6HUr1jVWwT753BiplN3o6BobhBPEHRBEeKJ
	 1LkVC13wr5CCy83jGfDl7duhlGRCwJT+zDbAFJCZV23WX2pwYjkpzqWOkFQLacEANo
	 NQiXgCMw+XXFvle93VPeq7hUyGDhZAkKNcIC8OwaVSuaWKt3CTSxwCZhGz3j0EZibk
	 /DZzbPOKBpHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F11CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120999359.19848.4945652872443036430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfd878b07ab3b5717b2f12adc6d55f74cdfeb004b2796ddf980c3b7c8e811f2
Date: Thu, 23 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761209993
