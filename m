Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07AE3793B6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785939635; cv=none; b=k+qkItkA/o0TKqg1UxGfw1eLODfMhhOMKrcC+CQvBcLJ/+zOg7yUaCMPja8K+P9OxP8fuy0etn20ivBSdv8cSdpS9ra1/qBgeHY1oN5vfHU8U3Dwq0i9LcREMRA5uCQcCrYNk8TrUM6pI/ffGdtIvKcs1gLjDTHEQoSvGdVTRtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785939635; c=relaxed/simple;
	bh=cuEiDuVbnuMTfnV6KT06zKvdq4oBG/zUbJv+8UFnbqU=;
	h=To:Subject:From:Message-Id:Date; b=XcK8Hou/QFEeoxGwVKN9L9AEq6KI8EuNPRT6tuxbIl4nP44owZix5KD8cHSD1tE89K5b5+N7scSXAl+EKrj29jZEtXvondOqCg6W47xfhNLpCsdRI7+PTGzcUkLqCiPWeCBCdNEHYvvGwsIxG1Cu8iBCtrDUGW36eM7uWfKDHy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RN82siTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RN82siTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A9C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785939633;
	bh=cuEiDuVbnuMTfnV6KT06zKvdq4oBG/zUbJv+8UFnbqU=;
	h=To:Subject:From:Date:From;
	b=RN82siTnbDn6rSx3asXnMGd3TpN+uAZ8BllxgrgZWJAbC609sGDqHD7cspDOgFbJC
	 OrdurSBh254ihscMi/9bZJytTfEHROA9WceL7BG75AawAg13irc8TTXrOKV04+stwM
	 DYuA1SQ3+YGoXB0e72oxK4aCHp4KNcy8eE8vxIdBS7NgtupmR4/vb2XWuPXDB8KnUX
	 toY/WWrjkVHoHyp48lOwRw4PQnGMfofxE1LLY0DstqIrxFzYVvfmM+yncDnGdL6tYT
	 rvr3CNw+UC5W1A+37dA4ioIlujixNh8eBTdEAUUwwHb3zSRcNjqbu3FkO6qxzLWbTr
	 VMmFJ4lg31lww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB806C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593963369.5986.16729511993386174521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d86cb48acf850b2f7ea8ee87229d5e0abef4a8efffe82f58786d90d9b96bc52
Date: Wed, 05 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785939633
