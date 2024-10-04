Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29213A416
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728081954; cv=none; b=tiDGrWDkpO0n1sIzdeSGekolUnR5qdYsDG0iX+cNKFJFn8taAd9QFhLVxQg4+DmSd+ZPOSf86P+SCdPjhnoIO2DqLwURPtHZgz6aOSER10AY6H1rPfLIdDpoFT7NUyzP1RWMge0HLfVAx0Wz6ZMqZ47bsXAkwcu4Mu6tUHHza6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728081954; c=relaxed/simple;
	bh=ojqSXUPDPv0CPn3X70jwarpUv1FbOyN2T4MAl66mEcs=;
	h=To:Subject:From:Message-Id:Date; b=c8/RH+O2bXhwKryodgMnMrNr5IwCTP7+VqLKgdXNxn4ZUCsK6XTcIjc5dHT4ldbMDcPruWdsjBFu2UFjt65E2ftr1H1ei3V8bmZTvNRr28cmcOwklv4NJ8JPYCPstmrF6tbPPwDedNhkSmx1/4ff+X4tgKkx3vL77Tdi1R4x+wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLtFb1/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLtFb1/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FBEC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728081953;
	bh=ojqSXUPDPv0CPn3X70jwarpUv1FbOyN2T4MAl66mEcs=;
	h=To:Subject:From:Date:From;
	b=PLtFb1/gyjyk1Qml9PT21VEuq6bABgrwwmca9VBBfkpzuOQattm4bDO2I+WAw9UGf
	 nIfZubP48YIga/Gw22MMs5NyoTX/vPJb0lZTii2mDJcy6sEdq4TPkgH0jI4XoXQhvQ
	 5tsP1dFNqrZG4ww0QCq49/kkBlOenTtDpcRVzVXjcKzGzhUyk1d1wU34T7EWpHsTk8
	 5444z+AFqYY41ehfO7+WnW3XGhzNeea9gx2yNqBsUf0wd5gMOfg7bgs8YetTaIGCGz
	 UBI5DWQ0zSxnKXcUENruWY08oB0d6FpD3mECG2+U5T8LPo2Wwt0oUEKc2aeid8iQQ5
	 K3De1MPkf9uiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F536CF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808195363.10032.3796984257035457790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090c15224efbf4e00dd848753bcb632c580598f6c752f59fc994f1ad6c098193
Date: Fri, 04 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728081953
