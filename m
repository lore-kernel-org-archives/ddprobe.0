Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47780A21
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713983483; cv=none; b=GRa6zt3yych68PAhuh9wbL+jbNcTefRzV5h3JNDVBA/2l454nR4Q1bSrj00M4BriBTmsqtQ7vzLBKnD9kRtwoFR8gD2TApoio3HlJNgYO2B15sY3knXIIX7zcdHdjfY8undChsTDXnzF+EB2GbXla15emSpZwgcpx6pxdAf3GhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713983483; c=relaxed/simple;
	bh=+D1A3gamsj8OHzrPWEzgdrkPKIRKihI8r8PFVYDwBdo=;
	h=To:Subject:From:Message-Id:Date; b=gSVuKGPAXTSYR87GpRkt27xMXaJYIc4J/ZQGiodWBTM+6ZXynrrBDWNxvUlJgJBCbQ2GR9Zzzc7+oZ06Q1b8jolarBX5DAmLMqFJVVOcKvVE2xNNecVPfheaCg/4VFLC45mFrcI0RtLd2yr3M0cE8n0Cx3wbrBxpGc4LcbpFbKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwQcny1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwQcny1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98EDC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713983482;
	bh=+D1A3gamsj8OHzrPWEzgdrkPKIRKihI8r8PFVYDwBdo=;
	h=To:Subject:From:Date:From;
	b=UwQcny1sb2WVpQABI8v6DIWuH9NK/m1ZmK9gzzuJyI9aoxLDYXiVArhV0KXlwTMTD
	 VgbzY1XimLcpzlGq73PKiKTxtiaPLY64aRYb2rJISY5OdRpBixumIia0rMYwnDMKSz
	 RySX0d24DM8URyWJZfePU5pPTx/ClF8YcqGdSlw8ePiXqQPv4fV1vjnBZQojFx2Ms5
	 WphGrWPC2+5BvQ1tjWtKSkuoyCOu/B/LRqySeJ0WjQLQQcKdDBiA9LVyuGgjfqneja
	 yPNKg4TFBj41o0ASStZl+2nei+bLsHwMxJ4TTVteZjaWjFqUI2bE+OE9xJIw8/yJof
	 OK3HKLnOm/o8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53C9C10F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398348279.30321.11262738459825089941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8507ebc6cdd91527e2dd6edfae6f41930505fbc4041bcbf15e6439639516d20
Date: Wed, 24 Apr 2024 18:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713983482
