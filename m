Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AEB330B2A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328094; cv=none; b=QOHR1AWiLX+qA4dOk2uScvdT9BlNQ4vj7n6UIJMqDc3IwBASyfpq8mxjnvIVhuaLsWaclLXuP53wqLIxvuB2ZldErATcEXN84o4ZcrefUF6CM5ZDPPaC6Wm99GVIN2w9se259sBcUaOrXmHiF3CNZTAV0zIESf4krgKGBrZNfRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328094; c=relaxed/simple;
	bh=PRwWsjlnnIsv4UP3iPK+1FzMFnvK2RMaATrKLsp4OYs=;
	h=To:Subject:From:Message-Id:Date; b=dHYxOSr5PI6FOz3q611YASNqjdI6xIbtp+f0khSdNrRgM4BkxXktLf2jeDQJH3TRzdeYeHDA3lTTYOWRMwZR1/KftuOH2ZAQ0ygu+6n5z5hIcBko4T/cBBp2bSauZ4GM58nh4eMgCkfD3VlP3YIgiiOub34u3/pelMXRws4lKlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H64kAWkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H64kAWkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771328093;
	bh=PRwWsjlnnIsv4UP3iPK+1FzMFnvK2RMaATrKLsp4OYs=;
	h=To:Subject:From:Date:From;
	b=H64kAWkHJrKWQxqZKTuO9dxqne6sR2HaifDDD9P2R0+IiV7ELOEmbfApSOIKzHPgP
	 ae48W0QhP4gGdk6H0AZ6MYXmwmUXrLxQ6cq7YsZ8YIpy5QqO3RELhkYcyaKOyou4D8
	 ZcxAb1tNEq1YJuorgqnFKRHkVvAIRh9dHFDdEmatGRQDVAxL0ZqZfxDH5QLsPYRsXv
	 Y4zZ/K+gNlJhj0q0Dxm4MBswOima4Xd5e58vSduN1QOHnBYxRWjgSTy47JCHWD6EYV
	 daXzGZxHjETde1YelD6pvsqfCOK+1WM95nRLOBFWoslX0n+Oin+68mxcB0sthdeKE+
	 MTiDdN2FOwXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D20E68172
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132809358.8058.2967102722576766085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b43d8ddd65e0fcd3d9aae0b1e0fd916c8ba1591b0602846ee218f65e993bdc4
Date: Tue, 17 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771328093
