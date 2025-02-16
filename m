Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD9E19A288
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739723336; cv=none; b=OrvV6tIy/rgAMTwpZ1ksfg4BOjztF8McoVOeUn1JGMKmrbSKHQKCXWXsy3H0wglsrtgPjv3oqA1Q6W/T2unVEL0+NaQ46XB4iJmISBD66BGxU5/fWMmfZ7EN9St3l1XPQg5ewSsZ91qZFFhPr4snJtG2okp3iDbCOQBl0eJzfl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739723336; c=relaxed/simple;
	bh=lSoFdrv/cWyXUKO87XULEPZDz4EZaH9vUcotgwO4DkY=;
	h=To:Subject:From:Message-Id:Date; b=nCoj/16/ootajifqXqeBBOOD+ztodmhC20LgG3UaKAoq/JQpwjo1Dudjzq/Nx9UemdWQgGK9GA+sA0Hg3funje2YRXdYdqrgXxH3KNNAJISwQrgTj7LLPrzGT+jaXezzerxqV2Z96TdHSKOkpnZ3GEtebBgnF85mnXVA2E3JTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5DQbRp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5DQbRp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9870C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739723333;
	bh=lSoFdrv/cWyXUKO87XULEPZDz4EZaH9vUcotgwO4DkY=;
	h=To:Subject:From:Date:From;
	b=s5DQbRp4+el4EbggxHH5meSWrBngPMWtTbZpsomJkbc8jsmQ4lHm2X+qyK+OjJ2jX
	 BCTumOVYyNUSN6Atk1wei9dvv2iEUU15KC9BrhVs05sJwEUDp12gr2zJluuvvLDp8z
	 M+adSkx2YbJppvE+NfKLPNjmO+5FMNZgR4F2AWcZqPHzcOKFKr9YF7cTY9CHHlbVcw
	 dNcPsi16jjhqPJnLVqQCWkuqgoehHte0/Ab0pFSFSMVsZwRxxYvj/jvUzFgO6nmd2I
	 5wRM6b64zvv41g6j42+cVbBbGBmCpq618vyA7i3DQSojmpOV8qECE9X9zWLAD7XDpe
	 C0Hr5wC04rNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96420C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173972333360.19186.18170956787694019171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ac8bed4c3314e892e7d12ac2a0979283c245b787befa40b772ebb5cc1b5dcb
Date: Sun, 16 Feb 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739723333
