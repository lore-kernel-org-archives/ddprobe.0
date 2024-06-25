Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2F21494A0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719316403; cv=none; b=bwp2YPXSjnsQS2FlWK35oIUBeOfb3k6KaxMe2n2Ll7HDFy0MXvYJdN/sa1n1rwq31AB5nyDaEeOpeHhQUdNc62sFjl9YnAj2dZXWJkjsMhYfyF2b4vwASGx/9KcmbweIliueYlO5UluXjKbp7NFA8k6tetfMtgXF+Qd4tbGZ8P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719316403; c=relaxed/simple;
	bh=ktwtFUjsRTcAFxkwiMgHjerc6Ffz8yQjAKNE9ap4JqA=;
	h=To:Subject:From:Message-Id:Date; b=mUedgibXHSQD/c3bnhXOiY2eLlytK4MxkqTJ2AN8FziIGRaJUSYMueLCMlJSkmGBYsAEM1O45/WQEXZ3KJGqbPfDyb0Vu/Q61AUSAN7XNv3Mh1pK+1hrjMh69RDrIlYuxo5t8YK6A8TC+hcB/wirKuztpDDYURFcEGS4UIgjK3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvboUpk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvboUpk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7B6C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719316403;
	bh=ktwtFUjsRTcAFxkwiMgHjerc6Ffz8yQjAKNE9ap4JqA=;
	h=To:Subject:From:Date:From;
	b=KvboUpk0n7Qfj5UVWmh8N7UERa7tzVkARZ2pD9Z/C2aku6r4k+JZwtdEsnri4ezBp
	 AVsUeQwHE1YXbLAY1Qnw28fbxTKLc2PXuQBGye3I5IRlLfYmUmJGjl4iaiMfqV6DAn
	 J4g8c6cFWTxwpCxx3vs/3uSse+o8STsMvhs/AuIJAR0dketcRAkuGGn0K6VHMKhpdZ
	 N73mn8HJAbVTsTvKC/jyyDMiVb7VTtQXdzlFu+n6o2qREQ53aJn6q2H5+dfzzlO+/R
	 K8RZisRHeiZNNiK9gbnFcq9rEFKvI7Dg/IYozeniL+4ZNoc4E+FVYMCsSwpnu31T8V
	 il09f6sUgEXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C93C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931640284.32756.9124127622858836872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900a1b2c8841e9c7c8747027da5b6fec4eb876f3540ff1d5d60e6578507b4394
Date: Tue, 25 Jun 2024 11:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719316402
