Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242C54F5E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775996254; cv=none; b=UIvG001LPfBNctL66QlksMnFAZBIFsGa/ebkgVr/zqCKtKLnTvzvUhJzQFxVvkHvlJm6k3rFUk6UJvX8YJA05mpUW6AQOGE5eBLol53lb7J+CgK6qkCcYy4DGQc93/6Xl8LDSS23dLCujM39pubQkiKDL17Hr6aya2hR7HhTxtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775996254; c=relaxed/simple;
	bh=UhrLNRGT4tGtFTybN5B8ZH1zN10/1jqbNNlDoCQJAXo=;
	h=To:Subject:From:Message-Id:Date; b=ZrZobMtXfUSHv4tSuiSImephQoZ74b98BPJnlVXQ0vMEPsd2DPq8hvasqYUroZE2jqpgShTE3W7WfHujMAjdrXxPfFxjSdn8mgVRvVGWJWsH77cHT8YgMz981okEo2XOUeBfe3alSEogXDKDWCXkavZJ1T3pXGVbsbI8rrXuoZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbdxz/i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbdxz/i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E92C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775996253;
	bh=UhrLNRGT4tGtFTybN5B8ZH1zN10/1jqbNNlDoCQJAXo=;
	h=To:Subject:From:Date:From;
	b=kbdxz/i3coFKXa+r//zeBAstZ0iZlbkIiQ/9zy/RKa8r05nEsmaWlmdl3GQtd3bRI
	 HzLc2Hewqje5BExyOQVU2VNSTLiABhNHFiOTtvsIKgfLgFsEy7infMapAsRt2Z2hzt
	 LzwRXQj/Een8q/pXm3d1imdKdmXYK50ijnKXibsdYavFDolIgbQWxRlN5H8i0GIUgR
	 TOCYL/CftH9ovlDeet4Otd0byrcZfveMkG0lUIoBpEHuPkbEZ7LaqpM4Idy9nlVuqC
	 cvHUiMVRBuRCOos+pSigalRlWdYifS2n7V27fXhI/9aBpvGJYWN3c423Um5eD2Wj2D
	 m5JadwrHFrZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2345E937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599625371.10275.7745883949670710631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b430e5d4f888e705deb97ec882e8e40c82e04f7df14fe5280f94d044d468a2
Date: Sun, 12 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775996253
