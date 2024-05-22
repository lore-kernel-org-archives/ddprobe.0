Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9FE824BD
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716394403; cv=none; b=dcUXwWzBcTmhe5cP6PxM1DVmALWPMPLZxDYpDCLGhzs3k45PeG2JIY3SxgJv97GssKecJV3j4ThLNGXzJZ6APxCP7PFJvBHM6bDEM9pIUwpFdZVxOPwEdHggQSnevdH67p6ePO01hXobX36nnKopuY62Bw4+wYubAIhAvYofgjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716394403; c=relaxed/simple;
	bh=RgvlVGGcUhdSSo8s27nVXctRfcJa6ekYmAr0aTlwntI=;
	h=To:Subject:From:Message-Id:Date; b=E5g5XZdoyNBWeeIoE+90OqA5eaLW+PkQtdzXhxOf6XcTWRC0HyATtFHd3Yn5Y0lM3GoJ4J8sW/kvBsuID6b7xKXvJpHgEEWs2HxnfR3kciGPK9HggGtMF9xOR1NIfCl+ml/1uq5HKP0G+pggggAggU8bv5NdXOFc4qs98poc4mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZt0Ix7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZt0Ix7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1CEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716394402;
	bh=RgvlVGGcUhdSSo8s27nVXctRfcJa6ekYmAr0aTlwntI=;
	h=To:Subject:From:Date:From;
	b=QZt0Ix7mavkjhG1ZyrL5K6Ql7/K9DJvD+JWI84W7RMErMETNJsB9EZujz2Rjlnxdc
	 CtkGIIPW3Zj8IpGpvNLECFAR7ZnvRQygstx7GkONgy7uCEhF0HdZUnHgsYnyMZtDtK
	 JDJi2rQ/eBQHgmvY0jqN7dHfxO1e2ZsBJwl4A8sUg1ND1xqXrIJzeSr8lyB30zc83I
	 taX77Aha9Z/4i5a5xwW6jZ+S1Ipws8jK1r1AAM+XmPvesCWTAsZvwm+/bstk3MqjTW
	 Q5hhsBy2O4oHGVLGN2zb8yMNkDOiAXxgPc8etg2PDRXGPBAMLn0MvsB27X3XgPq44e
	 z3Fn5sb6vpSVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5D2C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639440282.10739.1147022244834396516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bad741e1d25ee932b552db38c711492fd58964704130158e6a7a6dc7c0d5660
Date: Wed, 22 May 2024 16:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716394402
