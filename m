Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C02116EE
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747558794; cv=none; b=XzG88gM9EfnNCfBoCxtQZ6z24xdh3eJHN9wF0hH8Bj84EV1Csa+Hn62qhnCAu8LiBgS4ELzIRbdU/x4YJEuaqrw5OfmmI0vRhImt1q47y33Eih7agSDixM2kda0ji+HH1VhzVaKKkNjF9wCQhezERuwQwcRqzmzdHyfg6q7KQ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747558794; c=relaxed/simple;
	bh=/B1EoLMkOHRFZCOW9d9WDZMj2mTypyat0OKgV13QsXI=;
	h=To:Subject:From:Message-Id:Date; b=uGJ6DSv6sHZhT5Kn/MxRENiSOVUdu1tsnwlejJ4C0c21/8reYvLHF/+UMPXGb3jeU03OYfy3r9Zz9ao9VXp67nJ2jgkbDnacXOjElgpoQLx8qm1GuEBpjHvOl55AXsTWmF3c4Ndn4kQJD13eBPnhZeh62ebBw89iaN9ArQRTZG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKGq/ugY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKGq/ugY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A152CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747558793;
	bh=/B1EoLMkOHRFZCOW9d9WDZMj2mTypyat0OKgV13QsXI=;
	h=To:Subject:From:Date:From;
	b=VKGq/ugY2uE4C15vg+Os1LxbsALtMFdyXCobklarsw9MmgygNFn1yNcAUSWzz84KW
	 e08VthMlZva5Mtih5fyydv90Hc/1eqRq5seGtihQIs8hE0Rtc1Rif6Ad3KE5+aWOH1
	 uFhRBQvfnLPa+qOYKMdOEnyVBA4Iv48IReAfjS8Lpo0/5Voz9u+hRNtzzywEE5WQcW
	 p0PZkRujc2BVEZ7DbZXhgZ0B+qAR/hYJIlWsYQOpkbMRUvMx2+vaiebOe9CdufNKDD
	 Laia+QN2XtVLweLZbOsY44poqpDrOLONxnSoA42gSVBCdsFXxV4EaEDAtvbE18YhsE
	 //xkoz5SLdpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C3C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755879357.1132.6599614708411548852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af30a34520d8f95ffce2b0a9915200e2a3dd998943cc71a1456a8a564450a9e4
Date: Sun, 18 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747558793
