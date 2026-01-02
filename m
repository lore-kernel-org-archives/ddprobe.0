Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1901715746E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767339234; cv=none; b=mL1rGK5KN4Ge3cGnEOddYcxuCNz6k0plEWGtEtdhPx3BIN5oj7wmPWcFwBkPXcemGcQBIXHHIxZVRoXQ+ynnhHu1StQwxs7BmufyRvivsjDfSzahtJTyibPmq1TxMaLVrR0zWw538oC8uYit26akkyjJZIOz8lM4b7hdcrAUvH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767339234; c=relaxed/simple;
	bh=Ae56ceLo0myXL+VjUhIgjRm8O9xQ2EdiISn2aobolL4=;
	h=To:Subject:From:Message-Id:Date; b=kIHo1bt2vCipDbKhs8thBwe3Mt9OWaN9rgVyigohqN1z2pjUm3TK/Ed1HkPWbEqCjLyg2tEujeC1hdAKZdAtMaX9NxTn47Up9vCLxW6qxc5E6/Tf0XHyzIv5/ySzPT8ujUtMpDGM8DLNdLODSk3GVEasybHMvLMt3jFSRETW+P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asNa/4do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asNa/4do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767339233;
	bh=Ae56ceLo0myXL+VjUhIgjRm8O9xQ2EdiISn2aobolL4=;
	h=To:Subject:From:Date:From;
	b=asNa/4doDpP6AAwc5PtLGspBzIk5lWjWLoovkqYI3ULMKs8GsP8A/dXiuEuDbGjnF
	 0uajYx9Vuk7327cqQZ2waf0tI+eKjVufbnszY41bmlr9Q2N+c4HspZipnggQM9IqfJ
	 C0tisWHNchozgi8RDvnF36miKwvS2r4Dtsn/kwm2gxxLs9BxAz8Y+OOFp+37tV+VUC
	 PxYX0bdJxyE438Df9hRbO2cHY2Q0beizAd6zxN0j2Oyhw4mDMw3hgZ7v3JbGAGx7Jf
	 2+s1pQ4oWw0ozoH+HSevkWI8AZdoAcrTcH4uaUpfos8j1EgtLEupQ7tXGo7CiniJ5+
	 DZ1F/fcVngU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F386EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733923357.23637.12571812830449002157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d6b641c35e9da62524a757b35b705618da305409af1fea0c4f183f5d70400a
Date: Fri, 02 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767339233
