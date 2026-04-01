Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A330FF21
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775065534; cv=none; b=ZohOxYM27JbhGeMYZwjUrX8E267OVUmLLH0x0w+O+BHpprLsCVHAMUOFqGnQ1SNvY9NQUTIdHuStfW3enArfOTc/8rG9GOKAmjwiT+p2wGTzzoNIauyyl894PIz2iqkh8r/QIZeqJ4FiExSkLav1Vh/db8osiXH5lO0FLr4DNBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775065534; c=relaxed/simple;
	bh=0rXgUOFVvBnObjoEaMmaavJPPEdKnmOXc7ckgl3GD1k=;
	h=To:Subject:From:Message-Id:Date; b=IACaKbAaIRkK+gP5MrAJEnbjJtpoofmA5q4hZxCP+LWI+IGcxoGjRhkTQsQEfLEER8kn99WZq/U1X96xAZne/UdbrEmpRt6cL/DzPpFkvrUo6isKClwA4K+ivbKN/4pWwfHKfGOVRUTXRqUwNgbHziGTx45+gMbwy2bN7hvDAQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpA2u1HX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpA2u1HX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05EDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775065533;
	bh=0rXgUOFVvBnObjoEaMmaavJPPEdKnmOXc7ckgl3GD1k=;
	h=To:Subject:From:Date:From;
	b=WpA2u1HXiom7RlVtxZVsR5VZ/4cjYiGBWA7AAlY0KfI/r1IgfGuaUTKYfgQCaB/sC
	 7pep0pZRENrGCR5x2Y6vrTYfxS/7jY5t0lOBYwtSor69t1JuyApOY7p9znqz5nPC7i
	 YKdgn7cFuykwPlK+XCROQ8C7NrRUtbfF2bXu+nNTisEKTMMvveGwZUaA4XNTTarvPW
	 cFP1ql8htzqNHwCGxPUI1fE9bdWnb5pQxuZY60oOzeEYLJnlPoAoP4TDLNyy9zykCi
	 kVL4ZbjVIjeOEzs2ZuPm4pn4TStxKcZJFfmAB3sUeQ7KQMCkibX9YtpFe95M1u8io8
	 MjfqN/a5YZufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C3107638D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506553371.10130.13853654259399174776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2313ab5b29bcd31a9adad0bd07adc5bbffd072c126902a6c2ce7dd93df288227
Date: Wed, 01 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775065533
