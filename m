Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D83528D8F2
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752667194; cv=none; b=a77M/fKP9H5Yx0FoyqfEvnrTYp+7w7xAVdHNGSX9kA0DruuwXwldsdrRdl6447735JrNJc0vTmT/U+RaAQ8bxzYK5x8CyWOuS70hB5DzFED1cuGojDG1f2ZVw22r7yN3PfcCFlD8Zbbghb0K1cA3+ZSusSYgaSvvYeJHlln4lvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752667194; c=relaxed/simple;
	bh=bkaemDFoXvcXfaMpKlbS4F4wVdcHA4/GRFOkstcouHE=;
	h=To:Subject:From:Message-Id:Date; b=aqAhjpijXX4Dt+ZiZkMFpfUBOZbsMFUlH+06pIYLVwaiWPXPaFUAq+OtzS6eccOM1exD+Cyh5C8GoA9pww6SeMHlKKTM5kg20M/BXF2XoYMlEf4gNXcO81Fvnkgr7PRqxYZZ1EIUx8fZKjNAVbr+eMbcNcT4Cp+Eq9JtkqCseYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy10/gLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy10/gLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBEFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752667193;
	bh=bkaemDFoXvcXfaMpKlbS4F4wVdcHA4/GRFOkstcouHE=;
	h=To:Subject:From:Date:From;
	b=Yy10/gLfvQ10jQ25Jl5mSMx74oTWdNLKzMcpvNE7j852MhK/37AZax/a9qrTUIP/6
	 Zrpn0TwfPu35hlU9N6R9Gg71FePfheYoT6kksMqf4l60rFujAXvi/g0KNxM9u+8GfY
	 u43oppWXWPvGWpWHVe8Fe6q5RfBkQeuehTbogdpd53UjXILaYIPoyhIC5kW1zWmWoa
	 FVdb0hQibGpWXJJLehv+y9kZwQwPYg7F6YgRJBDsBsOL+EevCIZwPssC1XojA3T8st
	 hzx1Qid354m9/tYVlQIpnU8ItdrcevnUPOxzsS3ZeMbi0BV8vp2R3T9JLIYyEhmJ3t
	 R4hgTrC1m7cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BECEC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266719362.11700.16474178545942485296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44137b7daccdadd13e9bd07c104b9a0636d3de2dde2c392190f82c1296cc9309
Date: Wed, 16 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752667193
