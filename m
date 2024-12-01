Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B21161FD8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733051754; cv=none; b=S+HLiKSf/MYHxByp+0pg/lafTQSocgzEXJ+av7zyjrDRijlm5ISQtkJMb2l2joVrdNN5jU8t6HWPfJHdE6yWhr63ytbOGAB/0MMwP38pXniHhbLf9JpuRy8Lg3Q+s9ToZ0a1podBbsiG3OTvqqRSy0fFtaqTocX8OISzAtJg4MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733051754; c=relaxed/simple;
	bh=+7KZZXKYDkAxtwqJH9mrm5C94A8vvgaxzPvK65LvKxw=;
	h=To:Subject:From:Message-Id:Date; b=rmwGl126D0ikvawOynCPlvL2+oTwgIZ9Qgfo1l0S6UbCV0HyTmdA8H4DkG5Yzp6kRZ2HF2YJeiPybQ0zo1S15glGHUgc6R6oR4etPv7BN8f6TI1RaX8Ei3k0zRiRhiaaaoyHP5JYJ3yK3EHityE7WB8EBEwDUaua7+28ZpdsR1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9T8efkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9T8efkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC02AC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733051753;
	bh=+7KZZXKYDkAxtwqJH9mrm5C94A8vvgaxzPvK65LvKxw=;
	h=To:Subject:From:Date:From;
	b=C9T8efkPmWBex66Lsl7hiSUaPSdR639PwfpJp8Vw5nTltQVjXIJS3jcnLsOi+hjDc
	 h7MS0UnGhNEnthAJp5HFKcjLCVb5g10P2EdYen0u9VtpQ6PmXR0L+Q/8mHmtC0ba7Z
	 4fppkR2YrU5owzYbbjoGJS8mXuHBWLxwmgDQN+sXB5qOjayD8DsRvLPKSvQE/uAmfl
	 LfiogzQ/LTCOc5jPP2MS3qZqIQWyT0qTM2M36bUTUMllFaos+dHTtZTo0A9U3QQTMo
	 E9PRxRcfYyT03LWcpvNXnBuTmKeDP3DGSTW3QywmI5J2lE3zw2BIzRrg/4tJiUQ37F
	 Eau7Fw7DGGYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7539D49762
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305175364.29505.13800943426585654770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1eb68f87b0814696d57f6f3b4d7482000cb2cf003177338bec24927635b540
Date: Sun, 01 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733051753
