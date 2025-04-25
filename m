Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E822FF37
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745571594; cv=none; b=WtQvRevp2uQg+xyut2uZIYFuToFecDVkUJVvO6nSJW8a2QWD8Wa2wi6CyvbpuismH1NHhhHBalzP0d89j6xLzNQtcxgt9KK84IOmOv951lwOEirOgf2dQOfbuhwbGix56gYi0M4YoZ1YlC7ax6INlmcLuJBA0yGIK9vb7AKAprc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745571594; c=relaxed/simple;
	bh=9X43RmW2YtITvQpTuFy0iTYHbAFcrLGQ8Omu+1dqTdk=;
	h=To:Subject:From:Message-Id:Date; b=CGsmNXTlEcixS5Pcnh0WIMqcb57ZcBeAKMw51a5tfq63d1X3PNG79x7OhPy7i1FA9B8OXtxHiGuPAOzY4sUEZzC4SK12J6GvffHOzLIE0m9vmq47JmGn7ojKJBJBsrS02laUOQf2PnSSS1BhAeRYwnqlXuUNYbqFCaBRkWXC9iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eazflsRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eazflsRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745571593;
	bh=9X43RmW2YtITvQpTuFy0iTYHbAFcrLGQ8Omu+1dqTdk=;
	h=To:Subject:From:Date:From;
	b=eazflsRn7/RchI+t66hex9YaqIZZYsLi8Zu7xYLop8BihA1jKRPug0udHGWX2X+pR
	 nR+4ZYsZHfgndL4/0g7NfVHCg8EfcT35KFb1/ehHBidkV0YHnWOp15lVnpYJchP2Xl
	 u2OPQK1EYC8uH7AkQNSWvYDUmEhWaUqfdOFezXy1/oNOhgmDKGONRwWbCtpas2Qc73
	 bTCoS5/ueD9nRPKlls/ptsJ0khXQ0wA6maGRJ1IWm41rif3a33zvC7d/cxeR/SE9c+
	 KRpgJtVozLLi2V7lY2b0jNCp2oH88h+uZO9OXRPF2Alm2cGuJYm6FTl2YW82UdWKFZ
	 xI2fEkihyaxpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E855C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557159357.2060.8984075002143816864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d14d3a629c72fae4881a52373ae04883f168f3c58d18fcfa9224636ccad16c
Date: Fri, 25 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745571593
