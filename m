Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2001E3DF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729785354; cv=none; b=kIsYxAdovMeONn7vLWPyn5eqRHjR3PyfVBCSnSUTbw7ev8Ni4JVznfX17vPVz1g0HTSrsMxv7hsm12YrwGRr4o/fEr41xl/guj9wbYAK+Ra5r95TfjxIXhFgLeocow7o3D/2BINL06VKZAd1EuRDMVeiJyLvFhWylQAUSjoj+cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729785354; c=relaxed/simple;
	bh=9m2ej0DB1SH7X/NE8wfPaaodWb130vVj9bdWDSqPHqg=;
	h=To:Subject:From:Message-Id:Date; b=qaHDGGr0wdRDW/vIs7nk2Ic9ElO3XttPaOQUAmNGs8vMbEPbuCi2kzSNKHvm+YKUdzNkhhhDu7ubxmWVQRKnMv2d6NO8JUywsq0pa2vhDKUhZElqZW+nSY5en2TpWiohYo10Cg0/ctNfjkOvDEGwfvvNvtc7LtGoCHP0dFFgzcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvGZ51nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvGZ51nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC1C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729785353;
	bh=9m2ej0DB1SH7X/NE8wfPaaodWb130vVj9bdWDSqPHqg=;
	h=To:Subject:From:Date:From;
	b=LvGZ51nlyKOYgJLTPgX5u3Cq49vTZKtdqPrnWdjVNGvZMc2nDPAxjo972aNEHRZZ4
	 izP2HLTmj8E6ENeuGU/ldOyjnTzQI1QUECg4Mj575wIf/PfosS1ULLwdXP72seGMzi
	 tfOEn/TykT5r37uqSkYeWykSWEORuyuf08ADptPNafF0zi8fAw5Tz285JtU0IEUGxx
	 JyJJbyfvVOPI8KEQ/QjXyDXiwBL9i8E/Wm5zHPGSX9xgPaH9qcMb3V5rp+XrC/P0vj
	 mnbaKvP4AaHIGFrIBAxvHXjeMDQ/orZtLgsm5pgUtiFTACfuQUh/XoGr4Ng4Tlg6jm
	 QkgnvTV8mCEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EDCE8E8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172978535360.12212.12608542155245832805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d896e211831a5fa4c861ff26c2e96c2d7849cdd60b8565c80f310e2b70f7ed6
Date: Thu, 24 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729785353
