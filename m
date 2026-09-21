Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7034D39CCFD
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789983634; cv=none; b=hV6MNBNbcWu8TxNPyjuI7EV7Ac+A5igU6sg1Te4u+Za7qhYM7OmowZxqFbPyhSacJRj6yQFmT7aTMvO+OnWF+DCSFLc6h3jyG3asr+PKcSvgHd6I8ee+lFjFWsfpYml5lr+xOrvWB0xTOCYd97YThIVJguhQuIqkS0usPEB9Cfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789983634; c=relaxed/simple;
	bh=xJ2ZMgNOHnDYoO9JUCKuewdcqWwb0aE5bXOssRGnIYs=;
	h=To:Subject:From:Message-Id:Date; b=gP82wlXvgREeyGsN4ASY2TcZYIWeFMmWsArvHCsFpXJd5oDN4XYkE4sQyF/qeb0BPHHOMZg8Be4PRE11Fa+B5YOBh/aY/5PD6OHqnv+0EJWjvD7k2tqMWA+YvoDpx90VEAw9SJvSPeLZEP/FLwJXoCdKvHgjhrFBSJdot+MD054=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRI9xRPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRI9xRPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5D5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789983633;
	bh=xJ2ZMgNOHnDYoO9JUCKuewdcqWwb0aE5bXOssRGnIYs=;
	h=To:Subject:From:Date:From;
	b=lRI9xRPHz/u/YwaRsi4aNrhHk3xb4qoI2FCvVgGulpFkxExhBWH11uiSYY/OibfvZ
	 3FMnFKRMHcD4C0xYPM3M79pl4YN2qBGAs6pUgqsfavDTcS/Hhk5aVCQGW46yx+8lbD
	 Wqp8vaM3rVuIQaiQAuSxK0bpSND9sunalhY899sWVqPEGPsap2l/FjzfMvQuXX/YC7
	 13Z6EVbLLV+9VRirSI6H7b1vFrfN7RtugYRXFgNboRSmfSCDczSB8RVnmqFLwZLnVk
	 YPR/P8d0cqS/ih6Fgz/0BmaBK9ThiRp88Ot462SXj/0G11GI5ASuOu0BzkmKJ8wc3X
	 GMD0Hdsn7wY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2475C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998363370.30973.12127230677557851579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7ce62f528f9ea9f30e910eac5c4d049880ad8c4b0d91fc604ccef736391b3a
Date: Mon, 21 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789983633
