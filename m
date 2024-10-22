Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100C081E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729555554; cv=none; b=G2Py7Jl3BjJVB/5yVXBci4jxuX7KwsnVOsUvIDClohK8z6i59eVuiqYRVHZJ7XSiQlNy+2Pqh9W3PHsjANDKJ9TyM+jlrg42nhhVsYAU0ePQ3ieRR5KEz+h53N6xbTxRfEibNdiHfHUZFvF4d2GH9+3htxIX5dO4vGMwHgekZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729555554; c=relaxed/simple;
	bh=ae0bYArP5bUSY4pWRahzCnT97vV6Tb3ELqFaciJJ3bQ=;
	h=To:Subject:From:Message-Id:Date; b=rao/bdJQb2PLlSaPeE/iqDgGzSjGCTNlwzCIeMYmug/l3EI8/W0966PhPLX7xy/YAC9YuZD9XCX6MxeXd39UrCZfoQ/OkPc0RDKjnIEPyIZ6axk+tR+4CH2L1/obRwm8rvWiEqOjICGrtKXQrmMAsnC5w4XUbR2MNtQUbZfSHL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPvEDhiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPvEDhiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA2FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729555553;
	bh=ae0bYArP5bUSY4pWRahzCnT97vV6Tb3ELqFaciJJ3bQ=;
	h=To:Subject:From:Date:From;
	b=aPvEDhiSR33RO67IPBIDPUsv2fcTQpvfTreMcAjLpKnx9oN5nLA7s76YPYCy2tmO+
	 eyQd1ckdAMiJb1xbCNX+4ZIdtFfErdPLHlCS6Wbp+Rg/txfZuvFt4kK3qfi9T9kimb
	 z5frJAT0pXi3EmQeVpQ/I9qIOyrzIoh4OZcy3X8GuBsQQ29Y65GRbSrQY7uEcSm56J
	 9/r3AD71ZSrr41y8SDMXi3KxZhcvvZvSFQgqx9zE8t81tyZt6Kx1C5sGi+/wvjppZw
	 HEb8UHkPsV389M9/3Vsjd3h5hYTa5WMpapNuG8nlCDRH8hHh0HpIuJNc2Ki62XR2Qs
	 ATTLqod5eh/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0AD1714B
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955555359.8951.10554808381483303135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b809dd3ab4871350440c26eb8fc8b09a8d299e6bd304e5eb47573f029cd8b902
Date: Tue, 22 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729555553
