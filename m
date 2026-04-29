Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B2D283C83
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777442254; cv=none; b=TnI1vrlyo0L3hnteAPNFJ/OG2RiBehGQ2XrbBw7Jv/BjIzBCZcnkOTgIopmKBdzvBZFFsAbiWAg5j3VGPoVtmHPRJhPXCLIKFloMSefpNUHzTDHwejZkoX+xAm+rbJgJe6jo2+GKSFugNtxq610Mfi60k/EYwzRPsNUfUJlZwAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777442254; c=relaxed/simple;
	bh=emvMpmzn6kg0vwZB4F+iEYgPWJRGuQ6UwFKc2rsc9MY=;
	h=To:Subject:From:Message-Id:Date; b=QmjRFcEUUny2ugahxlC9b1Xlm+TzyQLaVrx8SqZY7/mmIFrad9d7V4TF+hIdhx3FxubChwu6sh7kLagKPGy9Aio3u9sE5Odh9xwGGBZYRw+yfEaFerzdxsFmQq20Z6PXIYwXwcnOAKB9oRv824t+oeV7pvyGj+Fgl60bpwyFL3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhZVOkHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhZVOkHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C449EC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777442253;
	bh=emvMpmzn6kg0vwZB4F+iEYgPWJRGuQ6UwFKc2rsc9MY=;
	h=To:Subject:From:Date:From;
	b=PhZVOkHd2Na0uXrvZfzo/BkOfht1xxTW3rtbrEDiH2hyf3mBL/7QPASn2hd4sIaq7
	 Fd/yC2ZLIkbxeuy+kkn0DOnnYtpi0Z6saXcof9OPXJFqZr9aua8ZAOPfZ8xRBlMCd2
	 u/aIIHBTaGpuS1LkN+6plPC0HpZGy95XdvmaWIi4ddthtq56BZ83LYkgFxWwFLjF7I
	 AN1tKgdz5+ErrjICmVoEdMn2M4jYpvfFxaJeNi+Jl7XcQrshtVsJwyJyqt/ot15jyy
	 Bv50YiyC4tTVb9z5vBegVPjRYMtfMyrk34kI71Ua/Qzq9AfAvOnQV/oa5OX+1iXP7G
	 08q3Fp7akLjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF190FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744225369.19351.5369523985469403306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734a0c71a26e18c62a3da5f8bf7ce08884f1bb9bfafc8c3fa06067b3b7b4150f
Date: Wed, 29 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777442253
