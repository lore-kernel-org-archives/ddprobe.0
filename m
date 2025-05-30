Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E8610E4
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748587194; cv=none; b=P5eUc4fA5abSjbxEZiMJpOXxKo59tTyXRAMLw1GA7W4/8I27mkuzc5zNTp8ur4r5z9oc6htmHkGP5Plkcdqxir+CvLcj6I1hDZ2ug6Dw8fk6jywc4d35wLIpxFOaZoB93EXEkWQIC4sWgopBNyqSVPu/xJYlHgYK8wnbe8fM7J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748587194; c=relaxed/simple;
	bh=OIuTOZLQC6hXghB8ew3CUJtCvbuYc4msPDnEyHxqMOE=;
	h=To:Subject:From:Message-Id:Date; b=VVPxqTAYM2540go3AyGvoJEFKpW4HPGak83UlgtNQvmxl0gDXjEJGZVmNsafQyO89Av8Jr6nJRmn1YB0MvIolWNWzHtZn7KmTHRVhBM/GWLhR+Ujy+5E1CFUYSy4VI1IjLH8UMo5LKNMcm4SwkRTqmLL7N2YA1BZzsHUrRYJn6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZ/bgp/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZ/bgp/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748587193;
	bh=OIuTOZLQC6hXghB8ew3CUJtCvbuYc4msPDnEyHxqMOE=;
	h=To:Subject:From:Date:From;
	b=TZ/bgp/FkpPuOtwk4MGkwp7lSFCf1E8NALcHqhMhOllp4rUBcOgMow3nAwaY/kAS3
	 D92tIjTVs7UHFjaPClcqX7GX2e6h7EtPv92zZD1hocd9NN8fuewVca/0PdedSk/m32
	 +mad/b8QtSJpqrR6L09/TzRe1xdBQjEtIiTNjhCTVFx5Pv7hO60dCDOj3NNR7qonP0
	 BPvy/N4uCOLVxPWIxHLnPN9zvE8My735FU2vz/ZP3g9KHxJp9FEDh82GKZl0kML+Zs
	 FdPspA7NA7lEtkSBfzYtgRc0L/Xg/oTkP7KrWBZ+6JWXURc39Ha7oG82S8O/F/ZF2o
	 WB1Tas1UdkDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A60C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858719358.24289.7283096210264669758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c9eef0b7ff2791acddf658bc7a086e34fdd894d9b15f4254b4830d374ebae
Date: Fri, 30 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748587193
