Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D76F507
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752289794; cv=none; b=R+vXkq0apfPfh70+SSrL5WppCyXrvpHDPf2r6O91UkyV/C0JkkUn10LZiQGXYUq3UxpVheI3wr9boWwieud25iU+OT1oQ4XJsBqfvrjexBgqiRLmLgetSIWet8Jbw1PFL4rFA1uLOZVvyV878F4kuFi2j2PmOQ5bJEzrevHORTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752289794; c=relaxed/simple;
	bh=XlmYT/xZtqKuNipr77PySf9Vyr9YTl51MWfKwktEKk0=;
	h=To:Subject:From:Message-Id:Date; b=ateQ9wTjk3b/h0jaCDnycRbyWnsWpEuGo77JtYIhoINclmGQZBFjrPNYe55jBCltFC2pppmkyX4SvQOoBRfPWj4ZAw1pH7RxN3cS7rZPnWrXfKXlUrBpOKhrf5u8XrA03QOwmFrMZM3RKWO4l5WaZtTiBbR9Nwjt+vZQcM00RPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhT/EZyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhT/EZyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F9C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752289793;
	bh=XlmYT/xZtqKuNipr77PySf9Vyr9YTl51MWfKwktEKk0=;
	h=To:Subject:From:Date:From;
	b=WhT/EZyxguz4Xom1LsTrU17Fgx74RZ0eeK7bbIZOqqG8jr2BKsaOSuatjxgkRV0EJ
	 Bge3mgImfLYBahFpD1g/qBS5nx6lA8LTHFgXSyfGzDxziyxGLlHOBlN5mgXMy5cupC
	 vFP/L8oxGRZe3VZEtM8wqbDzCBmU7406PDz2Y9jcKSgERFwjPAF4mb7RZf0p1i7gnS
	 Rn89Puaw0DpkfjmziXB/rbgV5u18goZxDLLRUgI3TJSSnkXObsIcy/BOMSZiX6ZbXw
	 VAPEYwbbcPv/u4gDW4RJ6kG1AHXhH1loJjlC80tXG7DBdVHjzabph2fbiAPPrz+T4v
	 0JY6iVCUyx62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F3C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228979357.17995.12829465410827145194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e7166fc3470d0bc0a8af43260c05c752c3b160921049323642c88d64c01080
Date: Sat, 12 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752289793
