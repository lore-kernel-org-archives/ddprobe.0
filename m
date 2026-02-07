Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E527E05A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770485634; cv=none; b=Nwf6OZVdcaUKFhP/bedMmIOJW2tED2IdjNVEUw0P/0p1pZKdOd/aRUSPUNsjp12Lwn6295xpH4WZGOFTWYb+1W+Zy7THqL660olkgy14KyAf7Q4wS5LttFLVJl76NSTFepoW42Zwh7JbnNRfeU8XRbGiQj5bmxo1YGT5XMWjajE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770485634; c=relaxed/simple;
	bh=iYycSOtCE3aP/2I22CFcqAGnK7zocyngnb16OpkGVbI=;
	h=To:Subject:From:Message-Id:Date; b=AOu+C60F/JzzB6bW3WnodieVsZw9DBfTygBBwy0W2vEepYz8b/V+u1cMMeTupwM6yvWkNowiud0AluSV3kCIqXd6GbOFquJSZezbRvOMQgoFLdCy0TMA37cWWCcJ8txeBGDIKwMcOZZ/uf4u+t17nydcZ652qVEeRkYr4JoZ9Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB+3GaZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB+3GaZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58AEC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770485633;
	bh=iYycSOtCE3aP/2I22CFcqAGnK7zocyngnb16OpkGVbI=;
	h=To:Subject:From:Date:From;
	b=lB+3GaZ+KhLqHWKYkvOfBgTWsPdzoYuGvlEWQf+Invmg3e+PglCm9uSOvgByq1JRx
	 cnApToSfH0qYbDfD+wyDwboPQjhoSMGJHC09jQrdfZo7HfpNHzYzQBSPubXSSYmR8e
	 43jSp11/L3qqldhf/irDxyqaHguNr+CMUoSpcggR8nXts1gkMsTqVSkMS708NJ7d/x
	 XNbG3x9t3sMabUAail/XS9+i1ajJtPKL7aK4YNksnSxa6IIfjQ2QnZlKD2MAHwMmlP
	 9S9Sh/4JsmThJAxYnzuXvN0CwB8DcOF30+hp4+CRCOx1fa2+WDbS9xjAu7rJjwtST8
	 gVrMSWeLzoyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0967EE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048563362.15628.9997560488295661279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1620b9f2506eaf5a6d22c9c69f028574b28c4564c3888983a9ee1688d312483b
Date: Sat, 07 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770485633
