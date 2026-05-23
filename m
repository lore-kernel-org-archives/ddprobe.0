Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28586314A98
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779525154; cv=none; b=mifZE3nYVayR7jX1I6UQ2U+s609AloFIIM25mU3SI0l1OpNjbo121VSwS9MkHdXsLR1IcpYy79quvy+TcF6grCIIxX+C3Kga3kOcaGljSCW2dyQ4glnLk59nGzdruTYPI1HgdYVheIJBXw253Rhw2SIaQQ96gGndV7kAMqceg2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779525154; c=relaxed/simple;
	bh=f7NDqiD7I5QjQfMsuChHoKx40g/7QoEmAnZfQDJDxoA=;
	h=To:Subject:From:Message-Id:Date; b=rQDDQN/DmiRR0H97nn3KE8GJkb1YK4uSqb8rAs9K3gR30iU1Xa9qqB2FtECkj90CHP4MlnUPAFHZ6aCqRzeGa7F3gBT9aqVvlwyDl3W8tt+5Afwf7Ae58h8QnmVjvc4+ilORfa42M60iqcDtulwtqd2aBfkFTHdivxJS5RpOzwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRpynUO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRpynUO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C323BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779525153;
	bh=f7NDqiD7I5QjQfMsuChHoKx40g/7QoEmAnZfQDJDxoA=;
	h=To:Subject:From:Date:From;
	b=DRpynUO6e0ij7O/2/pZkUlq5LfsHUm9dvh7zOxTFSuXoXdmEG79sDWqIguew0Lzr5
	 8lH7MmDX1D3Rg6ThvEFVBjTSffE9f4dnd8MlM9eQSXzcQtNAMsrBV/SB0QsS2KwaIM
	 WS5u4ZH5/rC0qui4feS2PsZZv/V2grkGT7UXqhAQJrPmPFQNcOyXafjyHeM7Lj2Ntm
	 eHJDj+W+Rr+87u6lyMtyy8kXqbRhCH8373DWBev5f8kBBmlZWYgtgaY/LHoTxOHk68
	 repzZbFXMDwDuz4HLnKE25HrW8m5Y/Edtfg6Ib/srEneH5su5lpDZGChBt/GnGunyu
	 fdM6GJWTQeHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB67CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952515369.12316.11271449970170409232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2099ba2cf66dadc3985b67c6c7a5867bdce3b155e67a77c551f8288783f8bd
Date: Sat, 23 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779525153
