Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3477E196DA4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727859354; cv=none; b=J1LqJDbdKTrxLlrO2nQfV+i0+oVkIvrVQxy7JBTvtl+gGTFO7kLEz60RMJa6gr0eAfuBj/agLR2ih9tbgQK48zvl1Nt6WyAvFRxaeFoQLVtCnk39imCRI6kEelMCv47CFQu7euXgxZbNgBGteX8lA0mlede/Ml/V/a3e5RiH7KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727859354; c=relaxed/simple;
	bh=im4y8YSM19qT86irYn3lP6apf9DWdgHeR5TqlHKBzwk=;
	h=To:Subject:From:Message-Id:Date; b=YNUGWedtT9GyxE9KgIn29ipi8Cj3wECaEbLlJ6rcItGZ37SjPr8mq4yBvFkQMeyvBZXMCh3MrAhZKcq1MhgChpnfHc07EbpngNBencBi5sr5sCHw1/kliaYFKjsMZn28lCxt6akobrYMLN59aB7ApIk2b1w2+BoWyANXERbnEq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJFPpvRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJFPpvRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB247C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727859353;
	bh=im4y8YSM19qT86irYn3lP6apf9DWdgHeR5TqlHKBzwk=;
	h=To:Subject:From:Date:From;
	b=qJFPpvRvEynrEqIF5XgcK2cE7e+33+LVf7AVtNnUnGfQAjn2Kd/IEUT42j35Q/Ton
	 o1Btij/jMgVPd/5Fnx3S3/hELNffIXDVhLgpsLoVaV8XEMcjNqvuw0MxTBCuc0mEKH
	 BhlGG4dxY3TX5LyTH/xiP59EA0zf2C5LnIDsrQbfl0KmEykxQdgCL/fZglahTINKbv
	 rI353ZqdE2D0+ZWjZxAygYdevS1xJt7dCcaK52t+HPC+TQDAogZ2ws6ptFM0zyhYqX
	 Z83bcvH1ZQuhbJd2kOlPoqJ41PEjiJ7bgTasro9yQvNPJzgHLG2GKck1FdAHHUYIBt
	 lts+PL/s+yHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D81CF31A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785935362.17172.15431264839062165612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e35af2264ddccd88af68bbf9d6c5ffd5ab3156659d94e14f26f418abf3a883d
Date: Wed, 02 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727859353
