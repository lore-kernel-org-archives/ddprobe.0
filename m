Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED85197A72
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721123723; cv=none; b=NZT2oD49KT89RSlXjsoUniwfmoIOa50bq9TzSA3CukUISl+aVGScsm5f+pWOf/c5gSYz9L0iHR2FSTiQvl+tKM2YGLWlYoNZv3igP5kNvh+mKJ3UlBkMdA4s5iIom0bLkqRHW+NVZxG9dMEFHm0mmZL0an8+A8jJ+0tuuujIxQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721123723; c=relaxed/simple;
	bh=hdbQ4Wd49Y3k0FOPke8agGe5rognhHq6xhZMbs6jioQ=;
	h=To:Subject:From:Message-Id:Date; b=iCjjSxD3CGt9Vx/T83e/x+h6LAbh+DKNTDNUgjQcrx3MoSsYfarPh7N4BoQBCGgQDbe8WVO2LyeBidTchAPhpq9olp/hLJiRt1GhNy4wtCx1edjUSYZ4XbhSFdtGt26ZF4QnJ3HViziudStaC8LQ7KZ4OUT0Nf75wLftjbU28h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKRdd55R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKRdd55R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C66C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721123722;
	bh=hdbQ4Wd49Y3k0FOPke8agGe5rognhHq6xhZMbs6jioQ=;
	h=To:Subject:From:Date:From;
	b=aKRdd55RrVWT8f7jns01i+LHrGOqt2isgyftR500pnw2Q6c/ckAFWdhb4wz1VJe6/
	 SxfgWy4KdCpIi3rsNaF3vzhxf1ScEgAiP//LC+y+CMUQUKRsNT27k8RuCSD8NDJ82I
	 M6Rr/nHxsLGniq+EhCmF6d00aqmsBv7WZaukWFizCgU14+H1Mw79YiVvFJpBbkAHdr
	 a/8XLn4T3FFTVIzORWXRHcG/xfVEyssjBzwOjoMUvVtwTWV7TzlduF7ETuov5MCnAu
	 PiaCGOwLLvvuUlaRAmuOxWslTMfhAstuoRwKd19PH+3Pj5U6eCdvj29R3mYw098Aey
	 3p+cU+h758t+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39B1C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112372278.14154.15369018450532935054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862fedf21529b67392f21c5a387c961f94daf2c371d430ea064eaaa6bf9c2c43
Date: Tue, 16 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721123722
