Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A4548EE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780146814; cv=none; b=TBDidM+zblYdM5PdModFCjH9gfl2bnAMalk6iY5vjOS0PabsPg8zBaBwTw9jHFYres27C1eUoHMKeLnsjcaRKAUKC6AMjwZxrjQle+QZnmSUGT07e/h8oS3YXSTLuPLyJAn7EQI3mWhmnWTlRmI9aiq9OtZ/xN9jfJC1Na5l8ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780146814; c=relaxed/simple;
	bh=D6LJzIJDzsgW7w0BMzPGImqjS/JeRMP2JPB27niai+o=;
	h=To:Subject:From:Message-Id:Date; b=s48d/1ecD03vzUjT/CzvtlSqEc1RugLaGNmEL3tIZ5EjOUtV23NFq0rDmeT9Dok/djs2OZUW5BBUJhfOhQPJd4n65HicLgPYGw3n96udGJx/m3I+bCTizfcPLFgztuTREaRmjUId/8YdJ6Wx577wD4+a+BKht2mUHx/M6jPfDFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnZiAKa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnZiAKa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99CCC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780146813;
	bh=D6LJzIJDzsgW7w0BMzPGImqjS/JeRMP2JPB27niai+o=;
	h=To:Subject:From:Date:From;
	b=OnZiAKa+N7CAUxrnuCtsGPSmr2PNrY4L4rZ3jsp3cupBiAB3/qFp7C7DE2/wzHSnQ
	 +BnhGQLBU0EPZ6gkXTXEzYguCeX2w0k3eIT8cgowInOz/RQPom5JGy/e30JmJ3jYV8
	 aOi1frspY01dmF0opZ2TDzi28MdNRxECRpbbqdHhuKa2wxr+b/ilfeOHLPdPeejRPH
	 8tEegnnRrMrUrV4YkVs1UfSD7YHVu5ggDEqIGc8ZX+HuGrhwLLQgHXrxZ3v/lXqVhA
	 L7RJ3KqzrAyQlPyulmGpCAjHk4/NZ6mTHx5PMP8hqDcosHoUI4B+1bb7mHWRM61WW9
	 4koNEXvnE1hig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1795CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014681369.27697.11053650353272899976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e821117d33c63def2fe8ee74f6554a0aecbc76983c9f6ed52b0f76644af35650
Date: Sat, 30 May 2026 13:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780146813
