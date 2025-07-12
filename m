Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F8223774
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752286194; cv=none; b=pRP5ND3SLpTa4TQps5id/IlSIDvCy1QasgZKjX0Mzx7/6gAsFk5hVZVG53vodAWNrIfWe/pQXWgnRqAo4TRfqF3Is2SOuoEVORLDTpY6QCtWSgzw1JpqzJF0J6jxX/6rRUnjGLhVRw80/R0Ow/4KL4/szoJx1Fgy8zMms1i9I4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752286194; c=relaxed/simple;
	bh=ohDJ4Xmqxs0DhQIunntSD+n1tv0SBWQzMtALEao4t6w=;
	h=To:Subject:From:Message-Id:Date; b=jfyY4KnT6wR454GGDgeITPPy3HJmvcbhJdO0RoiNAgmatQsBySl1dvBogeGtrWTtoeK0wYOY5Uy6FmeKtqU1ndsFLVAQwWn5I32nywsgQbsc5DdFIDnU7hhRoEqmeTk4yBMNi0/VV3VMnMppnv7Jq0A5bgepN/4rwLy6WdsbgYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNxLRu7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNxLRu7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F143C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752286193;
	bh=ohDJ4Xmqxs0DhQIunntSD+n1tv0SBWQzMtALEao4t6w=;
	h=To:Subject:From:Date:From;
	b=rNxLRu7eTJ2upvsFEBPin2k11/hY6LSnJCkCB3ZuRQM+nqllNefzHxTdBgKhQoLXr
	 ZIsaC1w42zFGsz3pQWHh8asRN58mDlmYeYrNRYl982ATspZAYhkH2UZ/NMRfNdkCXq
	 AUpUnsSDTJmuEwf/VEoxb78jYSjLHcCEBdouEeM5dxJFuyyjoXI4bzL7VuUyl96esJ
	 jxJP/Bb0gdlFDTS6r22NJDDUWLcArvIVhPttLVeISZirWI1ZopMyJ8ZUl6rIWUjGzX
	 xYwdQlM479rvKJp27Ww5/yOyYrOD5/xE1vr07fIEVd/8KDvLh5sd68ktKMFm23riwc
	 oosuYjCOVslng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49DC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228619357.1495.11711351168466406753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e925188d8c0836bde9bf6d15c3e07b301c995795e199f04cbe4bb47f44db42d
Date: Sat, 12 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752286193
