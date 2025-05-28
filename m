Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3535122ACD3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748415594; cv=none; b=bU4qRR3hceOzHOPP0bboK9iIpnBQDRyX+pVfgBu0SOuK9wXbV2nS5stSIX1FQjJD41nYsnkoy31jsH9J/dLKZ5hIiLVzcoOEaY2mkgf10I8lFCxka8f+CYp2Xrzj5R4bU3VRdcHJ/sQ/QbkDF41uPHnc1vQErEeGAcqIJSXA2HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748415594; c=relaxed/simple;
	bh=cOSn4tdqAE7qeakkLu8NFq+SfmsJ6ITtBVrfpk7aooI=;
	h=To:Subject:From:Message-Id:Date; b=sqivt0d6lrnQndLzojhT4ejcsWOp7/ZYeu6asbOQuU3NYKCAmQma6gO/c/Mera4IXa0/5aLx56+wZNIPmHz3eyabplpFPFezRpOCBmM6m29FG+ZxRVRMzyxql0hkOK4RujKcgp6MxGH55Actwx/j6qCgVHhzkrDv1dno80XOncY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyCej21l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyCej21l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5353C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748415593;
	bh=cOSn4tdqAE7qeakkLu8NFq+SfmsJ6ITtBVrfpk7aooI=;
	h=To:Subject:From:Date:From;
	b=KyCej21lYPl5ZeQhNsMaCOUfqtWVA01e5LeMcJqbDR6STCE3r4CcJ5NBNC8BckdXZ
	 S/y3TPWeP+x5UUGxddi8xWJxr6bwHUGf01OE5VqI2xBHw/Eo9X8f/3VAT8Wmh6FXKn
	 h6VLr3gnUacC2VSAppTUn7Hi/nDOE/jIRGXuS1qtSIMAUwmwywJceG9i/kYlD67smq
	 PjMMUL3S8qdJ2gPr28QfGWM00AhG1bv4v2ZiLAtBfPfXjsiMMs2AHJIC1nSoe+/UwQ
	 JUqegtAWA6NB4cGis95HZkKlwMERgtus/A8twKP+S2De3Od8r660RipdJcHyM6/Pvk
	 qw1qcXR+lGgBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279DC5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841559359.1996.8893722843431915196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebdf0debf7d57b943b84ad324a717e465e02723a00bac859e2684ef3803f735
Date: Wed, 28 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748415593
