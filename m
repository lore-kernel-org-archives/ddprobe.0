Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1D036D4FD
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773389094; cv=none; b=q/py9fppM7BsB58XdlWvexrR5no7PzZUebnzowXPEwQ2yEgzJB+jZkq7JaXu+GOAjtBaU+DYy2PnoQvDGjSyNRQuua8HNBRV9L5XrfRHMRglpsnPtN2hfi4IMhla0xTnXSI9oM3KmB/lu4PCwR90nuS+GAYai5/dHpRL4/22sK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773389094; c=relaxed/simple;
	bh=ooZAdrKYgc4zMkXHctad3rtH2Q3OZT/ZnCdaJtV5t2M=;
	h=To:Subject:From:Message-Id:Date; b=Ovs2aZarVVldwPLiciKEH23K8kkd9Y8mgSQLdjKlHJA9iqU0eQ95JatXDzHjwSlGdAtqMOlO8q+MJwf7z5fpVn4e+EU7QvleAlDot9fUdtG+Wuu6L6BzFifrPJEsoDHc47DmO/l7qIE2PSohhS+ZtdbWKwLy+M+jY8Id6J/Oa50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN+Miyx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN+Miyx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B061AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773389093;
	bh=ooZAdrKYgc4zMkXHctad3rtH2Q3OZT/ZnCdaJtV5t2M=;
	h=To:Subject:From:Date:From;
	b=gN+Miyx6DXytPIKLvlZ0KsOUlZmaBQLlifQ5ms2u0EvFi3SgqIrD1IPjAZpZQkZW/
	 k2QVvGio9UDzA5Gztbtelyw3krBES6RGTQ+Samtr7HMi1Qv5R1wMHCABd5FqmkfR43
	 /2dm6lUWG+UeWNl27c8iFmIIitwHLmY8KQjENnE9ggNTcj9RJb8f9XsrWlD8KLcHLr
	 TgQPlvtqgTuQQIyyzR+sb+c0ejU6dIKoUylG16f/qJeAjGy1dcS16gZu4NrP+curMd
	 +q7RbBG09LHgVb0E4sniy/todpw4wPkrcDoFFP5H3PfwJyuaVZ1Q5tmkiVml73D9M5
	 7EUTRyX3IJneg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1256106FD9A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338909362.24875.2924538988637576720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dcc93965a5b14a73ff3944667f28e7c87c57e23b423b790801df9c88500c5d1
Date: Fri, 13 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773389093
