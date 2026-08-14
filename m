Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E323644A2
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786704635; cv=none; b=aQpkvEt7ABesuSm4yHVLXvU8k/aNPOX+Knun4GcAAIIc8AGy6zGquUvlLP2rlwO8Fgv63xuVGehW0ALeBEUZvhjEyrk20mvjdrmyqV+zGMLXg8ZKTzqgqHlxDvRyFETuTCF8nRFw/mdARcBwTjJhkQugzss0XNHsLUbECe/sWn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786704635; c=relaxed/simple;
	bh=2C8vkKgxhGF4e5E8sV2+9xLV9l/iW7HWvKb/l3MWpTw=;
	h=To:Subject:From:Message-Id:Date; b=MvL0lpcGInMd+r/+5pUu9V2yfbZl+gR682K31QrwpNEpZutFt34Osa+OChlXPvObT4iSN83QBicbufOJoBgRbKwPzl1H34L4Jyvqtpxqh9M+MFUMFgB4fIt2DBz+RFyY1eokAun1sifKiGKsSX5IjD1Pqci6SxMZPcFgMWu7/wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twiw7CUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twiw7CUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAC9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786704633;
	bh=2C8vkKgxhGF4e5E8sV2+9xLV9l/iW7HWvKb/l3MWpTw=;
	h=To:Subject:From:Date:From;
	b=twiw7CUizTV7Zr1TNbz3alAkRa69P2L81LT4U7B6CpNfWRlQuziP3BxzS26U/tY8l
	 31UERYnwkurgSQoBPHLdzFW+B3KPoFPygYb+UDh46YAgcuYC29srPFB6uwu3e+vv98
	 FYpjPWZkVikltP0e1O7QP5Y/72JxGAwZitiWJA1aR+nk0IP8YPA0f6e5otAWwmHOxO
	 S3/OmIRAN7qjteW05kndZ9IzitAnJkVf7hMcAvVisyBYrxuj69kfr1CP66bjxLOzei
	 tJlzxN81YwDWXfs269Zwj3t0h0QHeDqO6D94579XlN6WxTQtncjVL4v4xeTyI+hxmX
	 TYX9GVNUO1E0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C8C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670463368.23262.2997212071181045767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564cbffd533059462244e6e58a709c7d227f675f4222fd79d6f909e130d8e6f5
Date: Fri, 14 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786704633
