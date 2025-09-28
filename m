Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FB42C08BA
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759049994; cv=none; b=r0PdNLnq9oUMX8haSKIFM4Gcp6uW1FZU366wU9c63sWVltoWcGOGbqFzQJ2Yw/Dn2sdcFLXpk3lVezUL91zWipuAW2CkZCt6mG0YR8uo9u38gHSqoyCPk4fQsSxTry09JP3W8R9SQfhGANagsu2riZ3xr/JbyDddS0XGwlBZUCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759049994; c=relaxed/simple;
	bh=rsRZKcOU6Csjx3sfGbA6f+xRTj307aM+wyHN6v0eyB0=;
	h=To:Subject:From:Message-Id:Date; b=Q9+RI9647pNAkyTnvAAnyHST8lP05gozI9PMedJ0dXJ27kvxkox5LPyLy2yNemEq2VF6AFCj/Yz0wWjQ26Aqb/gCyHOrkBD+0z9rRfiLGhfGUqLjIRh1/OKLTZEFKjtDU2sSwWpn6nMITCQpGQc88vL0MRvm4eQUorD634LuEXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0TRsJDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0TRsJDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FADC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759049993;
	bh=rsRZKcOU6Csjx3sfGbA6f+xRTj307aM+wyHN6v0eyB0=;
	h=To:Subject:From:Date:From;
	b=m0TRsJDvf9y5s09JI2VWYub+m1ii7c+EtiyLp0hsIX/1JCVa2id49+vDr96bU03Av
	 zdHvomN5G9fYj3bfIoWcmVt+v6UFlnChO6o33cFUbqpUGkYsn/As1WBgdekGhqwkZA
	 BOrw4xUwzGI+DfN0mJy2PeZHReiMgrTG68eD1UAEJsYM6HP0Vl/b7VObZdqjNRGWlr
	 Kurfh9q32R+ZiF8JJAv1gqJx5xXDL1NOJJhV3dU6yFkf11VHxABn1ViBhBkLtwzGY9
	 3WlrUf/01stPWsKzQIsTGmcaqgQL2LfR7tpqFXpvxYLFywqOJDtXdJyb2RNlt/WoCr
	 8yhKLwFCPt+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780FCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904999360.6887.379558236451226647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802c938f021c26d8abe949e2d5f4608b83b32467abe63822e32e4652e64656d0
Date: Sun, 28 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759049993
