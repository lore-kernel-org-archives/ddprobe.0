Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56625B08A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779390154; cv=none; b=JV2ubn/tveUbWSONQdN0eHYlhP7+C8lQuecWccLET/c9I7Ha0hQM9Rw0GTFPNkWtcaNysUMk9U+RupiCtzRn/b14LjAN12IBpdKmV6oRtsAc11KESsqXbsREwaUjPfqaEwFDtHqatywbiobjZNWqqXME3AQ6zT6Zk8xMOT4RYZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779390154; c=relaxed/simple;
	bh=T7dTeLFvnxh6o9l13WMgk7aMp83VyNFD3fgEFhnB05s=;
	h=To:Subject:From:Message-Id:Date; b=qnBhWT4ccjXjQqJgoVqWQ44fUc3/TvFYuuX6d4B7Lh2DyyECHGXJfwdMPVmoV1hEoIsTTMwS8ocEauF99vemqlh76ERb+aaLOh4muxbRYqvGhwhgXvwFJCo4/oGAysxvXuvkXfR62qj1lVJomDk1j3ZnwROLxErZxADqKgI79Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvRueAsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvRueAsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75A7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779390153;
	bh=T7dTeLFvnxh6o9l13WMgk7aMp83VyNFD3fgEFhnB05s=;
	h=To:Subject:From:Date:From;
	b=rvRueAspwUx0Iom2Xh8jRuvSEaHiqZGSJeb9cvpNl3EMncFch0m889D+lQmtYBOkP
	 WV7x61cU0D2g1uySKalR/wor4jRnqaz/gZFpU3u28JCpYERZ77udJFq5C1Un4WQHUI
	 WoyK+jaPF/lHo5gPcx714G9pJq4NYrLFzmaVn/crsuXjJjUN99/4QFpOsXh0s7dkR4
	 Wmt9diXnid48O3YyP+P/zyZ/VISLwixtFzcXeGxBonYyxoR7SWkDCvy7PmVvEUW4A4
	 novobLgR21x5v/ODe0NZG4zawGM5uhAeVmKWF5aGHOa6WsoTtxHneNG5FRHZundOZD
	 S6mGtBJxfvg3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24BCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939015368.17903.7195827780044077969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8abc4f906e51ed8feba053d88b822d0e4f2950f48bc3de2fb69ebd86a4753f2
Date: Thu, 21 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779390153
