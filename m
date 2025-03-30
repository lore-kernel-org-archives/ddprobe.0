Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3460E1DE2AD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743359394; cv=none; b=XKqhb2VpyHozegk4RPu0v02FLUTuwEIbRAkmq1HEwGewZ4BaI8FbyIhwNqZ8DV2jE6I79tjE16hF2xj0A9zI9Ch67wcAOuv31+p76+x1CmVjy+xIt/9G5oUBNLtkZwAxG/GUuEBlGOMm6MaSniV3xunN1D+kaJFJ+UEBbXmBXQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743359394; c=relaxed/simple;
	bh=bl1CveuD4niDSRfLxc+1jyQVJ+wRuweXS/XLiCzJsyk=;
	h=To:Subject:From:Message-Id:Date; b=GldsC4vx/py3BJKfpvwqCWQq3xauvGnFs/LYDW741iJsodR1gd6rATRLZaL9Fx3q4cmlKeKu72/yzKPrqD9MRVUU4DYevqR/Pm+t8+a3VuxEPyDbloJ6+1PFGVU1EXeZZGbUSTXC38bCWzVJjElySC0NYSgK+5jVqxiD7reJOVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW6FyOcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW6FyOcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA141C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743359393;
	bh=bl1CveuD4niDSRfLxc+1jyQVJ+wRuweXS/XLiCzJsyk=;
	h=To:Subject:From:Date:From;
	b=DW6FyOcQYVEKuDnFCn30Jazq/9NCPYiZENorJY73hr9I7LL4o+VXfojjPNrTa2I7w
	 bO+lqrmBpDaFbXlXieCXOX+WLfRHeX03s0Fz5YLmJ7H+zVxAfahqDPAfsanMCm+pup
	 mcqICVxuYa6U6jsxhFhNRxpmTjql7hofgn1YMg0y3tl6qrjex/dQcJaD9XCYK3jucr
	 FGpgku+ifVaxT2PafH8quhNua+1RMsnMj2EsgMs6f5i2V+xaqYLSjSAppg/LpfYF3L
	 GvrvMlv4+iFacvczfC54XcFfHuob3qadiFnLc+NVpwiRCe8eQ9JYyyj18hFcHhyAv3
	 OCkhaqmf/sF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969AFC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335939359.22980.16429812506315679324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0acdcbe5debc39fd70b2e4ac76830b65da5a0cae4ed85564f2684d5c2a3e86e
Date: Sun, 30 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743359393
