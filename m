Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150443BBC1
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730020554; cv=none; b=kfyqqWZrPAi/wh8IGuGPbLkUY1vbasZ9LXIUcsSKx7vsJPHPDy3ZCYkC9xwJK4aLo7FABaLK9+HzUn/9mdWqontDc6tGD+mDGH9vzs4WN/DFYOu+dqhwL7mi9X/ec1BnYoz0gr2y0Nzmktxm0UBBirtHbmJKJNSnuQsuaoA6+zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730020554; c=relaxed/simple;
	bh=+tpmCqKW0EWg37wK0HoSgd6Yb1dDSyYLyJnvRsCSCTk=;
	h=To:Subject:From:Message-Id:Date; b=L+aWyjzYufAhI6KW20M9Nc2GeBrWR5NzQUtlXDJBgtlnfvWXs3XTna68GtlZk+z4F1DeR5oZGEQZhK+nxyR1OVD0ogUMs69Yf8E55N6CpTbW82jJE8KbJTmfWZjv/4MOGCZSrxwBC5FmcRohkZaHnSvQFRrQSN+1Fi+TXI/wCbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is/TaHkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is/TaHkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DECC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730020553;
	bh=+tpmCqKW0EWg37wK0HoSgd6Yb1dDSyYLyJnvRsCSCTk=;
	h=To:Subject:From:Date:From;
	b=is/TaHkh6pyK09nC4xghMR2gQSrwbZ0E9Q2vKV7mF/tbMEYXpxJD8ZD0lkUvKh8Bv
	 Inv/emLW4y2ehN2hCK9sb51vyaEwu22MSbJRViLYVOFflT1EVOovG+1JDTsR/JWbze
	 OMr4b0tBD+cM+x+hAHxLIPKRkT2Vm6v/f6aLFatTUw3sMedi8V16TVRG84Z8C4TWti
	 3H4UO+S16w9PBtt7lSkMKkM9Gh1CkQ8HEoB2/YgtWvbg+OYAC4GPOvIjU6UZ/ZbKh3
	 BzMncKWDpxDmzLROA5IzTxBK7NyFjSLfVnQhATiEowXW/vj7QWNdKQwf+GMfPP4lhD
	 Lqpv1d7S9FtxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D4BD10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002055361.8392.8999447749185427692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b0d0a8ad83af9ee8540161c0c53134f72fc3e784a550fa2041f11140a0c5c6
Date: Sun, 27 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730020553
