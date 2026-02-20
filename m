Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0ED340A41
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586094; cv=none; b=W6Ck/INWMpDYRQGoP6bcenGbmG9/YDDfxGve7YcN46FxbPN4jtR3Ar0lvM+INO+bI1Gs/fNmS3ewUcqqC3EBDGGC03G33zWOYed+ObYP8EwRb+j2ZWrGR5c4iaMituMuC0TxGYMZTViWaC1g17D7zk1I+5bOCsDzwuW/H2yhito=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586094; c=relaxed/simple;
	bh=2za0oDe9T6mZGrnj8PlE9E9dg+ja21gVpgKHyyczm5o=;
	h=To:Subject:From:Message-Id:Date; b=Hq3//wUxbQdFwXy5MiqENm+72FpesdWLiIxcEC12c3m/BZq6/OmKcHxXVcTwd2dWOyeA7XjpfjB4jILigC+JaEzXhR1LvT2CkBdkQvlvPD/3DjEAzngzInXCCH/6tnk4Gy/4XOguTG00e6X4YVUDEE0g3ZUQL73tFxfa8b0V4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9LVxX89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9LVxX89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2489C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771586093;
	bh=2za0oDe9T6mZGrnj8PlE9E9dg+ja21gVpgKHyyczm5o=;
	h=To:Subject:From:Date:From;
	b=b9LVxX89x7/d8Bkg6Qhimgy4ni0/8eaYdIf7CaoX26lJvCXx2NJKHqD3eHFT29fPe
	 W5zGeEmKdGiNAe8rQPzE+ZS7ZKvyNJuR4xcbSqCX7HAiXBQJME+GXmDwtMNz5XymCv
	 0QNzsA5JZ3vRgFXJ2Z4+89H33CFao6/84HTS3iRMkk3xq5xh48dvZWPIgRYY8BDGuN
	 gi16bkueuyItDrdUBBIGYRpzFu3iqqAgAGp59jCWmDOcF4yj7JX7k+jZekGa5YQYx0
	 uLFNVlGSzVaZzYytNBpH+Q30EHUZcz1T+Pro2pwuE6Lh1f36y8+WVMzSNNHxQhCgDC
	 kH0ZSP7XcMA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92498C55190
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158609359.32387.18260060766248444786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7cb3ca05df2e56e31e635b30d70833cf6bfa05611515aa906a0533ce2f2611
Date: Fri, 20 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771586093
