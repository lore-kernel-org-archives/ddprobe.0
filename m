Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE50482D3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717846043; cv=none; b=ppVNp1NLifZ3u3qkYWFA6YvllO/ttQEm9oee2P7ju5yDNm3pOrmymrQpaZ9I2KrMPHgyZp+EUPg52skRWKrTc3n9yh4gWYvN0rvujiiwLJTIKMZNDlO920FKklnyg4ghA4ruidXQ6HK0IQ5bz969SMuTijtdeP150e7ful7A7pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717846043; c=relaxed/simple;
	bh=udQTupRhk3iBZAg1TpyP59RNzVW56dRLHOV8r74WLak=;
	h=To:Subject:From:Message-Id:Date; b=Ehcu5UA/8GS8liR5U0VV4/6nwnYgv/eSTHEmGrwzZYtGpaUZzf7ozrxTfmZuJSTd9qXawwlmm5ybi1lrES0zmFGOLaeCdNAAPByiJKaNLPTrxN8pVsL5t38aWdCFGC9btn3QCMSbtRKwH+A6pgyqm6R8/9nMwpLKaCZs261PoWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9DzZbg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9DzZbg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D7FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717846043;
	bh=udQTupRhk3iBZAg1TpyP59RNzVW56dRLHOV8r74WLak=;
	h=To:Subject:From:Date:From;
	b=D9DzZbg7K5iRkFpIzx7OVcmzorQyxPReM3FCloOAvKnpIIE7SRpMw9X82JCC2DIRG
	 hlxoawRti8/RIUHCxd6Cx2KWymjAvN71OxvaUZWK/xRQCQhrsY2LTrU+P/qaYkmVti
	 fXsGp3NSWGznb0q66mp1zDbqtQi1hwU9vUA5T+/z0dsFxfBiWxO22jXShuYyIKFj2V
	 SsKs4pv27f4HdYwsGJTjDrOXXNaB3FtuhRV+ounGmIYCWeAK2pL8/Xunz9g7dx0oZZ
	 bgXFHMWHFdasAZ80lQHGpcdokD1b912jCiNGhQQOmpvrIxKSAwa3nmGNpUepd/KhPu
	 XrbeqxvsUrTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFAF0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784604290.24106.1580074396893967841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d6509e062b73ead615c0f66162d513969c05cb243bf92ce5a9add997b3303c
Date: Sat, 08 Jun 2024 11:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717846042
