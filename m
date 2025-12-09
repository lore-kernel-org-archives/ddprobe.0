Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC22296BBC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765290174; cv=none; b=KnIEkxvMHDv4ffI0hML2kUJbJVOT0QB7bmhUSO929XML23TkoKZ1cZ8c/aLXioQFIsCTUV+UUGWxScrPXdeyTHUx2jalWGnlnFW47nP+IHdpkOnrhK85j74ZNwGwTMBCVIlELOfoaC8OAypunIgR6o6y/O9efTf2kuEvANszNXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765290174; c=relaxed/simple;
	bh=g5eSXnig/GExNK57VL2TjCmGe5xDw8IaRQt9YtVLG60=;
	h=To:Subject:From:Message-Id:Date; b=dMx0c7YTSff9m65QYB6cWAilSHN16+Obe1xbhaKtHBZzZuHDWfa5pjUdkuRmYCsNUUwmrU5NqK9DZju963slYZIWRfRz67PoIoHxvx2ZUMYVXEFBr6dpShcpPhCbGlj1mR8OulYMIXBOgxhcVOvA1SjldZbCDA0Qa7JZ1/3kpGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDgC4py6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDgC4py6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7622C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765290173;
	bh=g5eSXnig/GExNK57VL2TjCmGe5xDw8IaRQt9YtVLG60=;
	h=To:Subject:From:Date:From;
	b=UDgC4py642amsUYFj5IgeYOEGyarxSpR/aAJmuXHBXhzQ9xVIh4KPaBSpVGk+qEnI
	 QwAXEoF25fPOMdzRUwObUNpSI/CvCqfMjbUur6Ovl1I+nuO6KvXV7avpe2iu+Zh3O5
	 5J6tBBHG2qkufB9topEI1KtJg2Vx3Q86dAN/AUacSpJ6D6n5v/op58lbXGiNG4phmU
	 NZbruS+RubvTlEnT7LaLARIKcxglXYuQa67SLs0QE/OGlrTjsDe3C6wEFb2FMAee8u
	 wMXKe+weKFkmwHaDjE92M6/aUa9eWu+Et/aNhmjNgYT87Ytr+uPJG/ZBY9JThr3f6H
	 F+xPaayj0FIrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945CED1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529017359.2856.9504778364220083116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febe0fe4a85054603c0c67d5413fd428a2395df45ae614e656f54cf674ade5f8
Date: Tue, 09 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765290173
