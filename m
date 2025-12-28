Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCED1DB356
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766964234; cv=none; b=VkeM6iN8QN4XOOcg1OJ3TUR2R0tH+UGzYGlR0fiZzZbYuNOfFzi1BDEYmoCoq3oEeGyqz/vzMq3notaARB6VxSr+A9MqWofBXwdE2Asdx/hq4Bwm4DpMsqtRQMwTuvRmtBe1PB6Fxys61t37b1S62JLTBwUMDQw/KZfYWssd3T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766964234; c=relaxed/simple;
	bh=0zNdtWoVy83ihgVi2ltU/ilE2JItc1arnzBiZQ02mA0=;
	h=To:Subject:From:Message-Id:Date; b=W4dJA6O+dsXx5hI7l+dGzUNptmtG/mxfIHr/m1hkXh+quVHtLMyNNwlO76SIenozJZ8/4gLkFOQij3xBiXOAvdO/VXj32tDCVcfSJH23vPvxlP4OGkByIDiv6w6zzHVzEe4Ww7Rg01Ais3MD+1fWlFv1UKQJ9S5EAYEiSsi5eao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLft4T0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLft4T0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9B8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766964233;
	bh=0zNdtWoVy83ihgVi2ltU/ilE2JItc1arnzBiZQ02mA0=;
	h=To:Subject:From:Date:From;
	b=vLft4T0mQbESIR5G/T/h7CsJw+i1veCykiW3hEJ21cC+InlgYLYQmHlbLCwlalFwE
	 vIf0pX+xpQXnKMaQULPftQHHhjR6bKd9L/MLc1RbMGQvsJPkwCusdDmlLCa4QX+ufJ
	 XvjZmFcgmgFekpJzqEnSbLKSAtTEcp05diIt5hACbGawcLFC9R+4sB6/pFuJna/yrL
	 TGqXGLSHfGqXtJKPYapKsTkb+ub0HtuWOT1YO4fKWs6x7XV2kNg6d4QpbR+gZoS0aO
	 3y5HXphQuKDnm+hdAE5eNkoTfinKxHXBCSn2Skei497tg4bquu3DoS/s0ww6Jir7RL
	 J9lclwAJrspAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC11D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696423359.20942.12853973880737279871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2a918e7d6317056e5f1417b6e70281f5019aace223a2a26f79a430d093c130
Date: Sun, 28 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766964233
