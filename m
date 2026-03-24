Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC913CBE9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774350294; cv=none; b=S+ckSHhx+Q03YXZh97LIoSEo6VfItlK7R3kJ4ujW1VQJC+z4uq00BYt0jPdAEbsufjf5kCtc/LJ9se9xdM5y5dqcYdPjcOrMw7SvvFjp94KxSIGrHuYhPmA7HIRIdhfLyRTL1UltQFSjP1cqEmc6TL4OstswF81mMfuensEgc9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774350294; c=relaxed/simple;
	bh=3QiOytFgzoyCVEmdMs/f+dv+SBdZR0nZXHbonE41sus=;
	h=To:Subject:From:Message-Id:Date; b=S2tWYZm+w2q23fK27D13bF3GN1RWBnKujPOEeA9oyOKMCfQnQ8Cz86vHuehU121VSMNrKxLRZlaEPePxe2mwU8Nm8SAEy/wFo7BlLOQdejIvIZ4zfDqNavRZYIn9MzDoIumbMKVeuayRc82aA8NAsnYWPxazeTLW5UOpK2sC8KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQcbZmrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQcbZmrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0818C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774350293;
	bh=3QiOytFgzoyCVEmdMs/f+dv+SBdZR0nZXHbonE41sus=;
	h=To:Subject:From:Date:From;
	b=XQcbZmrXnvsVDEE/fTqsBmYqoQ4pA+eQndJZZRiaX2dAy1xvRqiXSocH72y1ZsXyd
	 IAAnJEZwVa35qRUWXzihzjbNMn6TTvtGZ/KUlrgEV4jtNrg+1oDVNUk3gSj1NimQLw
	 a3zrrnnMU5qkV530V5ijY1dXu2gHqNKj3o1HdMneWtZwpkrAvT6sVOLU0+zCGWZc72
	 0KAxXPg0G/ChuC2gSBzebC10AFFyfBZ5xhb+IucknZ0x2WDgM+aNLBy3goXmALdjHs
	 lhLwkC4G1MGdV/dFfhQrwojZb5iekH3+nlOXC2XAToUvG+rGsP0ryEQrruw93/FNME
	 aiopROvgVtyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A40E9A76A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435029358.21355.1415753095597562788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244cb397129c240e40002b302761a070432588ee0ebb6dbddce431bd28ef1f6c
Date: Tue, 24 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774350293
