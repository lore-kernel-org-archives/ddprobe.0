Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF4A30C157
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783723114; cv=none; b=RMDp2m4zF/T3J/fTSxDhSWE1i3V16Cvz/2fTTgLI9UqyKf/roXTjk4H+MFv4y5JbkhCytLi+Fl+sZMNeEId2deT8darPIkgwgTh8IM7I1q3K1SUzApUlIjFD9jFh7eE/QTg6BKJQ0truFnMTa5uG2Dc3j6tpg9ZKLsFJobyIPNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783723114; c=relaxed/simple;
	bh=xnbPNJJ5owyMO0YejjHoXifX2jbXJ7s1Vm4/6uHYzyo=;
	h=To:Subject:From:Message-Id:Date; b=tVaeuu2IDScYbznFDPLx2vrd3lOtFuOnU2PEfHdL0998LbwItZavIDiiK1GBFvy4NEPydM0l/nbtuctdAiNVm2rquV76BHw7H020Tj9m9DUUcfBxKxz1YsPJJHYkeMAwJZ0+Mv0Ba8c1a42HUjXeFWLuZ/4hnFyHt4+MdCvhgCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tdo4lno6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tdo4lno6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA176C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783723113;
	bh=xnbPNJJ5owyMO0YejjHoXifX2jbXJ7s1Vm4/6uHYzyo=;
	h=To:Subject:From:Date:From;
	b=Tdo4lno6MU5abzGZPl4AEsvcWjMqRR2bkF9rY85C4G8oabNRBns+vVWnQKy2g0G2R
	 Wnrfc5SF8COjXl139uKPEfwooJOL2VInYDD6emsycbh7FnFakFXCkXdi2p5lDN5bpT
	 c74PB/fcxqr4mDZKs7TVp4RYR3R6Hlg0Nd/N/2NACmiDrvHe+4xQ3kQx8J6xxCaKYJ
	 9xgVkoklw1rJ1FgrL+gGJvMHZCJqwfEy2EdJe4Dxh/HfllhSlVpCB3JEDSwojF0qJo
	 irV/CVgIqyrs62VqyL+qzuh/BmiO0vUbFQksmWVSD6Y9lsTsEraPzCnoFsp0Obn0Re
	 xTz7/DgPYGpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A899FC44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372311368.2709.3638511443956061067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676ccb9887d31014960ae92be4ff0d5a1338395c9a20f625fe21e6587a62651a
Date: Fri, 10 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783723113
