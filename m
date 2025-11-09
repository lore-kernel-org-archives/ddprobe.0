Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3C2611E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762646993; cv=none; b=dOiwHt/aayYb1usfW71bBtc34yZ9OAFyLsh83/lRF3f+0G+d/bWXWMrDE1OFNZSxs6UosdYnl69ztv5kaPc76cH6Hil5nANHw+ZOB2E/Nh6txL7M8nurJ8mME+jskCOAFoglWZKVTxmGyR0LxH6sFL31DfDKUdPLeBy3mdE+rr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762646993; c=relaxed/simple;
	bh=unbxRi88PwgvlKTwYwJ3u713DQkrrCj/yniF2z+D5Qs=;
	h=To:Subject:From:Message-Id:Date; b=hLISv6rYxYd6viZRDqM5RKjX6rhO5W1XIrnQrQjjfeSMCs7azvwnvPkRZbI30E55PjfO5tyef4OXpQN18F/lUdywkzk0H/wQW4ksW19lepg+b9B9gEAb/5jezMQWonvhCvWINQQXnGPi6Zq8UXeSYLReviRXOFbKW5G73H79zIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gja3D3tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gja3D3tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F729C19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762646993;
	bh=unbxRi88PwgvlKTwYwJ3u713DQkrrCj/yniF2z+D5Qs=;
	h=To:Subject:From:Date:From;
	b=gja3D3tg/dw70VDRI9ZXQVzfpW1Yw7gK4/uJrRLAOD+kWde/Ph+jvv/NFY8Ka8Jaw
	 SiZ0b0oKqvMNqq2wtqwz4EgUiN2eUEdbtwX5ffZvBrXLG81tXsG1K/ONAlrwF/fxaS
	 DHiC/tH6ly7smudeyzzEzn3XyLyavvYZ1Lad6dSIcIF/qNObkdU9o45QSGJzuZ2JbC
	 Edc4jD5/CWYUkFHcDjUt322R35T9vEv+NnjgsSJapqds/+I/CMDgfOsH2KO/w4YkOK
	 18KlnfYEmjGwqpuvwnGWlFlGzagWqLHjVGhpL1NXr7nsLKgtk66gUhi2XFgLWDPjuG
	 nz0O303daVT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227CCCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264699359.13457.14337275430135344668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf316edaebacf65ad8103e3433faf0c9578bbd4d57e63be658554c6341dcfcf9
Date: Sun, 09 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762646993
