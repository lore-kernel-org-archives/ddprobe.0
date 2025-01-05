Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA5184F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736040954; cv=none; b=XDVkulywdk8bmc85jr8LaSCeszkyWSyA3vbMsnHE7hJxH5GuRrRRInc8DUYV1ZqGoXnoEToSCyllOLEwal3xU0N+m6UOolM/0hK+avcr7gXC2ILJXkmxpNUh5cErbE6t9G3fdqucKTCa8Z9cWHxOqEWRSXbLUcpsZgeyTdwpyGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736040954; c=relaxed/simple;
	bh=PtQ5cVvsVXcanI9NkHM6HUpkhxiqwDmjABHIYM24v+A=;
	h=To:Subject:From:Message-Id:Date; b=sl+sQJxa1uzgIWo7YtVh+HoaKDBHcRj39eYj92yBLcXw0Ut9/FsD4jOmreRBzCiRpZAJUsbjHoABFBQ1umQPlgoBx3GguoatktIN8FxKjS7rpIWRBmUnjydx797M2ygXuiPhFRtx6epiOGk5nCRF4MZMbrweCDy0FP8xsKz4NFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch3kjkwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch3kjkwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE757C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736040953;
	bh=PtQ5cVvsVXcanI9NkHM6HUpkhxiqwDmjABHIYM24v+A=;
	h=To:Subject:From:Date:From;
	b=ch3kjkwMHAXxmFlxGOoLTUzzziPM1mvP3z5uk+udLVJPU2LfV2uuCJalrPEnEgYMn
	 W/vlp6Kr0+nmANTzbjoVy/wejfFOIwt25RL5XgETp7oZFOcfwbUFFRtJtJlHTYyrpX
	 CNkHYPiUfCljrgH+mNYknwWd6hUb3G7toqz9/85pFTTa1Vc5clBu6RIZiIjwhSFFJA
	 kHmHxDvGL7J3lhHehpv+fY1y+TRxBDzur2EKeei8PSXzOLHRxy/vuuGAV5gbRsZqxl
	 whbkqB+Dn+66e1laVA7PPlQE2U2OMsMv16olEHodltnOL39c79SYYCHUGH2/MaR33B
	 n7TH+wOxZqC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF0AE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604095359.17123.16426639892139976273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292d36138efa2b1c731ce84de0380a56f537b6a73039c0d3491733c04777fac9
Date: Sun, 05 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736040953
