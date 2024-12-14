Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD8DC2C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734137754; cv=none; b=P875eUfcmsX68SeA9nXTU/OtFAeA2YOXNcVrL7KDXBh7sUk/UMU0A6hIZn9IvW/pT0Bnxx2k3O62pTR3eq/Tw7qe/zi5tG+KlgpJ7QLV3qFNqMKRrEVJ1aPtrvev0bivoJdAt9a7dzslgFaPQgkpTY0qxut56x6QoWp+PmgFgjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734137754; c=relaxed/simple;
	bh=+FXP7X3rwqA2uvng6SnIbbQGXcfX2aFQiwOTIEzRioY=;
	h=To:Subject:From:Message-Id:Date; b=W7DPqP87mDSAn8gWXn/EhT93eYAmDlJ79BDzgzJnJRh/9Kt4hPkR2n8mBFR6kKooCPtUZ85Hc3bEAnyehN+VJkyAPdJTM0+J70mV8s1K6+SS9Nbh0WUVRVCAJpFS91aga0obs/dGxt28OZ6eakU7ehpzSUFfnOJL/IispWcm/pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC3I9wDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC3I9wDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BB7C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734137753;
	bh=+FXP7X3rwqA2uvng6SnIbbQGXcfX2aFQiwOTIEzRioY=;
	h=To:Subject:From:Date:From;
	b=bC3I9wDH7dyvXhDV19n8rtFD2qvNHP5uJhX4oxqpn9PNJ5e/bDm7DUX6lyDFWIIrZ
	 vfi5Fl/i5n586/6F7WiY8JZBh3BrGcfWAYhzu7mdXf/xyHL9XVkCxqK0Q0uzisVBSa
	 o70CnxOilgnqyLjPlynDKpB9QcB+kwC1/YKjT5oOwA6BHtuGtvqJaD7FBngPXdkAQt
	 47kiCAhPraaivxf5/iEj5bOGLdsqB7YwD3zlsHQ9xUXhNtVq3q/4Qvcfa9Nv4/DePf
	 Ad+KA7SRCVveeuHQ1yuzB47gHyb3gySMoMekNOtw8iMg5qhaH++CvdErzuMNqigLzO
	 Cp6MlqyvC5uPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99354E7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413775361.5848.2420435033687476369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d2e4aeb07661a6ee7c0ea46d3d1965932073642650bc8eb3664371e520555c
Date: Sat, 14 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734137753
