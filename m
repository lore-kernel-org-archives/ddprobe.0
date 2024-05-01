Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A93353E30
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714559543; cv=none; b=jNdVhaVMGtMlVInQeUczLUfXpEep/bFDkZBCESJkct7cXDwlObmmwawNMUAfB/c6UR7F2kK0vx7kQ86A49yNaZHUl/PaetkYHsqaZbB6QM0MLAWHqbuDCRBmJKu3NXsu1AB3FBmO87aB3J0Xbpm9P5mOX1D2IsCLvM+j0+jiT5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714559543; c=relaxed/simple;
	bh=H2EAJWdUkYTgPHHxX8G75LjCalv/IDy8NvlAvyAnyIc=;
	h=To:Subject:From:Message-Id:Date; b=OUK6vUeLaxfrzPmDrT+OHDPNyEvPybnRWj1ErH6Bnoztml0Cv6DeRmwW7pFnbH1EgbVDlZF+YGBxZvC4XOyYmP2SBfbtfFiwKNIPaacxa/fBK9PhXZlGWPFUZn40l6MZ0VQKmX9BTgWh+1GZlpSqHEraQ1JqrZlJQfvOBwD4ZAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyIqgmoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyIqgmoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC86CC32789
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714559542;
	bh=H2EAJWdUkYTgPHHxX8G75LjCalv/IDy8NvlAvyAnyIc=;
	h=To:Subject:From:Date:From;
	b=SyIqgmoqHvIRFp+gyBuFMD6ZgDyoZPFZOz1/rG2hFzAxz+HUHWDhUmiv5sU4g17LM
	 R8a6d47zTxQfn6MeqX8IS/NGMYJ7NqKeIbfFM2mxzuoOpGX1KJW+PSuMrqhS1z7mMN
	 emD4H8SdGMCnqXEkFJD3H+zs9g9alg0K9s020wVTQ56OWZzxQ8Ps7XlHoAfPpPBKaH
	 y5C8Ls1cllFleVsXLAPrUfwKL4lFAQqztqNEh02KCxk4K1k/ZHMqTMOrxGyNKY3dGr
	 RXZTecTW26LfcbV2fMQ+7PhJ4p04o5HotptsR0Eo0SriTRTm74AcrRkvGPpKk0YMHc
	 Yas2yV6LIxBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD56DC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455954276.26982.15321894913424368702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996781408bd76047d3b3391cb50b871c0cd6b53128577c998c32e82d36779e7f
Date: Wed, 01 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714559542
