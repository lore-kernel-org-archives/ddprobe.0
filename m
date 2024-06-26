Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EC81940B3
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719439403; cv=none; b=LDBXYEmuMv2+tC7ikCO12UadxA+HOuJlWp7vwSKUfQVYWgmQurz2MnuPXXS6s6A5OTpJOE13yEN3gJCPpZsd8DulsHLPIMLMSrs0LW5hkIvdCxn/t38Rd4/rlVm5QILwIEieEtvxeB3NZ9mYLAajM8DRjLKIsoy01j9Jj+Yopj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719439403; c=relaxed/simple;
	bh=YCFNpaqXeDFXKMQ6Fw2slcFD9vhF5yyI/38FmkWXR+Y=;
	h=To:Subject:From:Message-Id:Date; b=DBqmJi4lg4TorCELU0hKk2p8zkEGtMNlAQwuG8XCZ0b2tlSyx3QSijHdEgrZWhzatA+qYHK457pNWgDsJrGdYO+JGMaBoxyPiCF0Q+eoMHaOmNOSuJ6yMZmSmc5aV+jF8vCMkUHdgaE0mSIdND8WwQwt06qAVzIfc49xlgoWtz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ8E7XLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ8E7XLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8C9C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719439402;
	bh=YCFNpaqXeDFXKMQ6Fw2slcFD9vhF5yyI/38FmkWXR+Y=;
	h=To:Subject:From:Date:From;
	b=HJ8E7XLzyg8k4v0DdmwL4Yn/GK4XRIN1AtGA6OBP5klIysVIMmVVDILx8YDq9HK3l
	 jooc6WItsex3Hu9SF5G2ko254BFOxTsz4Xcia5gFPUwJgwRbdYdPnvGkv7kWSzpXM7
	 orDMoFYP6OV7F3RgiM6orbzLbSgGTiFGCuhrmUiNclEK8ALInxZJgsWDK1HQOCFlnN
	 UMZKFuHD4UpUpYwhHfVwEQ1zZcUw9ErX8c4K9/tgVTA9oPw+ASEGZ1rsony8goKbwu
	 TuBYRHd4QwwK5MsT172mzoTkskwgEhBDL6FaVTZHBaKaLMPWqaUgMzV8pl0SMlPC2B
	 Z7zmQKjIUkGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1CAC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943940278.6851.17981315212177712365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02bb6f18d419c03160ab2c5a50dace479c105a4b3b79d808124d253e9da1891
Date: Wed, 26 Jun 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719439402
