Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1B132F77B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756810194; cv=none; b=HitP28cTZElyEncd/TyAvHqhbq0QI0F3UjueB4iJGUJm6emi6Nes0qUcE5pbEMRGgm39yjqYF//z3tIWoRTBYoiC8PwxbjT+nIcBbw+IFKdTuYeJQqjf7qErWhHHoadlcqZiISlCyGaR00bkoup5nc3yh6kKyhDV7WSw6tzbOYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756810194; c=relaxed/simple;
	bh=LXay6tLEc77edgvykv7GTgX097/eu2KGMb3hfNFtHJc=;
	h=To:Subject:From:Message-Id:Date; b=BJK+CzWT4WZ4VcxmZqM3kk5ylO/0b8AnYFrBmZ5/qwR+1DHel6uKJ9ryclYV1/n/D93mWLMt4340maV/viyPhaXA8X3Fh1sP1Q5qrlr2HUpjj2avqCqSvVsBIpGBUY3nV9yUkdY0y8Xv7WlKwlh7Wy7t/qj90Zt4PZ3I3vvAxeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW5wWpvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW5wWpvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756810193;
	bh=LXay6tLEc77edgvykv7GTgX097/eu2KGMb3hfNFtHJc=;
	h=To:Subject:From:Date:From;
	b=UW5wWpvxqGRCWW/+zdVE08Fc6jexzCnvBNLhC4L0RdaO4AEMs7HSdVqbpI7k9Y/qd
	 V2UZu0TNVUvmOBFrEtpMjFlL/Ph7YJzhwfjG/xvldcJhFhiW3gJObsxZ6Zs8KemJBW
	 38NHQ4ol2DjlnLRmc39jcnTZLR5W7BNs53eXwiw8I1ZbLVNghvYBDgBd+1r/YXYgzn
	 nYSOEPTNRzb4zf7nuSI0cLVWVzq12ZM3czO0fdA27SuT5AFQ56Ojvq/luFon7devq/
	 /jT4z87S1thwSLVBCDkExX6vC58byJU1BeJV3PitOklt+iY12Zb2h7NVP/kMPmsqGc
	 feb4zRCD9Nfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17ECA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681019357.9321.16313916374738756035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5fcd99d9ddd5d62f33d1bc0bd79477dca7ab9393ae5f8cc5dc8cda24bb990c
Date: Tue, 02 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756810193
