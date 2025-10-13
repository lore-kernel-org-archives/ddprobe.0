Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF5260566
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760372394; cv=none; b=G69k7Ii78F7tT3z2MXKKj6AMhzLK+Xci2GReTVRBmUatIeJwvTMl0GfFQb7RgKTxcXo3JXAF7Bh8F+ghy92DGTvoECUI3bSYIrCfdQomAHFDyaptU138ExZopxwzQ45JHNWJhp1Mq1BT2QGawDQjBXmt8VgMwhNB6NaKF7FCmuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760372394; c=relaxed/simple;
	bh=ecc7Z4nsJssSCVAhj7tA8LoPRdx8R0/wfOZLNX17A98=;
	h=To:Subject:From:Message-Id:Date; b=pM8TjHYlw6pxZVFaGgdW/HfAvvQLNrtTG8ZuoP+Pj9yAEyJUNPwTyxP/53BZmdDBj+ZnnMr+IuZgH3qgYNOStVXJd3pLqcIKvx6B/iRWP3Fs3M8GQhSzzQ1wH+Wbb2Tpuj7IEwocPq1O13ukoKX9vOfAYWyws1MXgMcEVP+k6lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2LpwQGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2LpwQGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1518C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760372393;
	bh=ecc7Z4nsJssSCVAhj7tA8LoPRdx8R0/wfOZLNX17A98=;
	h=To:Subject:From:Date:From;
	b=O2LpwQGBDeGWEi95JazkfxGjcs+e/nai0mdA+ZIRY0CvVmy1e8TcgiBpYngUr9EK2
	 DKSlGpW4NzTqluMJS/ZlCwsoRNyhRNWTdswkzdOm1Dm9vpn17XzxE6QalpHX6qPjEN
	 Af76/bb3djpDaDeT5X1JRedkqTpI5LxMYcXPNIn9692bXVhkGmrPekzdRG0WrAT6g7
	 YZ2RvCD9aI2QH/Rmm0NyYnt6u9oP0WYdFisHyrdwdwxpXYV8kXCgwSnT5F/NJYVV5B
	 oKLFlKrroANCXRjJOIS6lcnQrDYD21OQat35io4YgNnFgBFPnlrgjquQnqf5itNtVL
	 3gZGV/C5idOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFFCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037239358.11859.8423230503061709730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452861d97502f18b5a097563b9d4ce7d5a449609fe26380b3442d81182e9d648
Date: Mon, 13 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760372393
