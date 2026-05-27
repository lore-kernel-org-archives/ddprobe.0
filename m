Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D7D28B4E2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779849754; cv=none; b=c6Ro0sf4/QDtsRAyPIwnkUymxtEXEhoiZsqVuOE8pnkGDk7AE5Dpu09C2CAcBx6mPhDdiJblMvfi2/Wg94iDFyhZwA0I/jczvWGesT7PVgrGOoBVhvzjgaS+HclKzBf/XqewvHx+raqfgZFioaeSRFFL8j2DGuQilNdO9L0aEdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779849754; c=relaxed/simple;
	bh=WPiM59Cgxmn3BvZWvdQvVQIQDX/72yun5g63Var/cas=;
	h=To:Subject:From:Message-Id:Date; b=pDZn0IKEHYBRUA34pq+wojblawc012ngbjf73XTmLvsjSPvcQp96c03Pex69FNVDNFxTCgaiWnIhfvRgmZ3CSb9zHtR3OuQCYlIoeR0ziid+Gt10PGdXvsQdOeDcsVKAvdyuRRchi/oumsWfoK5fffKkzRYLEeArgZxdfk6t9yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsCrJPlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsCrJPlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E84C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779849753;
	bh=WPiM59Cgxmn3BvZWvdQvVQIQDX/72yun5g63Var/cas=;
	h=To:Subject:From:Date:From;
	b=KsCrJPlVVVVO7lbCERhlDsZk/j0s9QejAIbkkDGMjBGvhlyFbhnR/CxoPx+yg+NNa
	 LEKsxgXVNQ8CB70P44AyNIhGJ719l99NG4XiF5FL/jQJN+1PZsCyhMrEYSOX9LyGiu
	 0GvtN3CdkZ6ZqCTkuOQ0R2CcWDXw9jbZuWuF6ShDvYM/UfNaM61Me3f6/dicTbPSWB
	 vyMRtVsxD3bpYqJOgnMzfQW1Alzy2RlQqojbh/L2LOhgfqTXh8xPmdmnQxfab88Dmm
	 AkbpTvMBxp4WtyT331n0q1skVE8fA65XuzTIWHIm443lJUR/105fppi9pBKCC89enH
	 j9MMms1RH/arA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB9CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984975369.19273.9746653748171653338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d76047b15ec28b2883fa9ab6b3bf6e27ce9ea8f32da0f51342f20f78d69294
Date: Wed, 27 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779849753
