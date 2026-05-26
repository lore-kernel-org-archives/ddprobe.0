Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0943033EC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779778954; cv=none; b=pjig5clrKN4/6SYZjQViG34wbxPcz7DXs+Ao44kiCklgTggu6xnKl1jDpds4NeWrXIJsMZ5eKkTfjv4CJ0HQGjoCh79PM+WE2xa7czUw0lejMFaQ+uDgszZlzL0z2ijYfOEf7HzXgd4gXDcy719JnCTpN0F2JhibcOf7aYuK4+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779778954; c=relaxed/simple;
	bh=KMtUnlYUj18vhPH2+uy/iuZmvIx3U07Y73NX8ERJRVs=;
	h=To:Subject:From:Message-Id:Date; b=c/bWUjCDfnS06e4uKB1XHIN8czwQd+KvMVx3V963lQca1D5lH4jE8gHIt9u0AC7XwfJQgTTOMYSd44P6GdyHlGzVDVdR2F1aJ0YZCt+4/kx0Ap870gbCV5C1taqM6+KPylFwwmbRuK/Jwg8Em9uUQ0I4FIkAHxOoB/56sRVBEZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFGfNBEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFGfNBEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E78C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779778953;
	bh=KMtUnlYUj18vhPH2+uy/iuZmvIx3U07Y73NX8ERJRVs=;
	h=To:Subject:From:Date:From;
	b=sFGfNBEpZptmT49LkT0JdEATsSaPEgslztqF2WInFKP5I1VMaWkvftYlrH3acYntz
	 knPTZbesINLYI3VSS7tv66rx8YFcrjpd7GL+hu7haRveub3K/k+MFcEh9ZTHRt9SBp
	 OjfRPf6VDpSDa0Q86LK/24lMXK5gItvagaX0vXoXGff6u0EsFbzXvpySjpsHPt/nLV
	 PUXly5N5U+OJ2J6GfuzSUItbJfljc+Y3da7WfC38l7gONLRsxJF423b7lGxRWVqyE/
	 GoHh6VM8OMQFXAwxCVvM0IHFxGs7wIPlQ/EqvD/3akZk43UWSs6M2P65JW+dV6b5nH
	 OrjxhBCS0GWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA143CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977895368.28230.8469834389870723632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd585c99b8624a6dd765d8502ddde6eb44210aeeb6a5ee79f45ba3b30fd4a8f
Date: Tue, 26 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779778953
