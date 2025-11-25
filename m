Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270681B4F1F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764031974; cv=none; b=FJRHbOo03rjuHPBI+0UybyTJmpsT0A0DJ50KPUI6ddYDVE9US1zbOrk92ujN7uG7jmCgd7Z5ZsvflKvoRLPWlz7OTuC4DkJhL2ZgWE3UX0nyfVFGTG0vjGll9Z7n1C0/XC+D4N3tTXO7UHeAl4r4w5e+Uwab80+jGayDGknNfUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764031974; c=relaxed/simple;
	bh=knE7dVOQuTNz6LR8q9aAljVcdD7lci2l9lbOTt7EDPo=;
	h=To:Subject:From:Message-Id:Date; b=gfOUUu9FWEi/ZMOd7KYNyGRHVRNYLZ9CSzNA3Tt+kzvlc55o7t3zOAOidhUBof/CeoM/8ftLegbATZN5+mCKCG08jePvb8HdG10GQCdsfhodUME974dnH3K2f+xd/Gy8yKbdcA59AbyHgUqsl6JIPigkG1L0F5T5ag7THJ+hoM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcB9feNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcB9feNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56C3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764031973;
	bh=knE7dVOQuTNz6LR8q9aAljVcdD7lci2l9lbOTt7EDPo=;
	h=To:Subject:From:Date:From;
	b=qcB9feNYOpB8ysdVFCZS1N9M12cgmTPKRjo6ObY6ZNfK6TI6tpnVrH8TI0vP0qkyB
	 mJKIJCsAXEwGv/EPDuyKQnzglYENxZJX5jOkTLEtlYc9uTGHwby4hlbDTMKhr0daSW
	 uqqSxzrVnisYTne3p9sP/Y6CTyxbOgtwxXNpO2W56ZDc8TMlNRTo7Pay9PBGLQBCSF
	 aQoxDEgPCNdbtD3d7x/el0zI3xvTaUTN0ZCIZYDezZMjgYUriX7EE98fFFKVIdPulI
	 YbC/Qoq8EtCJjzUjQKRFLR/4Hg8yQpzECHMuO+xhk2POecaUjXLYCmVdiJoJJunVf0
	 cXtBK0bcBAMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFC4CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403197359.28777.12200205919192218600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02eb29f5f070955bf5c7b45771e1a98057ce71fb5715ad824bb3b368afcfc13e
Date: Tue, 25 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764031973
