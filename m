Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5D2DC789
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791617434; cv=none; b=IUZKP8GjdHdDdQzTdrmAB8P0dghXfWjGXiaREkOD9f7hf/dwTjEuGAlj1QASZrGu/NnphzdEtUjksFPNLOvP7hnlocMz439tXdYNmnhVsmwUWVRZw2vuNu8pRTzgF29egMnMl6TDrXNAgM4PCZbxwsY8PlXF8wTZ0ClnkRq7Q/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791617434; c=relaxed/simple;
	bh=8rpVM6amOif8RiZ8XOGmy1W4EMCUT/VTQsbDmK3hUhI=;
	h=To:Subject:From:Message-Id:Date; b=s6Ez+M8KHJya9DRaPReAy8C+5Y2L97lrzDw3u4lR5WXX8jixAa90ABlpLMaCn6lb8RwocnvMOWuvxIyOagnri8/5beCnFzejxaZn2/yLPXfYpBvbIgChbCPgi3Am/RIl+RG7Xe464zA6vLkOKUrgWIYQbA8qUDPoBcA23B6qpmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKpPPzpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKpPPzpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B4C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791617433;
	bh=8rpVM6amOif8RiZ8XOGmy1W4EMCUT/VTQsbDmK3hUhI=;
	h=To:Subject:From:Date:From;
	b=sKpPPzpViey+tTdO5SFLghgv8drLkRn9pgZl9erjrQnw/t8VGPYUTuCUVxIhHhbKz
	 QMRT32bFNF1ZISHzECPVCRoMOQVPBiZmbMt+ea99a02sTmnP1UClTcaYYOxaZ8mvCD
	 6g91PsU1ls5cOYMIVUz3AT2fKKTrSr4fvt23G/z+RTA8NKrTsx6VYkvyI6zTuGJzIY
	 Gjr2ZI9eQQG/4PBNQJIwdra4jwaMpaZs/wC6QkDfeh+T+prl3QfyImfOv98gkSbOKk
	 bS8OSlT1CWfb7FS4UTtl/9SjA2Qk/L1gzHDpRQnofoMCWk3fKuEwPYgFmYb8W+tdqj
	 9b0ljRD/kZATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA514CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161743369.9038.13854742405412499223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833b1a8d67f2c5c58400df9096f9d9bcd5dc1e51f7e1a435d083333a42cb7310
Date: Sat, 10 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791617433
