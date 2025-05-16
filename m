Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5A7235054
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747391394; cv=none; b=ROD5wRBOPIJF6I3YzIsj7loTPWbL4J1/rgYalbmCZCt7tEaBqu7Xg55Op73kaCx/FyPZgWtOpW7RXM25FXsj6wihid1jC1A3C9BgVkB5uILipMFI6HcO3qmShYrGWhaf9wchxgXPTZeMlB+BsE8Hmku+6Wo7vyRKgznOFnQqh+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747391394; c=relaxed/simple;
	bh=i8MGie4mvG5PtzGUXI7AM4Cxxgu6KkUpa47EtKnLpOs=;
	h=To:Subject:From:Message-Id:Date; b=Ls2+Xw34o6qlJV9HczdTPMJz3uUmjnalMsvKZbltg+PEuLDWFbYVZ7Bo7gwP3MTyEMWSLkJJxSfOZwcqOok5XU4V/U2lcO5B/fa3rMgb+FvXjgZnTYowlyEDAZMHdAi/xiJaL+k85sNxDQZoI4L7l4QHS9HtNBNQZ5XXL0DIUTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw75m560; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw75m560"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747391393;
	bh=i8MGie4mvG5PtzGUXI7AM4Cxxgu6KkUpa47EtKnLpOs=;
	h=To:Subject:From:Date:From;
	b=Pw75m560RquHQQe6CbxysL+ynQhMHN4dG9y9kH0JMHgnRGjToOdf5LO2PSoYU0Oos
	 HwjG7/+KWkSIfSexK5gsNgzrKvsxB5KryuW/FtVvRhjMIrPnyykEqX1KAGMWPj/aTl
	 R03+nd6qCfBGWXDp/7mJ2HPHat6NCm748nc59y6EZjLjGltrT4uzTiqeFuWqSJJG6C
	 4c1E6CGfvk9m6s69GWkYH3EE2T85qhMTEZ1v1axfBXdXbAnXxF1XtQw4/G5gm99nTB
	 /EYq0Ladl2piIqXPLomYjtZ1TxcpxEBQgVgSIvTROLlqRalK6Suojmv2dsuDDL1zZQ
	 BCQkD4uA07AQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031CC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739139358.4708.10040314733428985793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a50e12177d893499722317b8f515ac321781911d986534745c42b8b945cb1e
Date: Fri, 16 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747391393
