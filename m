Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F6C211F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754249395; cv=none; b=ndwB0uaSdOJO0sYurNL3ONDIDnE+t+P9pdvf1e0rGutr0rmuqqBBGXnCROb+oXZEQEgc6rSXRwK1s+CUi3xhu5tNJGhHMVYISKfPubATutBjrEWckLzoPy7DNPTitGlwn1VKjzR2Ykk9/MF3VN5gDhD6f2WD2U2l203/JRKLpQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754249395; c=relaxed/simple;
	bh=VwpwzK43MW0GCOVezwnjwWFbiiMH+TGsweQ982sU2z8=;
	h=To:Subject:From:Message-Id:Date; b=fKM/UegMNtWUY7hWIOVG5x6g/1BpiQD/NXff7ppaMXDDKzhqW5V/KrPH6bl9VfRFjPXNSJ9itiR2zyzznmFlyFZXOSdTkX6o0k8lGN5jdWUi5ZV7YP0tUhTsSJeCwP1xsXkTEvl0hj+6Kn/ITc0aGIHYTqsCdmGbt9ZupQo+csM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLTYkhq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLTYkhq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2735C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754249393;
	bh=VwpwzK43MW0GCOVezwnjwWFbiiMH+TGsweQ982sU2z8=;
	h=To:Subject:From:Date:From;
	b=gLTYkhq0IeBXcIa1WjfXZeDSf6g30LGLwKtHPGd+nVMaGB4s+A3zYNVODbqbzUxO7
	 ufIfnaII3mT/tRydHnjLsEnnQzVjqIkTHqpS3KirFYrhi28DwvZXdo45QGsIQOrBAD
	 qCICatxA6m+X+H0F1EXghup8N0AB9xZy2TATcABrPhLZtIk+ZFFEz+X4CO1h43P4yI
	 OfxfI2PcZj8J4R2NSbQCkz9furpyRkjUWmpF+sgcE9o0gHBFYf45YUFl2FUoLwmHMp
	 mT56m5kLk/J+7Whj/uKcTszmptF6i8P0R6HN46Hz1H/rVH++oSJRxAzMtNvjGmUBUr
	 o4L4MiUfcGLlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90220C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424939358.31920.14574588058512722241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eeb0881ec92efe6009ca75aaabd585129452c3eff8e1406a32c66f10534d26d
Date: Sun, 03 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754249393
