Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DC23B2AA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768746834; cv=none; b=cf3Z2BrPT33inYI1eKzHR/9RLspxYUOCwzO7FXE81+NlhTCf9hp9hYb1cJtmEncWbTZfXX7bjYRrfV7BOJZdvF2OdpJQnwURFrVSN4seSNn5esJd0ppo+9RwtiY+yXUN37DrkKWbDGfS7pVa3+0in2efHEMGBcKbySf4OG0K/EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768746834; c=relaxed/simple;
	bh=+gMi5syTMkQXJUIF2AZElixjMpSwcAevAoq/bDFCBjQ=;
	h=To:Subject:From:Message-Id:Date; b=MPZ09oBTYtjsRNOaLsxJkZN2JMMTnXmvOXdGjSR770YKLH5vKvw2f3Wg3JP+/GVIUNwugPB4c8h+Vsp8pP8WmXoWwj4Hau0SI15f4V35+CHK/nmSOXU5DGFiixfFHkAg9im43XO/poOzhzCLLjOMp2r2VG2gFXDKHRqNYdAFXew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XShrer77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XShrer77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768746833;
	bh=+gMi5syTMkQXJUIF2AZElixjMpSwcAevAoq/bDFCBjQ=;
	h=To:Subject:From:Date:From;
	b=XShrer772T916PAQnbxxgJzF/1kVSixCzGJ1KzfWAgsH4zyuU9kupfOyxEfArzlQ1
	 3w5ICUNJHvrbgOe15H8nuhP4A+i+92f//8MeKz4j/B6Nn8NUbAH+dHLV1gaxsqWMRJ
	 CmmUkEjnBwmwYDQS/JeOdzUBltkAw/CYBIZCCMOxrDfvuoc3a1DHUBSDPB8RVjrUWt
	 So5DU2uG8rvXKnQUu8BJ1NrdaEenHT+IVbzMtux0/pykiHvFczTHCeYAvYyG3EzHcS
	 hoBQrmesIeJkY1M7NMpU1kGv8BOacOiPyh5YMsbe/wRP55Bw3U3d2eurMUiDVBI8cn
	 Rnnya7DqV09tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96449D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874683358.5046.6132162029119699670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0090f68d9c3323c7fa613e9845452cc89ae4dbe48cadfcc10b993fe6139ed5dc
Date: Sun, 18 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768746833
