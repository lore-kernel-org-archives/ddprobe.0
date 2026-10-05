Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362EC47ECFB
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791202834; cv=none; b=V/ezVsOdSD9cAkYTYTrkXLGN6dCXzaBB2l8RqmS40Kb06d9D00ds0DS1j2IyM0h4mcHRm9JKU38RNe1l+84zVaszQZHMRpAZtupUxzWwU1vDyf13VmEdFTfP1PFxD1nmWPGpYxUJITJS3cp8Vty2R4IHZ22Gq2+HNH6MezS4JLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791202834; c=relaxed/simple;
	bh=3gxQWEB1DRukQRLPjfD+9kF6GkFhaepDLxvXVJFGMqY=;
	h=To:Subject:From:Message-Id:Date; b=sZR42IlqeabqzJtCBeuWLjqlq5VMlw7/EEZ2ymxeHNW1UjfRhoFUuytN64x/1Eg8HqG9R+KftP9Og21BN8woctSWCys5RYJEiB2MG/vFsVbh3BoI3SoFvY15w3Wv/2RNXHtLP/Y6dHzxh+DV7b1AFdpHflSTkLQQm58i01nnnBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Tdi9L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Tdi9L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC756C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791202833;
	bh=3gxQWEB1DRukQRLPjfD+9kF6GkFhaepDLxvXVJFGMqY=;
	h=To:Subject:From:Date:From;
	b=p3Tdi9L0BtNh6PXD+f0e8CJZF3ilh19n4ffuQS2T1you4QExZxsOMAD2niSano6om
	 U/ADjrdS0tUo9rFldqjvQbk7L6F8S3NElWNi8dNAZ+Vx+ML1gJNBEewEryiRk9ZSfw
	 q9Lra7WcCpdhk0pEoxrITE1mgbYEm3ps0W3PyuTJJTpzi3lV+6gy0jgL57WIv31k16
	 47Lnfr1xnbJe3YGn1S0SBa9mUBdPnmdCvSaqDzN4DNTQ4Gy1CJrx9dV9/GlP0pyIK0
	 kh5pO+uLXGSYHd/odIleF42NEM2K+GjIlpchVmLae5JboHg4cOA6jdJesJ5Mrrzda0
	 Xh8+rOMrySNsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB5CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120283368.28133.3353751557037766186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0d48722b94ef66970c8072fbaff2c3bfcb4b3371e1f89a73fc576846252977
Date: Mon, 05 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791202833
