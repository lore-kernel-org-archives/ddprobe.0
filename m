Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1995825FA29
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770156234; cv=none; b=BaLybzUcUF23xwJAakIs/djxMx2Wy1AXjUJ9n0KLXYiqqbpxzQWUnCnyipJhkOWPSQZTk3s/03p3kFu5EVhO2b3evjbYUILXPXDmxX4PRWT7kNrTdxjgFYSYFjXj7wOL/RuXFrZvJ4fbSl4SeNY7fW0V5xYKkircXyHTCms5hJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770156234; c=relaxed/simple;
	bh=fhGnOWWlxg8zgJ9rE8mOCZnonZuGblUQfhYUpuDSF1s=;
	h=To:Subject:From:Message-Id:Date; b=KAWjpEH4oyraRNlebF1QLuQpIGyo/LVxaDYfxBpTGqh1+nebymg12vqTDm0kGUFONto3JwVrmQZYqQBBCxWkQE80Fc3k4OABqwy/fXBs/af4Bn8c3jLdLE5Kyit5RNgkbbl/5RFYUtreC+Pib3dNaay6Kzsf6s4+WuTkLa32uY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=radR0+GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="radR0+GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF445C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770156233;
	bh=fhGnOWWlxg8zgJ9rE8mOCZnonZuGblUQfhYUpuDSF1s=;
	h=To:Subject:From:Date:From;
	b=radR0+GKKlkjBLxY/rgExYRjmCuAzRvEFtDhx6sMShUV12OGKdlQ3/wt/vy9+UFgS
	 LEZUrAhZ0GrwiRNHdxjnkNj74aC7ewkpHbcWActfmO3sEc0yoInn8y6O0bjyF0zuoQ
	 0ORW9p4IJUOjuc8JoRtQ01WsrC04ponHeA9b7yM8qYbswfNLLz3HTO6zGLgiAmiDWM
	 +Q117a3Pp5NjmagFXpVDvgI11BBbQtFfDjmXPHOOOvE69rDZuvDLpe8G4eryPTqQyD
	 CuNJxce2rDXMjSDtqp4tZrYymlTLUkDzXKUNDAwCWwcQV2AG5eeWU1lEhHAmPwPYoH
	 4lFWeUxIcEAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D41E8B367
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015623366.7679.936267924020191344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7db3b4adf807da5121f783853ddf43e8ef1e23cd0eca3f886fd0f33355e0d4
Date: Tue, 03 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770156233
