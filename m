Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD41022DC21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736846153; cv=none; b=aXuWQOllJ/S07u9y7kK8IZz4Ix6fU6wwcK5VemP0aInwI2S7K5ZU/Mhf8IMK/fUAWdxkaKHLaqp+8NodhYs6bq0ATlwTErFVQYNVGGeqfgbkkMeTL9bptypsulnCWD9KapC2SDwWzUn9F2q4Np4owLrk/dh0D5KEffMxpnnE0gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736846153; c=relaxed/simple;
	bh=cmCkiU2oWQiz3FsWg+1AFyUBeZwoo0A6HBbwaXAMdsc=;
	h=To:Subject:From:Message-Id:Date; b=D6LCt0dKSIjxIffreSHfNzRMTh30H6gwzXjKF90sleYkp+K862FbqMdQ00gnwd3vQu70b/sxs0b/pd8OfLjndLB26NBb+oqmff8Lzlgs3Eh2zWhNR0xP+HId+g50JpIE29TPG5enuTDaJC3KJXi7b1rGZXH1LSBsAsyAR2yPcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uon+C+N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uon+C+N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084BC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736846153;
	bh=cmCkiU2oWQiz3FsWg+1AFyUBeZwoo0A6HBbwaXAMdsc=;
	h=To:Subject:From:Date:From;
	b=Uon+C+N1XNyJjcnRX5uSDxffR5DjeHlgQ0TA36XpLxos/8iv6jGo5kyKp1buTmBwz
	 7GWo3bdeRQm0K77OpPkMRcxw5hbUNMusepoIvGAvCpxg62uhq4nymtZoZ2g5RGazLY
	 89rEjrZI5hNjqw9JYwbzLh17gH3b5oNmaM0Pre2SvUpjdWjGyRRy40h+tRLwsKZA1o
	 jgngCPVvcSYLBdFWDHhXQilGbFgMEumpn3fDvJ0UfQG/2lp83h30j3zaAflyntBoq8
	 FLGgstuDoNi5bkRP1S6VIvyoDDU9BuPnOiyjyW359VfnZKqQRwTGJVWW45V85/NZTg
	 izmRl0CyXCm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90576E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684615358.25551.18215946908060270935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1e8e8ac61d748bc02d2cde7dc66b185c2e6a39c4fb0ff4680eea3794b218f0
Date: Tue, 14 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736846153
