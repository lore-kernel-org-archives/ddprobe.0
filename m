Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AE379D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742147394; cv=none; b=mBAsRpI5FTUwoUluOEckwrXxUVgrmT9vf83VRd5Wcsg3MGK6xAiDEWDyG0oxRhAwWdHlZv/6Q1FwaBZ7W8RQqy/VzfcZ/+wDJ5Pd7GkdQVy21803Li8TsFpSTYpyAcZq+vEjxVoxsuh90b1UeXMLecTEkQ5FgQkTu0z+/RJ+y0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742147394; c=relaxed/simple;
	bh=cV8TXfF/zu154bUejZ0eSW6BuvTw9OQMUAcQBCk7XtU=;
	h=To:Subject:From:Message-Id:Date; b=Xg+iRD4s5vML3dAoh3RE5nufpmwgaEm9B/Rf0cG+sASqeiEMW5Qq25mhC1e1R8BTmo6bt7pDdYZereHl6hsqjVWlyzwsaW4dZGBoU2wnLKnp5J34skNLMEjdT3ZSmJuqvjuY3RmZulPNkrwUWuLJG2EC9oEG6hXmvx5bJ1yRGOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWFDXiN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWFDXiN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C872FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742147393;
	bh=cV8TXfF/zu154bUejZ0eSW6BuvTw9OQMUAcQBCk7XtU=;
	h=To:Subject:From:Date:From;
	b=uWFDXiN2R0TXgKEYxsECC52lt1sQGtIzoQl9rjcefQ394es+rHw5NxNH9aUJ/9Obk
	 sFI8jA7xb0eR6Gj7xkwfTc2SuR9F6RM/sxiu4Mg+SLGBDt3XGMywoK1FMH64DubnnI
	 joucrtq0P+Smj6A/4HE6lnL6Q9XhdOKkcOxcFB8yfJnA+Y5AmW3KwQ2cowem3vyJ6X
	 4GdNlADqGw/8v0czUaISgHfSwt8pSvIp5ZuNzny53VpW9cZY7mR2++mp4gMtueDv4E
	 WZp1EL1n8mDGpV2xddyCWECFAU4JUD41STgHk6vdUrBevZqePTusGXtPVUy3E4qIRP
	 WUfIZUIyYthVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD551C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214739362.17013.9247764850735201412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c759c8406d2190e649bb9c5c7b55c9cc0f15e9ae6a1edc080f4174bf66ad99
Date: Sun, 16 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742147393
