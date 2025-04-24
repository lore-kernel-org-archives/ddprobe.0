Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A40728150B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745521795; cv=none; b=fCGrKjEY2Bfb9NIb16Qm9/8VFKFLMbgzekuljW2gy8/BJfmRCv8DBVsguPBD3XpuVyFQHhxZ8Sp2+nqSGUidE59Q+gZ7FU8iqDj0gcgl25gB/Jg+1puFg1H+tYUqwrTjCX/C4y9cqVoyb4k3yJ7lg5ar/dhbUgtBImKjuLXhbmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745521795; c=relaxed/simple;
	bh=7yEItjkM2ujN8bNf/lF14vmsjmdlANeiBUWbwtOK54Y=;
	h=To:Subject:From:Message-Id:Date; b=X8ScdrQ1bJX8Z59dPpRRg/A0SilJDXH+ckZF1StK//daaGvNMgZSq+Pvn7QjvDJ1aBr5hunS/hhrWYrPR8W72luk1njeAs+zC3cyU+5dUKlLEQfyibe5CT2+8V+UVlTvIH/5gB6gicSJsUU4rVeqaMIW/7T1JzYpBjnHE4XtUVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOV2+/NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOV2+/NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D871C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745521793;
	bh=7yEItjkM2ujN8bNf/lF14vmsjmdlANeiBUWbwtOK54Y=;
	h=To:Subject:From:Date:From;
	b=aOV2+/NUuNLeQV6uYbIqvyolwwe4shgQR2yv7sHdBIRxjGF1Nmws0pzcXugJnV627
	 HTZXJC/Q1pFaVvHJ5utjHgFcs/fQ7yyCG92aQ04e4C0D9uTfaDzGE4Eg7nDTrU7+Wr
	 hPcyuOUwwIxLCz060hPpR46dIRa7RdpNa8VU7gEIjSmSkU5Wp8ttoB2M5dNggcWJBq
	 M+hdDkaft4xyri+CMDy9JerO4fc+GOx4WYkWwPgTVsE14aJd+/LZxmu3pC7QJQW0zj
	 Oki0tlnRIdN8f2YWHFlpv9TXM7o2MaJEZYPpUT/HI856lTYTfLXkqlGAegfGEtzQSC
	 3vYvL80F0Kp8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB8C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552179357.29826.13078325774369909461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dfd1eff1b991bb19db3d5fe2533e51540f71aad4dd185136dea647122e2327
Date: Thu, 24 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745521793
