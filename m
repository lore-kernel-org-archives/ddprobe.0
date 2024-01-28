Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FDC6FA9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706420297; cv=none; b=Uzm6rgk0xR9fpEwG4jr4AljFzF/APCKlYDRUVlFHHZA9KwriF7wvekI34DNuWH7y6mDxxgkCRRgpCYDC5LHwFenKK20sE6ubKMwwZWd8XFP2TUeXz3DDeJjdmSlcbjpqb3ggzjaJZTqDzTuEkRw//tNyH7og/+uDrmPKnuVy2/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706420297; c=relaxed/simple;
	bh=wUtA/kpdzxOw1a4/DgrNLTmKWYEm2hnSbXmsyC8uuNw=;
	h=To:Subject:From:Message-Id:Date; b=QScMr6NWxiIlUVMXLaJ5HCPCZTAw/5DsBWrJI6PyZrd04aJOn1a61nYCVkX7jO+0svKMl04J5VhDuxDogimU7NJK+rJ3XASuRCinvW+QWLbQMY50NHwz3lSz1Z3/528j1SMKydA/WOs14+fYeMyxLkwTIb2C5xFIzMHgEi76q30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/NW+mzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/NW+mzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830CCC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706420296;
	bh=wUtA/kpdzxOw1a4/DgrNLTmKWYEm2hnSbXmsyC8uuNw=;
	h=To:Subject:From:Date:From;
	b=K/NW+mzVvWy8ANfl7SnJdesrX8JQ57kj0cAGqHrkLIY+EgDKIVTZinKNhhMdGyoxJ
	 GEwJ3evCkcV8x07LyeYPc8XbbT4HKuJQIYAA8QOfCzDnjEuPz0CRlhTYpIDcNtrqyR
	 rES+FYcg7sGzS5QnALCw+SiBgJ6R81n1FLnO5lWOCK2hgwj1dIfEQp1ljAcKM45u8g
	 eNglK/4RNYIvF7OSvD5fTbm+95b6fj3kL1g+yD/7pJA8RwqQRjftUVMiJG8dxUyTeG
	 +YLSTVCVCG8TrEb0OUzRcipkjTH4YAqKzTWc5hC/mvDbjkEIPH+6gifPhwCYOREbtF
	 vzONa9DGFGMNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6541DC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642029640.3568.10625153336919788087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d174892a332bcecafc2394b4160ac5814ab016848c6329c5ef80b64e097182
Date: Sun, 28 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706420296
