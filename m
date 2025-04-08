Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6662046AD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744087194; cv=none; b=Wv3g3ECVx8jYZeUF0BDT0CqNu9nFPGw1jBt0MXuraZ8XzE12hPiQ6WujqalApH63BQTcrsk90ZeQMtEtIkLBoGXwCekfpbSi0qE5Tf3EPQebe/5j5All4b/XN6pivDzxFWuln+UPXY5Nsu3Bt54t3LaD3sHtXrvE4JogqjxMCl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744087194; c=relaxed/simple;
	bh=hMJVLjZKnQq2ifecnQpygE/ENHWzs2bKdx/jHEXTe9M=;
	h=To:Subject:From:Message-Id:Date; b=ipi05Tqhmp9S+qQQR2bJAX+Kaj3Z/EHd3GoS1bzVhTNP8/pzXVWk6uwJzYdJ3OYt4De2YUmpgSyQPi0s2zn3MdWR3T/5ONNawLSH9Yt8GIFMjXt7LBNWHpzT+hVJoIvfkpzH2cIgWucABwAIKq35vkXVOcuUqvRin8XDZJ/xAbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ3vRGkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ3vRGkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC772C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744087193;
	bh=hMJVLjZKnQq2ifecnQpygE/ENHWzs2bKdx/jHEXTe9M=;
	h=To:Subject:From:Date:From;
	b=dJ3vRGkAFdx0yzbn+InxZD/oqygGa9uGEQFuABaxXUaOvOQX7nj4nPryRQMTs4G3O
	 +kYgkMRA+Ue8GNLr/AGUI1uu6FXI1slG4ecvYkFlotjOcE7TEC7x5S7W0HUHXph69l
	 ZGxeobrhfeeBh8FZ6Artkfsnc2em4LGrcSkchHcH55Pn/XMQwigE5NqQAfNRiUuzC2
	 SDHGaFTttqWwz/2nda+3GoNgrpNJKTG5Q3ZUOImICXzC5HuesSckNic7AnE4l9KBXQ
	 Ysm/c4R6VIb3NFC4bTgWkOMQZLzIJyBb81h01cPthxULptZyvuLoJvVBkV95jr6VeM
	 URPYk3OLyzLyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC9BC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408719363.7701.11136853331844241080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64e6f86bc7f44916ee1ae4083e37977ffd8105bd20cf910edf48a268e8584c7
Date: Tue, 08 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744087193
