Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E35189
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758361794; cv=none; b=bKhcfIGO11LAXrtc2RrK3IoG53c35aE3Ai7b/NH68jnGeZS7bJEacn3/xkoW8wYi+ZymOeICrNuiUmKGGfOIvZWcklWdwKxfrcxTKfFsFMBmnfF28e9+GNBhKiq+9JJoQ0BisgaaSEemyo4sHemRy/ISsW209o6PyscXTcspMnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758361794; c=relaxed/simple;
	bh=3EkUht5oohdn1KiIUbGGxIh6pRhI+yYfxZ+wKUt6/mw=;
	h=To:Subject:From:Message-Id:Date; b=sA/rFn/G7j1xGTiEk1jI3dCUyZH9pZTRgf0BdB3WAzjALF1tpLYSnQUnwtKC4TWvt2LQyT0OPEuipfuXo+K28vZLX+Rre/cR5wDX2IJPA5kg1HrJ3/o4IajePfe9hIRo4Wk5qzqnCDh7Orwagc70c8w2c8oW0pihSwhcyApa4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMrwSmUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMrwSmUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758361793;
	bh=3EkUht5oohdn1KiIUbGGxIh6pRhI+yYfxZ+wKUt6/mw=;
	h=To:Subject:From:Date:From;
	b=kMrwSmUgSBMMu3N1BC6wwhNSKi6f9vYEaFKaXCm+7Fr1MB7ubWIaHHAumdGObPhAk
	 vam3/j2IBsbSNNuovIlkO3aYzlrqD0sb5ZezON1vZRb1UdBlqjMnBNmmqDI+tP7nfU
	 nWUw1Nit0aQoZ3Us6uXrs6kyoa0pXHQTS5ukX7s3JnK105FxKdzbcHLs/85MhYdXWY
	 Faf7QxSQb/Mx9XUtRNZWJ3NylKJv87AVPeiumcSsjKzmz0nmkCGQW6BWEdAKMXzUum
	 xejvSlcrIGNSdXRNHD2tAuh8ygNszBPNulRhkfBoNafzoIQrgvngmqLXAImG7WxJD3
	 QW5Kq97bCCBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29ACCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836179358.3274.5690831675330442076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2132266a6a71fe04fcd0fb0b7d97283fd817c3cc2cc1069e0a57d330950ef8
Date: Sat, 20 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758361793
