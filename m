Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702FA563286
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791930634; cv=none; b=e8YRFkC80V853aJOV+Cy9a8g64HuSzjQYF1m8Ar9TWBjOB75+FLIcgGpAQxC/g45AmsVY712JKqjnemikOKdlch93R9EE/dyT4IOxjskSi3hCowEMbMccznDdpyJOGjrllOYuLaeCXmRpto/CDLrEi/ujsq2oxuV65ASY4LCFrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791930634; c=relaxed/simple;
	bh=veVNb9U/txjw2oTLBMvY2MezXQ8BO3aWN+KI36Cs3aU=;
	h=To:Subject:From:Message-Id:Date; b=nV1yY2kH0nvqvSXOH4pDrT8NJyfFf1y5oDs/3pJHys6ep4VrjaOd/jVHMd5dAjno+QYeInpmb+FA1SWLURKnqHwNSez0XQ4lqdtVzbGWVYYCgVMqFC4ktWFiELZhp3Z5VFTt1ope2+s6JLYClJdsiRfeX/PjWfWVFiavcX03BQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoqVZDkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoqVZDkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35CDC2BCFF
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791930633;
	bh=veVNb9U/txjw2oTLBMvY2MezXQ8BO3aWN+KI36Cs3aU=;
	h=To:Subject:From:Date:From;
	b=qoqVZDkWGxzLwPQlyEspNgkdCB1kfpqgzVJvLXxoLyXGUup7HPNww8SrrcixCuI/M
	 Vr8N7sFDzOqrw47WB17AQxaX2DAN3xetr3RHAni70iDgAtuWOLDdB9VItcsDbvbOpX
	 4QaBbhViUyVSfOVy6anbzPBu3TUKl9+rR84vJ+8fUjYRLKNlWkfjJjZC4HU46N3agk
	 E+RHYbG3QmoddpS0XNapGinV/AZLIxPDVk3Z8bGkSqIf6nOcOz29Nz3K18ArmQfvve
	 PX1tayAKOfIoi1zIwXyYL2yLAEzsj6kQQCvkBmh/JgrRPWteZwC7RsZsu2we4bSwp1
	 6mbdkN0rV447A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0077CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193063370.10385.1241066821541385673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fd95a77213ed4e1e0468351742245dc99d3c3a321bef7a1f0673c90fa89892
Date: Tue, 13 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791930633
