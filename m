Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA6189F5C
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715794; cv=none; b=Cvu1bNAta36qaEFoNy7yvdWtR07cAKm7bQesn1YdMINQr0UC9rlfj17qJvCILAvktRWAANh6ZPPeMzkCb+dBDXYq76qika2Lpr4c2r6xUK5YGGCE2toLjpws9wrnRhjsVJZ0wV8Om4rzajFtyDHO4rt/tJXvcpvkBtCAZNdnV/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715794; c=relaxed/simple;
	bh=GpZDEFByO2fMMQVHdxLZgNp6f18DXP59/EwSlASFnLg=;
	h=To:Subject:From:Message-Id:Date; b=BwlKYjUsbUyJysiZ1EAr8Rkp2+BkHkytX+3B4SjlpiothEFbtNWdcsyW6Hec0aGEnNFMzuXJmXihT73OZorOJaMAZImvT/nXEu1ztCddrZmjilZZWBvnVwaS7Y4tKTWJJGk+iu12PWbQdeQuJJaPpwGPy2EittjMcOJbgV+xBiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spvzFTza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spvzFTza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE70C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746715793;
	bh=GpZDEFByO2fMMQVHdxLZgNp6f18DXP59/EwSlASFnLg=;
	h=To:Subject:From:Date:From;
	b=spvzFTzafj9SqnN/VPquEqTDRcHx62aCN5UPUk1Pt7s31Kj59xdpR0xgpiu2v6Q21
	 n2h30G1Ekt7CwTAjUA/gIRoldTFVFVyBmGpCdbLhjHAiR1ewL4oU431sfAljbpUpAT
	 drl6DfGA5RFpQ6ExpLQBwO6LLk+PHaAnbxByC8Wmp+wqbhvOicHoTWGavPC0mMgMSL
	 H9XL2Itj5kfdSnoOyXT2tiKqz5ie7QFmq6rS1xvL9t8k+rQ5QCniv3IWeFR/DXr8D1
	 f3k1XXdvfoP07o5mIaLc5SEpIu3Ru5JbMDyjKgyRUzzgudIUILbXBE++hpYKa2l75S
	 AVwOCxHo3erPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F8C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671579357.14028.9248704437298538400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1985dc3bf8e712fb1a8619c0f20db37c46713b9f5440a4f34124400f6c24514d
Date: Thu, 08 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746715793
