Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CCE35F180
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781595994; cv=none; b=os/jp7uZrkaUNQYAOVz1eA0Gv9HDsDTMErSJNWsC9IU/cNb/0HHAxFIVKAiae/h1bg9U5fLBJErBgUKNXNZVlBkkruIuwYhMkHGOuOHfug+mfo5oiaP5+gmEP/gG+jYbnM0quZ3ksWSN+WbCJCVx7nPWL7s0Mb0yvsTDE/xY7wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781595994; c=relaxed/simple;
	bh=gBbFiazuTNcOcAw6BnRq6BDDWkKwe9OVEzlxHxqI/fs=;
	h=To:Subject:From:Message-Id:Date; b=n44f/vbk1s1D61Uu1qoCBLJ3gVY2RwGo8nCEl758QJanUIaq1i1ozf6+O0VCMZ20V6vBLOIJpxgRYLtOdDXzyj9VI3QGSFYPA4qzxG3+JoUrLp/whFVPtaQEGZFYD3WRdnSp6LLQ1PvXGdreg6ZonhOUTUchiSSM3bFITrXO+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNjksFJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNjksFJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D149AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781595993;
	bh=gBbFiazuTNcOcAw6BnRq6BDDWkKwe9OVEzlxHxqI/fs=;
	h=To:Subject:From:Date:From;
	b=hNjksFJw6PFRYQJ0gnuxnEoPVuzzLBr/qi0RY9m5kRxLN/m8qrsLZ/mmsPZpPWMGP
	 vCzUZpwP2vyoHJhA2gwle9eZhN1RgRjGfIYwSTxFCxIWiskKBCZYqNQIdS3ZDCXviq
	 cctSEFAmS/6uTkn3YwbBf5Mzn6KEIOdaC3dHYO+mP+Mq3JXu7oEjKW7Vii/0tkEP/A
	 K90yMyNrf1RRpos3CvWElKrdPkKjMGL4NnWLNTt4WIdsgRG1CA27V+tIMadIfM1szo
	 In4mYvwU+ItpvQevH5aUYbB+SYX8bo0q64kjh8I7YNniYk39pxh4Pmho6924rAd/ED
	 3rxsAhjRbYT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4614CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159599372.8054.12598816471359192324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a995b461a8681c4aa3c35f60ddad637109dbfbbd366c514dfe60d7d2ac6c881
Date: Tue, 16 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781595993
