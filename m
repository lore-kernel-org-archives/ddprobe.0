Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A801E502
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747573794; cv=none; b=dXAsCGzwRKVvmRG/RMUuwlOC5JRMImAD4UzEnmf4/lllag2kkojs7fQeUBOAHB7qt1ZIYPFjpwiqjsZQ3n8tQMgZnrmbSMK+X/b4f4TfD+dnDvqAU6SlxT1aE4YFLQWDGw4Exq2QIEjDKORxrC0v8J3iraj+UYEfflGruUjQjn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747573794; c=relaxed/simple;
	bh=KT55XsvpQ5LVJQ3zJF3InxL/SYZ135417gda7qPgnuc=;
	h=To:Subject:From:Message-Id:Date; b=F/axmhB2Gz1FUUAJ3LsJj9YgSskpW7HofEyUQL8AlJJcnVBOaCHcma/zT7F15fp+xaDE5nmd6Hq5neNNWTrAO4+u75ynDmP31saLAhRrCZLe6ToiqSGOP0DK1phfKN2OskR718a0DuKweYK7pHzi+O6TG2X5Pr6VKch9PpkeQ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3c3WCzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3c3WCzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747573793;
	bh=KT55XsvpQ5LVJQ3zJF3InxL/SYZ135417gda7qPgnuc=;
	h=To:Subject:From:Date:From;
	b=V3c3WCzpXD3lhdzpRQ4IGe8e8QRMXVFhbcMdGuI982Lpwjq0CPl6ugbW5zrzHzb1h
	 geDsHYmfwLbEca2qCeV9yfs3bdeqggIBwgw8/2p93u+cKij8BJ9mPGsvC6UMu+FeBK
	 uBcWMzO714F1XNWf1ASEKnyAF2+n2BLpzBETamvh0GAsCLhDBfL954c3QsmpQA2BWW
	 2tF0B4DbetchoM40Xd2mQHMZyYCyo2lq1jw+4cIibnOqIPR6kRnPLjT3js6Jf9uYnY
	 0Jzi8sYUI29YTdJVEE0uykKet5lf/0qMd4tRcqoUy9FWl3bDcYbKAe1VTlWqvNiHrY
	 tpwBa+yvj4hwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92038C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757379357.21800.24546362946905545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151aee02c956d453936c02d716b8308796d6c7e2ba65850022b00a8f8735aa18
Date: Sun, 18 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747573793
