Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42958384CE3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783673914; cv=none; b=SOJWMWp0Lhd1mLJgXNBfNQ3q2rplXmpFVeSIQBjolkWwFYUF/KbglWhK2AT0PHLXpia+6l9FA7um5PItsg2eL2/JWzxhdkVE8wqz0AtI9EQwUquBqbufXy+ZzNbqZv1twa2QmbKswpIXKwRS6eH8fy7idxJSkTj6H71IOfcBzAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783673914; c=relaxed/simple;
	bh=v4Yy13DtUhquQa4Axdr0fGOwVX84l5akqIIAh+pQE1Y=;
	h=To:Subject:From:Message-Id:Date; b=eYUzsjUcsgvY4v3Ub+FrqRNCXWcCCpVrn/EoSeUIvgq7PwNkf5P/kzh5xbE2VmfUQndhFICOFuezWK2fB/1aGLFD4WjLzwN99MnHqO3Y4ytKHPEWHb5gHyHCTar+6RpDks08FDzAdWSSSXtfsgRbl6WU1MEyQHK/s+YjaWZvI1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDug5bGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDug5bGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF37C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783673913;
	bh=v4Yy13DtUhquQa4Axdr0fGOwVX84l5akqIIAh+pQE1Y=;
	h=To:Subject:From:Date:From;
	b=rDug5bGd5y7FgzCC8G0XuJ89HWhrWVg6z6y2iDCYNDtmDLWOF6C+2xi5j3FNwai1t
	 jLdrG2w5thqlIDWHOy7G+D7t+rJ/Xq9hzgeRra+wL33uAotRAv/qsvKKGjLgernpZB
	 1OJ0jJIF5JWRhPi4Vl8Q2s95tNrUXitUeo3MuvusW6oGS59PbR8LyWQcbM6bxQEAnM
	 dFhshG4figkbov1GMQp18MZA5jEOcISAd6uOVKGYWLAdO3KZDLd+91WAnb8teOAGYW
	 hUjDUecyJ8+Kfk3e4StXBnROkCfd9Ts8vYWAldPndEoqP4UKWJpKkdHn8XB9E3CTQy
	 EeBArR/kHZr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85AEC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367391374.25594.5517783638908853439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c636de8006636de01593cf2afc63b05a4bd2dddb11fd2c865dd25947bcf6f48e
Date: Fri, 10 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783673913
