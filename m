Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE34923B634
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750193393; cv=none; b=kVvfdZOvvtyMTR8MYSv24pT81fYLiFloRpD9h2XEendwa6TZu9aovaszkr6PIIqr01PFFIMdfqnJblkJGeRTBK7DOxj7Ky+BisDTH5efCX+fpSWXaH3systsL30rF40Mr3nCqy3py4gAywyIREIjdIDjHcS4/5Cm7/RRdYsX7mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750193393; c=relaxed/simple;
	bh=QBN8glAzZDr5gZP8CMsUXci2LTOFt/dqK6COT0mD1dI=;
	h=To:Subject:From:Message-Id:Date; b=rGOPF4BAFTVLaEkp2wtC6FbfOYUTesrLl2wVU2WNj5E3j2lngAy2cuV/kR10Olk3x1SzKjdUIRf71u6hmCCRTpj/mBYHO30JRRe9A8P4OwOX+d4vzSZ6PDoymynPpAs2ZO4eRPJgstpX9+U/a7SImxxm7L/yOaIZlYuEZ3ePRh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTas4gVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTas4gVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750193393;
	bh=QBN8glAzZDr5gZP8CMsUXci2LTOFt/dqK6COT0mD1dI=;
	h=To:Subject:From:Date:From;
	b=VTas4gVT8gRP2pBWy9tf2Hf/DAxFg5GuMQ4d6LeuRdGeks6b7xRNht+wrNPK8njq4
	 kHUL/j/rcdzA0F221xC91q/Ggb9ryKsC35OOen4YK5AsLWxjyUMBF4Diom3OibJAOv
	 f0LL7S7q2WPy40PopSvGPt5g4UDEPyxlpWdqMUSi2oY7BHDOnw8rcl28gpQq26uwoJ
	 dn/VWZF6qgj4rr5Y5xXOrKyoHci/chqRZJWHs3xWfrMb30MwBhmDGqaGAQLctQ3SyG
	 aNkZ3LPBaMsTfhbkiKMTbyOq1cSK68ZcoUxb6R1OKADT41PCzBHhYVGDhasIRWWltw
	 l8xK0s6SjuQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDDC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019339357.9348.8997619749717749775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d402f40bc989358159afd009a46c703033336a678220e1c493c8ede62d97ec
Date: Tue, 17 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750193393
