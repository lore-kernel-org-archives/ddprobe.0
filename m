Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E2160783
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737537354; cv=none; b=W157+k0zAyHFydBaBxI41ffSquqX4qSjUYVqRFx/yl9E2fPPRBbTVNBHikvWiAcan6t3MG5ZLf35hm4ywpntaIULhb8WFb75vImYjpmY7CD7JUX5GN8aoe8LxopssgnH3cuE9JWqHWOUIGAnXXUtT8ig6Q7h7Qwyc+Wy1CDOj04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737537354; c=relaxed/simple;
	bh=Yp6NKd5ebgaw8HjOkqeQ9vUnv4hM9dJF83WC+npiyTg=;
	h=To:Subject:From:Message-Id:Date; b=HqO+xbIomG03Y/3OBWHRjuu/GgE3VqUY2o0arW8x2Qudx7E7YJjOT+4XDMdStgcJ8b/03E+sh8Y8OcZPtmwLhh6eHjhysBNJhaUCPBrQ/43GvhbByawCriX2qMd/nGXpXuB2vAPiW5e5T90mZY/x0GLK1W3F02Cpr5D+AOR77O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku5dNmnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku5dNmnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47A1C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737537353;
	bh=Yp6NKd5ebgaw8HjOkqeQ9vUnv4hM9dJF83WC+npiyTg=;
	h=To:Subject:From:Date:From;
	b=ku5dNmnmcPX+bTHa5A5xlh94PLYDtlkmXPxjTDP41/7zDlNjFhAD42uTgu9bAz1a8
	 HI2A/CyNLyyvkM8MX6D3ovBLAD84I82NHIuYj5sQvC0KI6IQz9ni2wNsNwwWmEWDnn
	 P/dLFMhCppaw/EKp9kGX3tB344aZJudUKSPaQxpImsL1j949bv8Q+1mN5AWIcMZOoS
	 RBXHjpMhJAV5NDG7TZZaYhGLuNjajuOiwkQKhq6iahX+Tq7SEhLdpFmn7JIj/T9c2w
	 J2L3uGSgJUS07CPxZ7/dGsSlnO3NOjQDWK4Me6upcl0kkJgy/I8uKpbhQxYO6SgJ8o
	 LqEZzIZSFIrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9CBC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753735362.11715.11548512742563000434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b723b515d15cb9f4ae4ff9fb7f026e496576580b60c75f240e76d7990bce07d
Date: Wed, 22 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737537353
