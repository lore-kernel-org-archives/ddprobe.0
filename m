Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC933FE04
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763718714; cv=none; b=FweJnE5CBOwo8T6f857k+/7g6rI8XTq7nJ2MTkZ4JEs8a+1rxJDEoJqrWxx9RkMYogNHmWz/4cSBcgM3lgsrPvh1US8IkSZW3g9J869ou3kGN2tL5Etk0VIYZBH8BSGTwsXCknzC81q41LUX5oafmVoXDolyWeQzoDVYAo8fbko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763718714; c=relaxed/simple;
	bh=rrAwYLGxMd8QUI0xvIQALRBo0g8/Lr25cVpD5ww3wqE=;
	h=To:Subject:From:Message-Id:Date; b=O1DDY/KetEiGtZcw4TcmV9w89VATDcVL141bEZqZanRRZsR0cNcl2QitGQwOwXR/U3512kZgT3ME39ab5unN8VSsDTwCY6mEu1fPebQSggA9S9YvvWQqOS+/Nw66WhTm4JqRAz9AWLBMMK2d7aD0Ox2VSw78MkK+H+Vy1uvJrWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mbic/C91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mbic/C91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763718713;
	bh=rrAwYLGxMd8QUI0xvIQALRBo0g8/Lr25cVpD5ww3wqE=;
	h=To:Subject:From:Date:From;
	b=Mbic/C91QMkBOVm1T0LiAhEMgDfYCXemHu6We9goESXo4g76gGy8MNBhteWRpmTOn
	 kfxTPq78jkng08Wu4I9LCZafpBjeZk9JHaEYBO0K3WzssVBZUHzMcXw0TuH+jky1AP
	 KGC1d4TjmeeDf6bI/IFxwjSCIQkYAxQeee5nYE2yxXVwq5hO385UistmkgOfsLdIKs
	 ZLElRc+V+c/nYQ/dZ/l44EjFYTB25nGrD1Rju+gnQZlffsvCz0j8LzEGBQE2BJt+mO
	 EUAxsjCc9le5TJDcawz1huMsiiAY4IN1UXFBY7qRgkTyR3eEavl7Sssc0MrnY0UAeW
	 Ljk6A18M7ts2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90481CFA762
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371871358.20733.6714882496575064620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c0555baf67f938e6a63dfdeb7722fc62577d7478fdf9a12a7a740156c06bc9
Date: Fri, 21 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763718713
