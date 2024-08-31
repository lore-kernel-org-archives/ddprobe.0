Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6B48BF3
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725114954; cv=none; b=jfmpyi+GQYLC/nkY5tvhqXbIIXB0169hQyzFUvIaQMHJ1bX+2lzYSoOYmCwK9V0tL+pF3H8KnUYscoyDTP9camm3NntljNW5DqopioYCvPfTJusHKa3PbtNJdZlvN5yvOPfF6hnnMj5uQNudLMsb5xCpQU+1Lcq4FSsHT+DXe6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725114954; c=relaxed/simple;
	bh=LPZOfrmKQhGEWyMBNFvLmw5Hn9JpTlWaqZ8nwCXuj50=;
	h=To:Subject:From:Message-Id:Date; b=t71jIabTM9Y7tljGR4eWKfRRyRkegLhp6EXtWPPGuMtja3cKEF6ygE6Zf1nUSC+FvwzmxDgEbsqXtiHm1RF3caoUgiQfh3E5Sc99LF+h7QWKJPeIZpNxCAzuPUDg1QkfeWiwrFkdP/VL20lI1gZqBLCU4Va+M794466iPTYQbs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvnsZguV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvnsZguV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FCBC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725114953;
	bh=LPZOfrmKQhGEWyMBNFvLmw5Hn9JpTlWaqZ8nwCXuj50=;
	h=To:Subject:From:Date:From;
	b=OvnsZguVY8x+ennAUIcrUnSC/DxuIdAaI/+7/LbJUJRBYM3syeeJrDPEGS8wnLQXS
	 I7gx5hZ9bT0LZeX8QwyXZ3CXsbYLlAO6htMWere/ZiG0KblPRDL4Zzy/8HHPZk32R4
	 xeJNa7KhRBRyU7GJ/dVPtOV+QVmbkwtYxKhVoPXUH56QP63yq4E70hj4D3oKeTC6oB
	 04gZjQMaQuOpZa/fk26Y82bkRFDT194ksI3MfCKNCingOUc7KOOo/dQzQR9aUFQNvg
	 dCnUzhGfTU/XIFPGM04ZnC9E23E7uzJUGr2jEm4aBbY1a2h1wVrcPP7EH9yrl2QZHh
	 YZAHSXF+09/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDCFCD13D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511495361.31705.5863067825258733068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569da4ada550e37cda79c26d9ccab1f31b0c598a560efcd43631458037f03c9c
Date: Sat, 31 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725114953
