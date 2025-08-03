Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6223C2F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754183994; cv=none; b=gbH4i72gBHrXWYAUYiqIAodWQO9rWtwmlpKp5WhZbPv9EErk1yT+9DKnBZ/2MoW2tzFo7Yhp1yeXCfAYuJl5NGcNCj/QbUptyIQrBEoxyoE3ZMSZHkv1E9M7KdEOyxCxyghKQZO7JCFRbfasmBXuljV42n59HFPKZlwKZv0GBTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754183994; c=relaxed/simple;
	bh=3djavh4/xXRXX6DY9n77PrRejFnTzcZxAvnTwf/Vsbo=;
	h=To:Subject:From:Message-Id:Date; b=WS7gfhDkaGKQgGgNiwONymfmdZBRVI1Mw8NchM8ZW5tgZSVOpTnz2un0CxQCxaCix0QtR7ebgc9uLJiWBd1A9NO2siGHFa0PdLyfgEXLscNgGIImPP10nx1oeO52LfaLpEDqAVzELPqWuVDyKQ1/S/IgKQBKbYtNuvT+2A7r2EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+N9ESAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+N9ESAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A0C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754183993;
	bh=3djavh4/xXRXX6DY9n77PrRejFnTzcZxAvnTwf/Vsbo=;
	h=To:Subject:From:Date:From;
	b=h+N9ESAq7+BG0XIt+41sXLFkYUnaGWsddAIgxyjDy9TWmUz6M3g1brHWjQc4WHHuh
	 QPfcW4Hx09F7TVp09qaG2F5t0f5YSFVS85TjLQG2WO8FwXIfrcfpKCiSjFJ1zXgwUU
	 HRL9bETV3K8gb034pjQNQG2PE+TkEza3lANdzGL32oe4Sv5WmDsFwYIpOQiZSZSdpj
	 +tl3JEsXE6Fsp6bUF+j/vxHiCDts/0QTJw8AdQNsjyI0MXWaHf8dwMPn+Cg9j3Cc42
	 g5VP74wRXl2W4CwnmCYHirN4f51IWMXfUNJ4FqzuUy9hD9rjWU89IvaR0CH1YDb0Jt
	 0JLEg+Y4f3Abw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367EC87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418399358.2093.6999319111920500845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c1015a6015ca09ef92716307ffc2938c2107c6e4c050e1617f845cca8208f0
Date: Sun, 03 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754183993
