Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237A423AB88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776524854; cv=none; b=antMYh2cIAHycCP6v2sEtFtom3+9/dBZ3LTDoJ03OGtACaA/784iS3wMA0u7n4ORcagrZBNj4jjoV0eMYjYb8+YJjcJqzu16iXmyEp/h2f2uw9LiNHIMvWXFFHs6OVuQ4L34T7dZTQOYtopAc+7EuUCS75biU5CYIuGCWPZPPH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776524854; c=relaxed/simple;
	bh=OuhHFU/xN6VqFrIeNYAgGNTpn5DVAE5jEg3TGpDGmnk=;
	h=To:Subject:From:Message-Id:Date; b=VAGU2puWwONGfZsucu82yXuZrNGeCEAWN6Sght/ckF6noh/bjy5UuvE6pbfb/8fwmLdPfSfh9LzXbm6w/GsLpCmm8a5fQAJHygJmDmXpZYumdfnpa/elt1B0nZnhQCT3ePTcQWmJk7GopNMUlCQy5lcGE1lbLTMDlZLn1Kh8t84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0zx31FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0zx31FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEA9C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776524853;
	bh=OuhHFU/xN6VqFrIeNYAgGNTpn5DVAE5jEg3TGpDGmnk=;
	h=To:Subject:From:Date:From;
	b=e0zx31FMf2Q4SRdOESP9s2gO5+Feptnk0oAhsc4AKF7bMm16da3/ONVgad7Cc6uKI
	 EY7wSPoQFsGZ3E33U5TahRgHDcnp1E5K34m0T/bN2PI3lKd9vUpf6AYqt3XhtTSgts
	 v6GGR9BPncWOwK033A6/It/B8Fy7lr2rsIqGLTAaaIFRFmZTWHYgH5j3YtKH8C9HyC
	 +h7xFOV1P+8jIBz4HjIunaIL5oMgO4erSLpvssH5nEDjRYZOD0DpuKp1wIUYY/OVS/
	 Jmj5ctTKw5T3b52kGvBiRSoKHsSahQcOA0i/uaqa4zZxJQzNVW1vyIqr9DHZ/MNbhP
	 LM6Vm62sn31mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9669F99C86
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652485368.9121.2008040680364829653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b9b722f6b724771d7f80d1d22069945ae88f902210d0ade145d8044f33d9ee
Date: Sat, 18 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776524853
