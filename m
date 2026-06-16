Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4399621B9F6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781586994; cv=none; b=qcUeOoztgFr1XXsW2VtkhjWns7hrpRSuGbDMRJSmuJjZ7wRPkcjk0VUYBvzhAZ1mnSwSyazo53PI7JWnUPmlqeiwTSGIA3yQ+nCw09yebRKqgLQ70GTLdUJMn9iGtuLSbwY4sQ41hbP8OjNYGz5MkPCivMALpct0S2LvPXZ8950=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781586994; c=relaxed/simple;
	bh=ELslbUxyj1zlOvU8v74YR7du+Fx7rkUuEVqsAhZ1KWg=;
	h=To:Subject:From:Message-Id:Date; b=Y3YoRaTr9wxWB4QrHCYmTd1JNA825DfJcDP4w5432kPePhFkfbccM4u1MjbNuqPnPCC43xxPqSbNzCV7GcY61xZaib46w7aF+B25Zgq7IBah6tQ5GZN6dYbZ2jgH5CDuaOHArBmwaDKE9YdVJbfA3h6xpCTjcwJH99YIvP81/fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZB9pPi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZB9pPi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54DEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781586993;
	bh=ELslbUxyj1zlOvU8v74YR7du+Fx7rkUuEVqsAhZ1KWg=;
	h=To:Subject:From:Date:From;
	b=iZB9pPi1N8fwsJr9PjDXfB71Nf2CUl5hOSb5hJ1vXwzAgwbPdVLP0YoUUQN5j4MjV
	 aTnOyw9S9AoJQYbAqtD0stLgoRArI8mMAWEpmXcLKzCbf0ivdnkylI5REVIF3tWP7N
	 QHpM7CXs+X4QcWx6E8kfA0Q0Nnwu4My1n2jzijw/YLV4OvbRC9om5No7WmRoHD5LY3
	 UuBB0HVAOIJWGPMwNPIiPbd8ghhDAHvhkB0dNtL5AGHrmAWVG6ciswJOmeUyl31h99
	 gTVqsw20tL2emxsGUwHugyUPg8XU8osLBufo5g6bSt1aLlVK4D/vJa8H7w4hTIhaJR
	 a6QSGt8PZtubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD41CD98CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158699369.14177.14234698611889274714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a13ca1f796e8ded12fc148f59e12f333c5eff3cb1421372448c35930dfb870
Date: Tue, 16 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781586993
