Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE02F8BF0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776176254; cv=none; b=HQy2+twfzupi/l55+t1FhUOJ9Vyc4iaAc+xXtjxfPzd5DKb1F17OjDQy8thLYxwHnBcLjKGYHECQleAQYciAluex7GeBdkpnayt2gZVHeCSvxquRePzmeIweB5fEmknV4PHgp8qe2JzkWQXETOifkj5LKzi2Kg/ABoQ7ftHR/O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776176254; c=relaxed/simple;
	bh=6UNMOtxYgl1vKDHiKusU2OIzHzOmX6iEovgxWYPbXJI=;
	h=To:Subject:From:Message-Id:Date; b=JZfBpwueWhkHFbNzfFvI8GPIn2vV1poV2q7ijbcMHf7X3EbMeTmFPYREUr9WF9uhdFMkhoDDm9Yst/nVNN606Vr4UxG2UNPp2OovlIyqFgfMTE+lyjGCrMj3CuRWicxRdxtfSMdsWKMTa5axXh//+P/xU3zYFLEX4dabPjkSZ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNr3AR2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNr3AR2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4712C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776176253;
	bh=6UNMOtxYgl1vKDHiKusU2OIzHzOmX6iEovgxWYPbXJI=;
	h=To:Subject:From:Date:From;
	b=mNr3AR2Uchgdkwb27X0SR5cJBAIpU5E1L9J1mcLtguHpuPVjsB4mnQscLJ47x0Pl7
	 KjT1vEGVYRIq8eubiMDiTu9lShpxqhLWJKjtYYhILoTgLc1hLpxvlc/wVWb519tLUx
	 aYJbwbihtPsYpRwuai41CykAWsHyUfImQ3Zn5blMLMCVWBo26k3o/xgds7B5eWTzVt
	 4Hd3pqLhKw5GD7VJubqKYLe9mEuiPjurAoYZbXE27eeeS/SiE1W+/tWna1BmIogf1a
	 XG/dedKrsLywzpZiHxznz1iGgn9WL/HwwS35Q+YAA/cL/cGLuY16BBq7krqX9j48VE
	 QKzYwq6eJmEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66DF9D0D1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617625370.4677.14270455707151329409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ec3d4b4e4a6c27b608c650b844f889ce39b2705bcaccd49d661579eb8f9b61
Date: Tue, 14 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776176253
