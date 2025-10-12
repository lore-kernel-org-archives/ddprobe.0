Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC6979F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760236794; cv=none; b=skdHPwAPlf8/pQ7jhhmYqdU/UX9hTW9NOfrdYzILBc7ZXDTk1mt4hYnxqM4jLNEwB12W5usLA+K0qaZLNZThqkhN+uxCmdLOfVJfAipt7PnCXW+TK1QBwldPjOizjm/awzWfXVra96tPh6YjjkQDCEH/QYf6teNr5vRsxYP+wUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760236794; c=relaxed/simple;
	bh=jcgAoam6YRKppALIc9uXgUryRrVfAjp7f5jbpWPGdYs=;
	h=To:Subject:From:Message-Id:Date; b=S4u9VEy5zSaP2HRD6onPDtx0PB3haYzSZVkXJJpnbSy9VHG0KXCD3Zro6r8Y9I+LFb/g3xvkgPDKW4JmblX2NWPO3CrFpgPNe78QxThCaPMWb7096MM4gBV/N+d2qvB/fliyIdGw/hzjsMW4ww7N+AqotDPVtd+bNOFe7yo4CWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYRaZoFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYRaZoFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD150C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760236793;
	bh=jcgAoam6YRKppALIc9uXgUryRrVfAjp7f5jbpWPGdYs=;
	h=To:Subject:From:Date:From;
	b=VYRaZoFB2xoxqSh0Ts+fo/DPX5WMMcUuwRnbMz9Lxd9hyt2su8M7GmlyhUhn67z44
	 X0KUBA3VP65+VrV5VGPgTGXAheOnZ8pJoG9MwGSENqQXpmJB0FZfz4BUIMlC9AU9IE
	 HF8EMOPv2I/NP49k4sqoevYCtnYGw0FCXwlnwgcSUgjmPQgm8TqWHBy3GMfvRY9lBG
	 6LH5Pr4nhXsPLt/bsmrOzx5mNGGbnfnIrYBDrVTTFMq6e1b1yrfAqqquiVgIOgc4Cd
	 CgLorpUNrH3IUjaeeHWXliChZuq5mPn0d9v10S9TM3figsaQJyM0iR5mBy4k1GGml7
	 51Z+zrIK9G+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF1CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023679357.11530.17077539522897607408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d92ed938e84f8698d8e57a62f3fa431ba097668999c3d569b2c94557a74eb97
Date: Sun, 12 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760236793
