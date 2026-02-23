Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7D93451C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828494; cv=none; b=BKl+u7ee1cal91+UJKhqfg5Eem8dgUg64PELBKRub/k8eLIKjHecNSTy40nh8YjsUMME8XWyl93lNBoiTc1EaCxXTUP8yvJPPjAon+fRF7SLPly4KD3TdC5Miby/6DlPxyqe/PI5lcJbvWIWvM2meS9cOTyOWL2jXD/U7RA8qyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828494; c=relaxed/simple;
	bh=pko+BsqVj7eq+GD6q/ZXTXRlGmJIiV3oIS5mBrzHkPI=;
	h=To:Subject:From:Message-Id:Date; b=AEJVZqXhQffyowUwdgIWA4aXq2wX48r9zDVeDtmj31EQ+q2uUjymujRpSN+eNbOjifcrqXjb1U34xMN6fKMCnCeL3RUyX62Pm2o4XDtjkVvsSh6FnZOIuZTKEkvZg1gvfmfsOOk9lQqblXL7VRJ9oAbcOKsd+2sX0+QzzD7b51Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVIfcGls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVIfcGls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA269C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771828493;
	bh=pko+BsqVj7eq+GD6q/ZXTXRlGmJIiV3oIS5mBrzHkPI=;
	h=To:Subject:From:Date:From;
	b=SVIfcGlsQ67leV4VjjEghYKtnOE7m0d8Ohlj520lZhVAQj560E+YqzNlRWiak4IOE
	 pWVGuAjgUYpWUDNJQupsrdT7XCmiPDOlAmswQ62iphU1lGbVlFklefanm7gMQhrNHa
	 k/beVsUkHu2e6cdFhB+1LKBQB/xfYz31NNsPgtIB+dEv2rE6s5WvQRGzyooAo6DXBj
	 1lufZdi/TY6/jKxJCeK28PsJGTt820Kjohfe44hCYDCNmWqJ7apeK94xRhR764ZGcu
	 Ve9IbPge36WAMhdW7oBPmMH3zov9Z7nsl7Tih48nF8VIv4d7iQiaZ6lA65jwseJDI/
	 deWoTiS/jGwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93446E98DED
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182849358.865.3686738928797435561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70c64d20b9d9d9faaa4c80887a3d147fc847ed1eca06db175f1965a08a8dee7
Date: Mon, 23 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771828493
