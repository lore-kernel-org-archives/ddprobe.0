Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEF1802
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737962154; cv=none; b=owhxAfjDwiLqt0twFHhlrTCLgFzoYDoNY9kCaci5Y+cFeX9rwWWC08Nq+0dFitfxeiKtOz3fddD/Ooog2UwGIalhQym67fJdUmwA3dqZw6xRkGb2QZElxPy+hB6bM9FcMJaT5D9dfLLzEcwRiOucxwxx4PLdGb0hso0yGlqQEvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737962154; c=relaxed/simple;
	bh=sGsCliChiT6FE50EnNfMUwIyVBoY2uuChwg2bk0XJMc=;
	h=To:Subject:From:Message-Id:Date; b=Tq7hOMd52FlTjX/Upmjv+879sNk8maOVWC6b7M37FHtSvJjziBfYKEQAVbY88FpcL9HADjU5tBJVSx2TCuZOKiQApeV/TUQ3mjb9fI6mZIIXf/BYybDvKAUZDaMuifduRqc5VIJQBHH1oIOBwJqX0qkO6esLbVlLIVT2Nv+AyAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXpFP5ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXpFP5ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7056C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737962153;
	bh=sGsCliChiT6FE50EnNfMUwIyVBoY2uuChwg2bk0XJMc=;
	h=To:Subject:From:Date:From;
	b=AXpFP5icP5VYFEsiSX+Gl3JAxmiyBzxJ02cPlFl0q3FGjMPNdzMD4hg0hB/19QIDs
	 W7CEJHhyTrljzvoTwd6dlNMTxZ7CBCNGOTo0nFPkQVLy952IAvfeQWN3gaA70yE38v
	 HOK2ywpfJkmoZbIqb2i27r08GnRX4+7ijQSC8ho5JNPJP4+L/idxtDKA3V2tiaRTu2
	 4dGLZIiNjDyXdXvYKhDfLlBsWWEqJ2j61uUcYi2jomNqMiynetGex6y6VEWBgSL/dy
	 gh7IAw0WRILayhFAf/uWY0svBQqlbAvSdljBSmSvXrK+PYkPKj1cnLammKvASYBKN2
	 oehPy3JUrHh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91284C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796215357.3623.9091194413789477410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf39044268ea996f0722d1a696643edaf399dd6a9acb41ae95c5a33f741b608
Date: Mon, 27 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737962153
