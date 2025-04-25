Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA2717A2EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745569194; cv=none; b=Fe1N+pHv8PiyacQ/vc8nvUGH7gmbAbaggwTP9HlplVnMDQyVglDqpFDsXeyMOrTldFy9a10FTSexdA3/8vP5w/mhyh9iv9e6UqB5T+/Upbc2EawTBHca4Bu8p4gAmoNZMf6FNebXe2o5QCJXPAfaK7XWZLGq1iFo6MBVxjJ82Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745569194; c=relaxed/simple;
	bh=eflVoZoIbitgtWuuwQGjz34YfLkdL946X6AjdFy3acA=;
	h=To:Subject:From:Message-Id:Date; b=RuxTLf2X8sw1V7bh4qpV0ZGnSqUG9pV0jfQfUeLVTJWs7Nzhn8F/5232p2z0nuC2XaND9z8AG1iLQpoGQsVxgHBEKTk8M1ye9OaZHmghPNVQks3+cvfI9IeBXhcCTvSndFt0GfoWIgcq1BNrj/ME2Uq/Cjf+nV+TXxzIfRjYe5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV1z4vmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV1z4vmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B955C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745569193;
	bh=eflVoZoIbitgtWuuwQGjz34YfLkdL946X6AjdFy3acA=;
	h=To:Subject:From:Date:From;
	b=dV1z4vmKKREjOwSODXf1KE+tQbFy0xTw/jrNfN3NjYESxzkEXjoeHT4CglR0P6II0
	 at45F842O2BzxvELpEONlnt4isOdk4kdlKnsG6BVVdt+J32nCdf4KnRtairzwpLoUu
	 D6Gd5myGNzmS0rnsJzKM03FwfvLi2gOZY4LC7wis6TDQUZG2CnVKs500NpJE011P3S
	 Ik11l3cSdGXBsMrDBo7e8hS7wY3NE5qW26n/RtBoDJarYtENZlyx+7GqA2PN/P579k
	 qhmyRWM2MLoICgXfFOzeCPvEXCy/kA3+w3UR5roOeWH+6KD624hwCkqBdQtnKF6Eay
	 ZwZmpnSyeuPMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEF4C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556919357.23742.9095392587790614906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f8b896485a39d044747f069e58127d1288238f8b080737277b9562fd882e60
Date: Fri, 25 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745569193
