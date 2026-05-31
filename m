Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B5419CC0C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780248874; cv=none; b=EkKQEanDyOvIm4eMylON6Td023V+8d9MpxxjjlMXl5GhKM1LFQTnkAuVmPaKzXSG087w8Ee8oE46i3gAQ03BAGdASb+Slr1Ac5uiX0BQqX3ku7khwnxu481VUZhF6s1CGkBziL+1lto4ty7TuVXE3Um1+378HabZTWrRX/kdQNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780248874; c=relaxed/simple;
	bh=Y04mans3oCQuFsT6Zy4YcPzaaFV4kAwdGvDlEuSy3zE=;
	h=To:Subject:From:Message-Id:Date; b=Q6GCKLVnwpmvisJv1d2uKzUxoK1Jt2JuReTcUjTHPpiIGW3t6yTwAqkjX6gMYf5E7HWVhg6FOJEoGI2nq325x7HriBlTadzKKj0Jfu9+86AdEQA8my/R6wERcd5K7iGoEyzJLVpHWzhcSCEFVFut3LPLe9QCRTGMG6WucNtV3SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9cjFudA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9cjFudA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA350C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780248873;
	bh=Y04mans3oCQuFsT6Zy4YcPzaaFV4kAwdGvDlEuSy3zE=;
	h=To:Subject:From:Date:From;
	b=F9cjFudASaAgru1yKnJaP+joJBKXunFeRbrlxApumcmJi+G8Nwpde6jpXb+F1OtEx
	 uyZBljOOWGIyZGzrItbZKOTyf1FxK7XtOjVcE25lRLaZ4hxaqIxPZWQCDG0gctYNL5
	 Hp0kQalI9eeFuGdfBiPgcwnPeUkJju38YRUSq77SKDZv5AQFO8+0AjqlEyYCO41JDm
	 8gOiqDSpx3ogD5cVAqR2DxKgw8EyBCw6r/BOff7BVF3g2XT1FpA1h+HOcI7k0zrfoX
	 mvGuLvYDonkZx06oWT3BEs/6cbPR1QblzKKTR0J+HW+qBZ7xuKjRPEKOW7FVd8L8vh
	 SU9E5JALIvLRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD258CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024887370.23839.1058170826565119119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048b6348042c0aa29e9963b4abb9398d177bdab01ff172fb809008a9acd643a4
Date: Sun, 31 May 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780248873
