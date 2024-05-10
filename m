Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9C412AAE5
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715327543; cv=none; b=NATc77YSLA9rJd4gVL9h7JzkbyFh6D6D0OGsqKjRvG6ctfrs2DiiZygt7gNFK79XYmQlYME70mSz2deN95FAZoQKqR9GN19dQNZiozgKlIyNwMKymJ6AxntyaApzGUbbdQf52qf9oTJ4zmBnjuY0fXlm+k0Xqza9irJxrhBZ9yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715327543; c=relaxed/simple;
	bh=K7gvnvtO2H/E65i7Ps+eLAX6mVX3Jc/hE7hFEm24M8U=;
	h=To:Subject:From:Message-Id:Date; b=bBwn1kg8uDJAVcl5NJbfYWSpP6kucsIlCOxSN06HvXawqmZTgUwKmB/GDCWoiEsLVXi2D6yicw6UJGQMFVkOdRhXoeCk4xHHxSCMjQiYuZOnKq9d1zPvUQmaz9QsSJAbrfCtjgEBufJvBUIN3flm1qUb/1l36myJ7vh/zz7d6K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMk3uYrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMk3uYrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78B2C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715327542;
	bh=K7gvnvtO2H/E65i7Ps+eLAX6mVX3Jc/hE7hFEm24M8U=;
	h=To:Subject:From:Date:From;
	b=VMk3uYrGSlpw1wWTwZgC5XlVaAjspsuHIEdhTjHquTgIdo57NRshti9mZhWnCFS4Q
	 bxYPEAZ17lWcVSmGeySHTwshHjWh2C7aonKXfvFPBJco573/eU8uezUStKwUPhjjig
	 xo85u/h4+ouDlOy/aNYWR65te5x2jQZ+9OZbgMLcix4A1IODXWUi/tljzQGz0lgYOc
	 CPvEAEzwuJlgk3VAv1BTRAgsC4d0cp12JamzaHAmO9FeNJpVnhBddt4f/J8LWzbzIF
	 g2ee3C2KLj0Bk5pqsOxULlo/L5Xtb0dcF2rwJMQO1zmL01kl1pbuVUlK37XXAw4w3a
	 jPRw1yIUfm/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB61C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532754276.21121.4584214418596414842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e34550539d5325494f8355efe45e1afd0a562685f6a38aa20efdaab1bd1278
Date: Fri, 10 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715327542
