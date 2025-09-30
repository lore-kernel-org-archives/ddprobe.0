Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F5B211290
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222194; cv=none; b=YsFGcukHKvv5A18qIEbjyz81bJHySMLT5oH+EaVj7KDfeni4uXXU44NYfuT8i1KBRsdG0Cby2z83Nky11xdSjXCfafPRbFFtYdUmVXZE27Fv6ISSiKDPo8W2x4SNltii7wSMvyg4wegHOM/0a6LYcFp2TFbwg4Y0fyItQjUsjW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222194; c=relaxed/simple;
	bh=+74ClHky97brK+2ikNlBk+sFQZJ7RFHfJj5wCA4tTho=;
	h=To:Subject:From:Message-Id:Date; b=XcXrF2P+uyWQxD10PEJlpuokS8XmBsrpXYSVepxQU6vabnkBJT5YyKaixlagYU3dgV2ZkLyABqZ9v7v01ko18qR6D/1F9oMzZfR5TH7dADxBc+t++5q3D6cVSNMDnAvXayYKMD3RJK9CWeonwih+vRWHF+h7mfn6wuDYmiNLce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS4XeX47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS4XeX47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3145C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759222193;
	bh=+74ClHky97brK+2ikNlBk+sFQZJ7RFHfJj5wCA4tTho=;
	h=To:Subject:From:Date:From;
	b=IS4XeX47XmOvz/6NsDsNipcQoUI3vnYjqo//gzyulQOXgfXG/hlQrtNnIEcLGqXan
	 Oo8ereflunlezSioylKLGc6Ti73Ou9VNimmBBLYooASungllX3q0ATgeQAtVQRL8b0
	 7XM73w2vMrb1f1En1yJz/Awm3Kw6n8mg5oLlnYI/hxDxq68Jfrb96labqVNy5r6mmq
	 NNmApnG4t8oRFVkldR75YjYCr2oK/Tpx+OO9UDHRZ5lK9ApzrvemST70zfgFxiCfEw
	 Le6XyvDpQt+MuGdUb7TdxEO+BPTRyN/lt/IRtgylNG2jhnMwRH13maxj2LDtKqCXLT
	 y/7Uvl7clnb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FCCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922219358.18014.14977117685254123670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4d8f78e9615c997411f3b05c16a178394efaaaddf6ecf3dc7ee2ef077f1d99
Date: Tue, 30 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759222193
