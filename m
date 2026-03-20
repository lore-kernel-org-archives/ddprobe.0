Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC3B450F2
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774045494; cv=none; b=mGI839i8SqaY2vtxl6DfXguRYGvnfRVEsmwOnSlkoOpEcTdivscEG0GJ1Y2F31fJGKcI2rGEgumwu+CQPcelveZOrcPJVxIbnmgH6aHRmACmIKCOL0laKJUHZcHKbAEK3drzPjmSBplR5A72DmfrxJ8qEJyLDKFQmL+dz12ev0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774045494; c=relaxed/simple;
	bh=ExY9sW5O05cYEEdZIWoiJzxd1o5V5UJ26Prn8q3AOJI=;
	h=To:Subject:From:Message-Id:Date; b=GMEN6nNrYs+4lqaDv9cdxR2X3AQi4qe6+MLC4U2vPBc7JuVF8xYhkZ1vaLJkReMAfrSYXAVj/Yt8Q5drkY2mfwHz3GvO2tlQriXaeukU5FKn/is2Oz4tXlNSmKXpIjCb+8hS7XJCXUiwtNcY5GgH8O/o4TNGeaYNuQ5QrLGYoqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkYEuJ+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkYEuJ+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67EEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774045493;
	bh=ExY9sW5O05cYEEdZIWoiJzxd1o5V5UJ26Prn8q3AOJI=;
	h=To:Subject:From:Date:From;
	b=rkYEuJ+/0p3AlyY4bpvGuiLsuf70ouKxEosqD4PqASKs406tXZ+XSNM5h8Oi/JHRg
	 rfmuXo6kVZ/SV4S38KMGigTMpXz11TxAZH2YQV3kBm9WRhNCxEyG4IobPGAyU08S+7
	 wzO2olGQhklmLIxmOSd+zAvQ6E+exQiMX6ntL+jtMsLyQ/QKvunWD9CgqAgr0Q7BOE
	 ZGA++Fz/UU213QtrSNBOouFPje9WpcktDXjpLpIaxJF1Q0rCdwNajAbBB40iyjjum5
	 7WLp3HpkCH1GULfK3iGuRdjjrJ5LXxZqlp9WRE05pslTVGM84s9ipxjrCmFCN0Up4u
	 ydep0uRLFKgaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949BE1099B48
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404549357.7549.8899144584449950996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82887b000349e4d2c6bb653af9951e380e534658c95ad072c73f9cd375e88ca8
Date: Fri, 20 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774045493
