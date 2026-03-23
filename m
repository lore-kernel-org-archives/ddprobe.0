Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12488373BE0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774307094; cv=none; b=tM45b9NYTVIqoFwXvfinqTytJBwipzdNP20eDylfdDTita9Eq+NKRRxa5e7OnNeezlCHR8XzeGOiDpri2Ux+JwL2J24eAUnqQNCmF7I5JXJVVxYnBoZIOfD/LCmJoLMkernVvHCvOKVqdzE70XDCyngVjW1sOuHvy0QImC6v/BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774307094; c=relaxed/simple;
	bh=+uP5eyl3r/O3TrFrIbLu7TXiguioEz5/gfqNbngJYHk=;
	h=To:Subject:From:Message-Id:Date; b=opn/HB/EWLWjeVSz6VsUmX58NSuaS3alFtOHrOitPSt2qVygNAFiA8/IC1DUwNfNzopnRod8qSRknB6lry556iSZMw60oKvrmefJltdTykOEpx29O2bmCRPA5pxrw/dH7dKa5hJBhsukeT5V4Mx0FZeqbM5Ve6C8AJOnv1UqDfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7pA70Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7pA70Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774307093;
	bh=+uP5eyl3r/O3TrFrIbLu7TXiguioEz5/gfqNbngJYHk=;
	h=To:Subject:From:Date:From;
	b=t7pA70YzK7ncVOjgxLSQCLw55G7vg7vpCbfBwRpJn+Im1gycnZ1uxaRNgYjNT+rJu
	 UFFnAQHH2Zk+trW+dRwd6YmCGD+sLYWkXpeCpaPNzGEvtukIr6lHNoO06ENgqtFXBA
	 fiElH6rNVcb0iEySk3UXr//v3moCxNkkILHNGNfDrcMIHey2JdsLFkYXgo2uw68NKA
	 HXwQu/PZgSLu8RcoGp+87tvSc/kLk/UmuobbXPMIqt+vG0iWUdow0vPxo25L7YbSH3
	 y90PaYBVYQ2Uneaqo1p4hae5NJcPYh+Hhhfq4R7NCgnA8Xn5cEixXVf4Tj7Np5poG+
	 cu1C/uj5+8uMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A2D58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430709358.31410.16945906675485171838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9a34c7cb0d093977aa95a8a69adc26561efdf791f152724f617bced9c97ed1
Date: Mon, 23 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774307093
