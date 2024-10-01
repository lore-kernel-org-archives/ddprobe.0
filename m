Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147103209
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727783154; cv=none; b=S6o+IAP6Z7pCw6oGkg+aa+zSq0m0yD2uQgrm2NjtJIfAF9fyh+QxVWjdwJ1cymh0ZujQ1SB+TyTxjPk8lhf61E6iUE5YU979jL+GdybargXppfMK4helUJBqC06nrGhS9J8JDneq4nux+B7hGhaclmfN7mSncSLodsJs+CnxJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727783154; c=relaxed/simple;
	bh=rBgA65W5YphL7zVxPjmF/F5PMxLPFSH4hll2FtY2gz8=;
	h=To:Subject:From:Message-Id:Date; b=bUAFZG0VeW6tPPF58N5oNRqIJNRWHoYe/wHTNFjpdkc4icElWq13lCCbju8AXQdrKZ/t5RzrGBfkeQH/TYHv5twr2HOPMh8DyflSZ8bdlJ6W5ymMISkt4jomMSJyKQ6IzhK61Jr0EKCZCQK+Xw7+Ufe5RHBF+a2D1h8LpTtbaNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ6obFLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ6obFLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E9C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727783153;
	bh=rBgA65W5YphL7zVxPjmF/F5PMxLPFSH4hll2FtY2gz8=;
	h=To:Subject:From:Date:From;
	b=VZ6obFLTbwVEe07CPXeHsANFaDRv5ICyhT8a1CQsSXgGTWNjqNAi41UQeXCiAD+BE
	 N9RvR1t0/SpiRG3QBR2T2gtckOHvoqxnLmQ7k4fRZ0aV3nxbASxcEyhgycgQx4nas2
	 jt29ZXboNr0ZSIJyVMdw6caRUbl+Qw0PsHqXRVQCD6BehV+SKPOl9tYTXzOpigr6W+
	 6lspqiZ4upsK93DfEUKDuI8CEWr+h642WZQABpVn4N63B07znlIW11sbz4WYs/lZKN
	 tQ9xVNhaSPCIL6euO0zvIAVw2Dctv2TPKrPMvzoUIdy4SSRQcCl/WGPBEzpNVXRneC
	 mcM0L14VopYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C63CCE7D10
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778315363.6844.80111526348653062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6507537f2962038c8f7c6861e2998cd5e76a111fa4b1ca924215f9d0109460
Date: Tue, 01 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727783153
