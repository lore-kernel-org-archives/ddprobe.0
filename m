Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06610247280
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647434; cv=none; b=d/zoJxaWp7rSMAqeStepq+pQyL2A7kuc6isBdqppG4Z6RDiIswrvmLzK4RvIZ0HC1vWid8Zy0+r9vfIuMQyWdTQ8Ot3faLN+CfNY7ak05NBViLzJUkqgsvo41O6W7Q0HgNIeRT5gk1RH51oL+6o56dyGH15htbL89zow95UkogA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647434; c=relaxed/simple;
	bh=dt1Gh57Ua0PhMp3LQ6MqukMn29qitX8VaGw/FqefKKk=;
	h=To:Subject:From:Message-Id:Date; b=VUPRVA5WtxF9wvgqax8q/nOerWm235f+kOnJ5jhb7QUadKVuwi4BG1B/MeGat2nC0SvTDQzJob9zD6SnPteerAZSl4DsvoeO6iGLaDUhrA8z76SCE8dD46Uaky0zUigeLsqECgSnl9JXDmmadEp94t5IcQbD6LIIpDrYCHiCmUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLURC0zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLURC0zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD21C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769647433;
	bh=dt1Gh57Ua0PhMp3LQ6MqukMn29qitX8VaGw/FqefKKk=;
	h=To:Subject:From:Date:From;
	b=cLURC0zBtAYPVKcHBWezWU+Jv0XXdb/qWe3Z8fxd0ysat66QGs4KYBQGE2c6GSgx8
	 ANqwTYTAT69G2ogNfOgoVoU4FCr1EfcfbCUT/HWfP3dZBdNT/khT1GJTDVuvWyD/Mi
	 Y93O/gVtrV7sIrBaoaB8nh4VF8pZuTXWjbIdnw2ZjgmtnU8Ql0sXattiJj9OyRhxPI
	 SS7rNs+Pqt9TUhzIIGAO3SnQfbjqgsdQdco9sHDFbrWIxuTLJ0DmZq2S2pPqq5ZEU8
	 BouWnF/D7NFtaP+HJRQYdxxj+rQJcGagMcn7G/j8+dI6mwS0T6vRcoc+Qpt8ZDOxBL
	 M5qRcZhVKTsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94241D46BED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964743359.20863.14945644517914628711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea073e0225bc6d1579f07c2956dd732e92093a4f6e605c0f417c93d4131ebd0
Date: Thu, 29 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769647433
