Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CB03314A4
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769946834; cv=none; b=A06gFzlrloshdEEcYiO17MVMv8M47ZYbAIfH5fMDn3WdjlGqdF49AOl5oVq0P+RT4q7sKs9CfWhJLpWlqwyhi/cg+slrjde/iPOBKuoM5A2Yzk7qFZaTlStsWoFOuc/fjdbczNz9Qnc05rE4LpB2SDSMlCyMswmFASRENU/nYwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769946834; c=relaxed/simple;
	bh=sDn0e3ZjEUjxz8HlNB9es56ARJdOQbnIpqfD0mogdAQ=;
	h=To:Subject:From:Message-Id:Date; b=I3M/NzfPvGYv6Q6vtazNKuYISp3TjzrNAqZ0FjQQ+cMCENhyUcePPTyWXghb0HjI/FBXq02xVg/25ktenfRTLrOHwdbjID20anYxmUzb93UYAHZ0QMyjyN+Mhe9GV+HuZNUXWz/SRv5ssXBoXAm0zetGzLXROfxF2Tc3BZ7t7yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOL4h5nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOL4h5nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA928C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769946833;
	bh=sDn0e3ZjEUjxz8HlNB9es56ARJdOQbnIpqfD0mogdAQ=;
	h=To:Subject:From:Date:From;
	b=iOL4h5nDAYni+vGCeLvfxmrfUrHS4oLeIDRrDiE8rtG+wL5XhQoKxzm9Bch+mSexB
	 kTomxwewSAOVEQPN5BzpUw7FJG4TYVtUt/raVvtvlsfXd2h4R8tEGgpd+cVlfEGQng
	 dP7ggtNpUlwpjLlsNvH0pWjXWd+0+89213pzVSGOIFKcHLNkrYC1BeMAgzuIllzSLl
	 /x7etdKuawAECiRAggPispS/QVNIjk0eArzilfpEvU4VVvY71YKY7R5Pjg4Er/+cLB
	 +6+F0dIKHVppprGUO55L+bC4JJDCtWWJPbS7TU6ZdZ9lsR8V0NaOME6Ap8TWmwixUU
	 Fep9x2OzJ6ACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190CE7C71A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994683357.10844.12892514396382821461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19f6bc1f0c70080a91690072db34d85291e4105c03c7ced2e90b57eb92975c8
Date: Sun, 01 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769946833
