Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BCD14E2F2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770518034; cv=none; b=EVOCwhBEKrtrfSnSP2/uNkYspMMi0/1vxlt8Hb01RKThPc6SSigZzgyvujYGQ5uehK0ErunX8XYue6MzdAWO8ta5WWhffHxx8moxA08XW4+0l/ZE+hFRp533oW4ST/QZmaOx0eXejmVaQmaXNQh1eZpmqejk/Uj/zD7Px8P7Rgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770518034; c=relaxed/simple;
	bh=nkrnBiSmO/8ewNpnBR4lOSqT34uoOhK1ir9eNcgM4dI=;
	h=To:Subject:From:Message-Id:Date; b=c0QnpwV227RCtiqqFNBWnNIXIV47iDIoSiVXsbNSEWVUqC8gdU1c1GUrG36b8rwpL0ZL1gThZU8vQuW24Oipx3tsV9UI48jqG45+70l12YpDrgVqzwFTnogFrDQiilAMWp9F/WMe4qEku9h1MVOrPYQmR/chgq0DdhrsFE1CqLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faonDDIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faonDDIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C1EC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770518033;
	bh=nkrnBiSmO/8ewNpnBR4lOSqT34uoOhK1ir9eNcgM4dI=;
	h=To:Subject:From:Date:From;
	b=faonDDITRAtZ5jBtgCkj0vtZYdgWfZTaM+845z7U0ZoaNIo4+BoOEzxE48BXDJfPR
	 qoFyTNMfnF2S5BEuT54ZByr6yRIUvOhd0IGMETjf1nsLG5wlnZ9Hcdf75TTPAXe1n0
	 qmAIacN4kcQBZfSrgrgeXFplN8FZO5MXMD9dSQBoJvFZTCZcXeDoSzj+j3Gb3j0c+D
	 5kpQ3hhTx5h7duHigoZJTKu9lhSCFKGiPdWcP+Zsvu2oZeraSeytq9YkXFUZxHxW2K
	 YMS3NtCBONgVLZrQolkJ6MLlgma7uqH0zbFhCZySkueexfR2uC2V2uIU9mKKrPGaPB
	 HVPeZmd/hOGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBC9EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051803361.11317.1908811564608476790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193a9e153617396a0460ec83fbf8a965a7850c38f8a9da60a9c7f146ace0d69d
Date: Sun, 08 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770518033
