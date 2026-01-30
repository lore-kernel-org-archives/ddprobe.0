Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485031ED72
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769741034; cv=none; b=LdaMXu+EE/8C4BGrZQv37XytMmYENSKud28D/dtYn4/VQWOHFgd60MJZRWc/SoP51kpHPccGyLWGifUAJsQSayTJ5m0/GJ2f9UhrbNDbcz7yv3P/Qnp50eMdZCPfpa1NqYpdbGyyjpUND4gIvtyaC0CcWWEfMxw46+TfYqFPNMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769741034; c=relaxed/simple;
	bh=b2GremV0ApEv4ybG5Hbincpot90iev+cTSYFLx8ETMw=;
	h=To:Subject:From:Message-Id:Date; b=ojJFKT+6TCDdZPZZm9Np/KEU0eG/z8KbfA9KoAFxwQddN3xfqJ+6N3N72pQe8pPXulJEf/kUYBjDkjIzx5DcbXtNAh70pKDGgiQX4hZRVtDtBSntCJW2zXo/4vWBMqX5pk55Im5mt1g9GStdlVv2fEwt2Rtm+b8r8VzbETzlvrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9gLKD8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9gLKD8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769741033;
	bh=b2GremV0ApEv4ybG5Hbincpot90iev+cTSYFLx8ETMw=;
	h=To:Subject:From:Date:From;
	b=U9gLKD8sxrcI+FOOA44KLxV48dthGIyYKcJAH84StJaSVtgH7yMnWimqLwDGOk3in
	 FJGWdiRexZM6x4wwNz8oJDF/1TVv3c4dAhOXol5JR4YkMCWlp9Z/Uy4STOiG211Yud
	 iePxsH5W9pb48UVo3ZDbx9+0xBv3Suj9kqL2c8/Y0B1U4jE2zW/gbeT0jA4ydHR9zM
	 nf9lz2GoeKYZBL4deo+oUR0ngq87gQhu/FlmHoWFluR7QBpHoYlsz2zR/RzRlsUY3V
	 5lWLc3wbAjQwxUe/5H7+0isJprCgudjBOYSRY4wg6oPnR86krZM0xRezQkLXaYfNro
	 Z0pvkF885Yd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B8D73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974103358.19952.18089741866290655409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239142beacbb5a4dc94e85c0e28f8cd6bb5cea3ee89c0c1dc705a7fc0b3dec8c
Date: Fri, 30 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769741033
