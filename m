Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236652DCF63
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753892994; cv=none; b=S1uo0+d27iRbF7qlpGPwXAsfaboIOvZ76JH01eM8Ph5lryahmZo+w/lYhM7PQeBHc4UgwTbrqpyF8NPc7ce+QTIlv5bJQ5fI++u0i9U+rqM4yRby4V+v8kFhQmKiMv553WpRAxmHK4sLHYZoofiKYpZ5/Jrn/Hxt0sNn2Kw+PIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753892994; c=relaxed/simple;
	bh=YeOlD5NQehRDw9Ettk2fcZ391WXPu3FWkpMr8YjPONo=;
	h=To:Subject:From:Message-Id:Date; b=OYs4WWLfUYSQgSK7lPBiPu6dBkJIMDJJlX/x0e+YmZcPaPUyDQzTlLdxMS1sN4jLxrAN0+vVAf6hAwC+UELvsQ5R0pnS+jhy3CffSYcMw43T+U5c6CueENdtR8tDFf9nCbkabTh5hm++7HBUK/w2M46uF4IkoSJtoS2NGYjxSnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kidaSEZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kidaSEZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBBC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753892993;
	bh=YeOlD5NQehRDw9Ettk2fcZ391WXPu3FWkpMr8YjPONo=;
	h=To:Subject:From:Date:From;
	b=kidaSEZyROKusnXU7j12SFNkDRsw/lZRVZURn1UmluTOSMh4bimVs6MJugQktOzO7
	 Y39EksIRW/WJq+LtBLe3eT081/vFNEaA/eMA4kVJvAoMGVxYfdv2DO3RwMCgZNMHAX
	 BVx6IIUL94Lo3zr39EuEWq3fPvaqe0UVnf3bzcKDWeqey8Y4z9gt6aSpnxo5gNz4vs
	 kIEJlaWEJwofhN1U5mBTmSBPzARTLwSg/lQ5IhnX4IYLwkTXIvCjFmbgvsjjMkT2QK
	 lFyui6qnhA/fMus0MGCluJ5bUvHFaY/aWj2Lafr/Xa3Fw/mAubXspR6+aSHw8zOUPN
	 +MQE8/Qf2b6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93032C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389299359.983.8684883896536044527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62a58cab87d9c3a219454f8b4ea5f6ca080f384bd3c9c3b58f6400c762958e3
Date: Wed, 30 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753892993
