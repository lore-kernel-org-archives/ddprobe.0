Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A633209F56
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746652194; cv=none; b=gBgu3NieikjducSCWT7niRfCktsuf274PfSO98dA2TxSQvH7A9MvnITHA3E2SJPxUBRUlvlM5xbUFTMQIG6KEcbaujEt+sPy3PUcYjaXwD8673kN9Cp13wimnTyt8OV+NK8bHahGTv+s9DEF1jmkKaCBdrBaKuzA1smOufdr67E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746652194; c=relaxed/simple;
	bh=JYyvl5+icESqn21p8s4RsaWCknFhYlYrGZfVt0NlXMs=;
	h=To:Subject:From:Message-Id:Date; b=KNEqRbWeJ920gK1ync/7VdUhksa5KIqPvKKwtDHdwcu3TwugtrEUDn9TeQxlhRuC8K+EUxE+hBhi/LYGf57/zKleFyvvcdSHKlpOqs4oUFopqAUN0Z3Vnoytd5i8SXrivowhnN4eklkxHsODTIlfOS/d2n5EJzSdqGvh5KO+M68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOKaQqBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOKaQqBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746652193;
	bh=JYyvl5+icESqn21p8s4RsaWCknFhYlYrGZfVt0NlXMs=;
	h=To:Subject:From:Date:From;
	b=JOKaQqBI/ozv+h0pxeB4ahblIOJB3AG7YqmmztLieUdJeQ1D7AAon8cta/jMoDS20
	 i1v0JUN45fGICo99RRoAA2FTxqFUeaci5/NvByEIba/vxNt65O5kPh7nrkCELyfypm
	 Oeoa3of9k8rxQ0yBiuFGL+AX8HVsn23jMVtVinLRc3t+cdyEMswub7svt8tOXVdqRb
	 TsgLO4gJtnLZcvUNpEZlKMf7+s0ieBtnIwp+07zjL0IadZ4fCqFayvULRtRGXRlb+J
	 uT+2UhQ+CS/+PihwMKeejtcWhMXZjSCAL35W0R3viGPRIpB2zJTWQELD6wZnqQrbai
	 LmpaDCdecfJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02CC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665219357.11933.1192979113696248816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59488593805e6755b1e8d9ebd75ff73b521decd61787b8563aade8a0e2346f7
Date: Wed, 07 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746652193
