Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571F813C816
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738854954; cv=none; b=BLByfl7ZWVbhW24kXagb8QmoV3BVDicpw4eTpLniB2jO18AI50FJ3fDQQ0JvG+K/PMpab0UBxe+GjEpfxxkJyrhMBapcrCM5P7E767tFPPueC3ofrKOoyDyokAR7CNnke6aR2hKUC7eI27HbMRQNAe6NsyZsNcBCGA7IwaBDzQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738854954; c=relaxed/simple;
	bh=3LDE6HDABz7XXzpb4rLpEv5Dep+8hJmQHudapOGWfxU=;
	h=To:Subject:From:Message-Id:Date; b=VDFrDiEzxv44fP6+o2s6Q/0VjHfCxw/C6lqM6riI6upBS9lyYOldq19NqbyOdeSUq2TwqRIuAxIaqjiwzEi54hTCit7mAgl0I3UftWvdnV0x3uVj1aV5H/ah0USHgu5Gl/mPxNTzJJu+ALt6hn/cvJb7zxe6grVPgUaybXVfWi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZ4uUeGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZ4uUeGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B56C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738854953;
	bh=3LDE6HDABz7XXzpb4rLpEv5Dep+8hJmQHudapOGWfxU=;
	h=To:Subject:From:Date:From;
	b=rZ4uUeGpvSUVIkD9u7nte5HpyCcvQg5i9q+mzZ9u9el0iBkiK1itlxPSWwjMORVuI
	 iXhObD84uXtT+YKoLP0tD+p2AizxfD5vW3rY7s8lKqFhHia4zz9lpAKD6jIK/XPW+B
	 aZ5k/d3J4DkzFS6S18WzQtRto5hrbBWj9JvoRuGEPdbiXEqSPgtnQRFf0QsMtr52Ad
	 bcZWqmniVLnjHrXx1T9utc7wS/4qq6PWqKnNTSzf96W1yTMgJ3nJWtMRxIXPHp5OV3
	 1l6F/XH9Up1akWhW0z8jocVSC8XmPiamUfunkkKYmuidNXfw3SayShMRoc6yCxYMTN
	 Q4+RSpOyM8uig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5272C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885495366.27018.12081608496946702098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2a9e6c922625c5fd28fd872427e0664f1b4625d69e03c364baabda99437d87
Date: Thu, 06 Feb 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738854953
