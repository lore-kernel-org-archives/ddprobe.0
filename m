Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BD8382F3F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772725494; cv=none; b=iLgmDqSo2aa06iKmBGTzN+oyoC/4HxB1R8+cQ5rwGPiRqt74VTwUi7glyOJhcDl/d9Lq974n8bicbMmPKx0HdFokQNMoPyITBL9xG6x1IEZ0CdJSw1NgyYD/A+zkpWLgESrmwBcMExNY13t4pqiKObd4qSZ/Tboxy2fbdueTJ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772725494; c=relaxed/simple;
	bh=KVZsptS63cyuxJidB8JZp42lZ2tHhepJVafXVbJcfXE=;
	h=To:Subject:From:Message-Id:Date; b=bDniDbhyUJAi5aCweHnZKMLXnpkHjjNKppJhC7rvQV9F/gJ1Bemaet3vujbYcyaDTIhWMt0gLZNNEW/BmJk4BY+9alqtcteEbDQkPe2A+sKstbBCfy/1DOfkLYJz/PawHMY1eHGQ8CmjFxrWv7fGGJe/eosprnxg7g/tjfUfsmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvHI58eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvHI58eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B87C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772725493;
	bh=KVZsptS63cyuxJidB8JZp42lZ2tHhepJVafXVbJcfXE=;
	h=To:Subject:From:Date:From;
	b=XvHI58eNK/ECF4XTDoITUaYo0rt7mYyBqvaXrB25Dv8i/XI/b3dztgjNf1OusWiSs
	 8hXXbutsOcgEfyP1j5BylcRaQDeDCKhUp+k1EIl85H29/Uu6AmkYchT/DE/7ycVC4B
	 MJwiyzo0q2ldScxd0/ZJIFEXlBerg7NAujROH6DpezABcFDMrhKrLnkjQ5XVMbCbCL
	 WyvEA+9s8bnORNjTPilLWhjZki4qPlA71r72VLaHhvkUgoJqnDiDE5bJknupg4I6Rs
	 0Km0piC3YPJoo3DMNBkUHrQQGqwRy9nlgQwhWKkKFSIaXaJMdG8sDpT0IVdJuZ6lRL
	 Dgh/e1QjeL30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90673F3D315
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272549358.12490.4345711944530877338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581e826a5ee39567eb0420e380ce51694e224b054a0c3a9ed68771f123db2df2
Date: Thu, 05 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772725493
