Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D2518028
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717526783; cv=none; b=SfhU3GW/c/JB82wc23Bc+B9y4Wc8GUGpkvwx7reHARLrPmfrR2P2TYkekMDyffZyZzI8FwZrPFAm3NgjKsvZ0AB+I87wnNaAAyPOJGH5DwoIUCiyhX0pJGOeUO9sLQK2qTpIFFYFrd+m5O/RtCWPTdLbe/zTSWk99KNGenxEfgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717526783; c=relaxed/simple;
	bh=hMLDOubLZicOJOF6N4ORJv/1fL7CDJDERE1YtrR60Kw=;
	h=To:Subject:From:Message-Id:Date; b=VclmYodKANCzBJHocPsygRl3t045m/kOQgCuKnSYvmKOodronYjV1HU0FMfEO3Ds+S/Gou93mcsVaiIbCXkHIwJQt+x2jj8LLvGiEcV0Zetw9f8pKS2qaf8tjvFOH/HsaG04kRod/6i8geSaSIH4TK+DRULawjvoMHvCn+XTT9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeCNzvCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeCNzvCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83EFC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717526782;
	bh=hMLDOubLZicOJOF6N4ORJv/1fL7CDJDERE1YtrR60Kw=;
	h=To:Subject:From:Date:From;
	b=FeCNzvCvhnjar9YbhUDgV47WnhCFzrNjNk/PkNe3QWlh/WmV0YbRaioRdV5rNlV3t
	 Up7hnLjrGW7YT7mluuIiA7VVsQ2Oz6qbnH2d40mTAa7/WAvu+a7s9zlM4ZBqDtzPBL
	 Qa3XV0PAG1by3/YVjxvyodkj9xGUMy8iADekZHpa3D3bdRu090C9m3BsRL9MugoEmb
	 W35mG85Jm+kXg8QS663Icd0QyV0fGUwuNUcao7QWrTlc69gU3Bs93QYxtDj832LehK
	 UnajXryHfpd6xsM9/P74/HpT7g+Nmtv7mdTUtDz5mLr7e+oFtpN3ykImWiPXTSDx8o
	 oXLCNVnkYBU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33F8C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752678277.1019.17944108749391163829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee71759c47cef463dc2d9c58959b37a4a6e10092b73d794d23edb03acaaf372a
Date: Tue, 04 Jun 2024 18:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717526782
