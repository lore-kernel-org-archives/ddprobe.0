Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B95D54652
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786243834; cv=none; b=RKoGvp/Lc9+GaUA6qTdpDnY75+vImreR5gfLe8AjgBCUW6R9Iq4q1n8MtXk1JpjqiQ+uBuNJUsvy0v93YRed/Lul4QJec7wstUz6/IgAdWtLgaO6AcotNA7FuYS53BPTlAycmE7XC4rHmzRCpg3XL2LLeHuVsKH+E+C3IInap1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786243834; c=relaxed/simple;
	bh=3BGi3iNQxWt+6bz40GXn/AUg9w9/2xTpMUfIkmLte1c=;
	h=To:Subject:From:Message-Id:Date; b=YOwei4nKe16kL7O7zrFlFeTd+bPoHjzCE0TU8x4koch/h2ADrOIYL5LBcRJssZ7bFxroxtnJ/HtnG4Hlz2CpfiuSFQDEP393qz0QlvMmt2uLaRyjcN+R9ko0Rjh4EQZ4LcDNT8HGBHUcN5gLgDSl9IzxF8uFJ8a+BY5lrDicTMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7T9/01r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7T9/01r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC123C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786243833;
	bh=3BGi3iNQxWt+6bz40GXn/AUg9w9/2xTpMUfIkmLte1c=;
	h=To:Subject:From:Date:From;
	b=I7T9/01ryyL63FX/W2fv+2TUFdzbom5G1bxqc0001Dr9lmxw//keHEgtjmrsyEFit
	 jM2iGBikCFgeH7LizXktZDe8Btt4L/GDVd6ldYFzqIqUwLl+WY1UtSczr3eFizMXa4
	 BQqy5tLyrqHI+SSNFHAqzsk7M2SJXDYSqvr9EERvqOrYaLaGAxNgaWITx63QYZ9TGe
	 6VAcq1rgnQGx4OO1ktQGCrI51qF7iILGWcxKwC4SdsH05ykv2pqvnyN+YoGv57ZcqC
	 ROBIGUbm/NX1+ebIdCb96S5qnnRbYE9yWF/7rDM8PCTM5Wa4R6lhNU2MEi4aHUMTTC
	 spYUBq58afTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9203C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624383368.16655.32878169574291387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2366be756f9705a643d895c2871c11dd8a7a5672b12433670011b89714b700
Date: Sun, 09 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786243833
