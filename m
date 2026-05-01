Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A15E72622
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777633654; cv=none; b=d80XK17omt2tFqSSWE0HaMq9N/iQ9Lz7BmgBwR3rBr+XXsQ/MgJBXPs3VklOJCsyPpSLSuyI0ygjS8JuP8VhfwAzzRTpUZRFm7od47XLZpveIewU+kcaTy8xpK24mxXyh0ueJm665QpWsuSmiBFWXPtdBKsgUBRYy5w0VW1asg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777633654; c=relaxed/simple;
	bh=V5LEh9SBjpDZLkKBbwZABShKSuwcPgtKpuM14PPEVIY=;
	h=To:Subject:From:Message-Id:Date; b=cblGRr4/EEOp9DVNlUsmsV3hg9IxoLJSRp4vVyUmMw+SVi0NX06BFg34TkIKs7bssuFxgjXYPXp/Qa+ABTbZuR+7r1IQL8d5Apn2cTj2iWT3wNUVjgKzjZY2cQ0PGv+5uQzahgmKGdtCD4qdhrvCEeKLA4yZ4/i05aYa9pb7nEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUK+JADT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUK+JADT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE919C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777633653;
	bh=V5LEh9SBjpDZLkKBbwZABShKSuwcPgtKpuM14PPEVIY=;
	h=To:Subject:From:Date:From;
	b=CUK+JADTpQhWYNo9mrKiKgDMZ2z/CwEXcSJtBXKN2Ua4grQvqFo5+zpGw0U0cyDbE
	 p7++DXnZ+RBVm1DYSIPSDU5mWD5Ml/K2d49NA1S9lRPJA+Mmt/ESu/OZyErK6J2wpH
	 IMQkKaHaBfl3ZSoehCyObIzRcZqa4MCvnwALPL1gn+XpqW807KZd0XhDX55SoWAwBv
	 /6Rgz8xLXBtbWRsngkCm/SYonGQRdH0t0mEFzfqQayTzVRt47SdWyoPbJ/GMCCuQll
	 GyOp9KJVa3tUCEv5zbZ06Jqxqd8BAL7XXHsdOAyyUZtejaCIjyLyBLkUw8cnWBHNm9
	 bYO5bXZkYoL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E8CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763365368.8362.8875009816420933151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe81d66d3abf95fdba283a65df75a7cf59c7b1edc7123d22eac1a81d08c066a9
Date: Fri, 01 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777633653
