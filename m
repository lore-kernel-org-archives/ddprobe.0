Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DE13FE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755434994; cv=none; b=c9Pwvd1Q2P3LJzFBoUrUoNP2wePiTtPN3B2Jx7XIlBJyGd7p0/Eq7VNzX5WEve7i4sl0Fq6Et9dD4Fa0r3c37H1XVPW5fTFL0DJ/p3u7Gy5cL5f5e1YaDr8Ymky5xPNIu1IVLmePDeVg4QJ9CcX+R+jSYOdSR9/B+5FXBRQjWcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755434994; c=relaxed/simple;
	bh=59CsZBAZQcNwp6K2RmmdqNP1Gv4/Jxc19QYYFm7v+zo=;
	h=To:Subject:From:Message-Id:Date; b=sSSjUlIXF2VQ/ipDHT3RQJl6BOwltM3QpuXoOhhYKM7sNNrIMySGYvYgd0f4u/UsONh6PzbGIMm1C3JCrTh2W2KEOVUqkM5M+GjXmLtVTLo2ExnzdKtgGjJs70noyvDUAxeMBZZeqTPWLIF6ObwA4QArs7aE+CDDWsMEaLvnXZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV/MX8Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV/MX8Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755434993;
	bh=59CsZBAZQcNwp6K2RmmdqNP1Gv4/Jxc19QYYFm7v+zo=;
	h=To:Subject:From:Date:From;
	b=uV/MX8Za9GWGbS3oUhbkLbmXEkTwyga3Wu1J5R6S7N+JGp2CmA5x3cTwb4rgqIMZD
	 pWU+X88kYTJdmrCBYvwsmA2ZZHo6jMiIdbi3VZeTunRDjkIm1BzEgkTyy2hH3Lh0Tf
	 6hPnKpHgQuM8/ye25qchr6Svnmisdzs9ISNj16gnldho8T7H20RGxHew7qqfYR5Wa4
	 oo+Uazh/hl63JLjGs97mzIl3/cAdNntShaKuzTT0pCurqMl2KVsV0I1XTq39F2Hz1+
	 RGhT79MvUODRYW9gGnUXhonJJEgp/NkQN11mb9WQ8YGrVWLfLLVBOqCCpU+0fBehwj
	 iavdlYsegY97w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CBCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543499357.4621.6507484651791428055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277f95f7fad24d456eb97f628696d989f70a9712e44ad8e2411cceb3d6599c83
Date: Sun, 17 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755434993
