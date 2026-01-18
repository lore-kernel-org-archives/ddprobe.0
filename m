Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BA15B1EB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768772034; cv=none; b=SDjabDOtsvR3RtCovfX+QmxOTwIHl+8Efn8U/wydUXDO67DKQBpWoXWz61YPpTgsCVDF1jrFmc5Yg8Jw88NEfUYu1NlOdUXOqjOEtQC50NnSaiOMlVUN4XSzrYdU4TvZPQ9bT2tCGqjPyOMCjMtgrh9fTlx4j1LaYJFVROnknag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768772034; c=relaxed/simple;
	bh=GS1mZcoDRwSAp9r9MkPA989UuN9FDw/KDRW4lM9aWP8=;
	h=To:Subject:From:Message-Id:Date; b=thCJRqdZx0w42VGRMXlRugVLGhH1eYenMMxdtGMv6VBxDJ+ws4XSz5w1xOQYS3FKINm2ChE2hbcvzhWgBqGl92RaAf/W+S0FvZn3tLsG6/kuICw2TbylErTD8woJzy4Fjp5chv6fJOthk/dicYo1FMhWczdankrzk0S1NjNEse8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKigascm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKigascm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768772033;
	bh=GS1mZcoDRwSAp9r9MkPA989UuN9FDw/KDRW4lM9aWP8=;
	h=To:Subject:From:Date:From;
	b=AKigascmD5X7zcV4etsgzqLHIx0DgSvnr5KLxcKiFIy4NPl1DgEqt2fl7ji1HMTEJ
	 ZXjgnTpEfxF8ODjTjg1/zIz0ns3hfmQEU1BcZLB8u8G88Sy464YAwwlivkSRn+lkVN
	 bb0Bxd0/bUgC/g26cnv9pc4bUjEa8cR4PGA7IDNlRlgfebKKbenNQ9f6mmmAluElIq
	 zWYzthpUI3p2FhDHWgKdslJ5divu9V2UAe/3oT7pl+xxTIWyO0Rj24japHl3xXDmDe
	 uSbUVXR/PeI7mcu1B1yXuCyaZKXFmGVh9VSRwSLZW4L0LEx2R1/CIwda7CPsvOzPFS
	 FVWxyZ0YY4DxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534CC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877203357.16702.16647778077046200792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941b844fd2ff4a82741a860151f4fc558ba41d102e58b41451aaf48651b07b39
Date: Sun, 18 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768772033
