Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F9C187878
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723100154; cv=none; b=HDrmvRNNjlV8jwfeN1HRVoqBfVez6IASoBJ2fu2umx0+wagn5dLiphIEax8CtJt6Q7Z1/C7SF0fTKVvqN+rTzE3AaSni7SBkQwxqela5zJNlvRXtg9H77M1iOp9OWyrJVboP0RkJXmUXogontCBEGorw9B/lslGv8tYUuIu3CBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723100154; c=relaxed/simple;
	bh=Af4+H0+P+MDCCe4OzKMe3vIW/xewNiY83SKboCfIwsY=;
	h=To:Subject:From:Message-Id:Date; b=F1gdOVlq0aSjIwLbnef2xP5idQ6U4BEIKwY/Y4MCvXWxFSIoH0pVxQ+38xUie9BUN4j1HReDUNsS4q6JVN7puHWVHpUS9VsRItP4u/uWGD0SdZ3ibYrEjRvL41ZSyVrpbtigCckwr/QIRb/76IHRccWLj3olxyY3CTX0RLpmH5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBVryedQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBVryedQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A44C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723100153;
	bh=Af4+H0+P+MDCCe4OzKMe3vIW/xewNiY83SKboCfIwsY=;
	h=To:Subject:From:Date:From;
	b=EBVryedQ97JbtUx6vWds4Y7cUCcavvmjkEytQaq8si6/UHVrH2gI5xaGVpzkraG9+
	 Z70S/PqRloKB2rqR6DsxsJbBr11Rbv4NNrZzGBhYX1CYTnvJmQQ/tgNkv1G2D2Qvfp
	 ClPn7bBbiOWOO+/CjfPTX6APbWmTd5iOeMFaPDAW+hAeOLr7g99fAxnk1PGv+cpYHr
	 ZqgtU2nm6Qh4QgrRAx5RIq5WzIDADxuEOoKndrgb1EnOAmxq2lDink12tpqvORawPO
	 roQOR8uTPc1dPYq3piCMH9zaJRoL9tANg9jWWaVHu6Cd/pNZXfPoTiA4qNmwLnFl78
	 QyqlbgKNfm36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A4C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310015358.4575.12585906946456441417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b184c319e953b76e343f427097a7fad42670127862d63b66f8b2b6b21dc72015
Date: Thu, 08 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723100153
