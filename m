Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7E03B28D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767718434; cv=none; b=Rg+OttomonI5WEsYd+AzmxPgwJrZhDaowFSOiMy8bolOZ4zeFxLjfOQrr5irSJC9I6iZHxULug6+1FQWpxtqf9gNiHoWjlelBVTWvGxilg+B2G6HeNnWNJfEMYk6+n/qR7SRPps1KXw9r9y3zMCh8kg5MVN3AQR5dnUlWiQeMvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767718434; c=relaxed/simple;
	bh=sGyCI4bYg+0pb2WkvOXwyyXTwdC/oYmXLRW+dpKZqII=;
	h=To:Subject:From:Message-Id:Date; b=LBrzpXZ1RMy4jy5bj8/jgJuaMgAA5w7oV13V83T6R+XfQ55Ip5HISSdDttYVbS9zFxJwYOxyEWGU5Hb5/z5vu6sqWW0NDkKMehAMisnBXaOJ2GXIaqTtdZ0Whp7y5xwOlKPvP8YAevEIXCusBhDi8XZE7BAcGzBk3HnEjK3xXS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPqlC26S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPqlC26S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D7C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767718433;
	bh=sGyCI4bYg+0pb2WkvOXwyyXTwdC/oYmXLRW+dpKZqII=;
	h=To:Subject:From:Date:From;
	b=XPqlC26SZHP2GFQWqJRvVmQKiiRoprORLXJWUQd2kcCjRqAIxgWNnqSIPaYc6abP0
	 eEjMtq3sqoNrI0QUkQWqeneB4IChoEJjdkoUYtMq0t8tc1c5Lm0oomE4IxDWYWIedR
	 4X8x11UOeNwDqnnwg00WGcUjt+yNgApu2zynnq0LdmRdnXGPuM3v1NoS0gb1xYbsK/
	 gUuQgCHCbF1nHAVI2maXFehq9QSfoh+xSD7J6bexzy/TqZ89oo6S9WLFdZM2BJ7HqO
	 yutzTEVWDPaPiardEe5OA7o1v90DVjGYQDsEoFHtVmCKrU7CQpp25bifntoL/x5XZo
	 KLkh8bV08xS8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E3CE9D7D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771843357.23023.1637706619558775732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a619e38a3c5ccbf58aaddfe7b847406a93567cd9694e1dbf8380b75490e1cd96
Date: Tue, 06 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767718433
