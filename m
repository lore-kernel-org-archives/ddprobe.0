Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409703B9D81
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788291634; cv=none; b=ra3O9QOEY+2aiQ1D3vdBygGBRY8F23aDRYD7/ZXy8FJAkWBh5UickPI8WPExA7lCCoMKggEmKC2w4/J3YOlCC1IRTlpF0FW41RDSnknYgmhnt7c9+DarAOERVgjqcBvGIcY78BTGM5yCtXw+9HZR8drZoI/JfufLWwNJXaHMD/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788291634; c=relaxed/simple;
	bh=huO7ODEQzcPLb0QH9P12lfa2LkwC7oK59VVj0xa0Lfg=;
	h=To:Subject:From:Message-Id:Date; b=Y92AGGmUgqvqovfdn88Zt/exnEX4xD39gUhMlA0i+jslRGNIDTlaO+Qv4x/t+NHnOdvF5QQZ/eotHCp0AWE9GLIYWf5Wf/SmJXscDrMRKEx/7MEQkuzvGIz8UcIq2D8Uqgyn4K6Ig5WTsMrdkglUery03SudkcM0sHM3ylt+hFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3d7yhv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3d7yhv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D223EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788291633;
	bh=huO7ODEQzcPLb0QH9P12lfa2LkwC7oK59VVj0xa0Lfg=;
	h=To:Subject:From:Date:From;
	b=a3d7yhv9YIRPl6vj0e+XKqZRrfWe4jr/YFmPxzYZZKCka7EFa5vE+o6BXKRcWwE2K
	 0j4L6fAsyX55/85r+5WsS5cNjpvVZ1eF7JVAEJcLRM5K2EqNQO8kD7vQG0w0rsk0di
	 Kxe6gE6FEeJ4C3egLBOL9yAXYIZtuEtwTkZ4Jm/nFpn91F7FPJJt5hGKYKB9CUDmI0
	 s0qWivlyCffPBWMhQHw/w715pBT0cbmwDxIPH5Ttu44N7KEtpsavI6AKaI6aw71VbL
	 YaTcKLGjLM505P8YGp/VvmGLly5RagKQa5DDwCVNtKmeL9wzoobElc4fLDAJk0h7jd
	 ebSv0bhqPKz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC953C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829163369.9788.656675495112519251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23298e58d39c4f91a792b98692256f4f2715487488e2daba9d451da824df049c
Date: Tue, 01 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788291633
