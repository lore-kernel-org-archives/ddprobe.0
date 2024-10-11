Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23381209690
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728640554; cv=none; b=Uwx7nvKryXmlMQIUfCqbXHIw5YpAiMLZIKydCuq9X9S2+EpJ/iGjrXZrqLITzzBuzmA4Xf31x+eBZ0Xd8EaYfAZbiRDDO71MPcz5eFwDsyY+nK88rPIrpjYb3XpShoy3CpMhpeR9gisOC81//zPHL0ApOWCwyeh+/zUDwfx5mX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728640554; c=relaxed/simple;
	bh=WEBlI3bO4RIkmGr7LIuI8ZYimxWhfx5ljbdOeiJWk5w=;
	h=To:Subject:From:Message-Id:Date; b=ZvPze2PTf+k3WN+VVAD/A+na1mfsNTiZG/WoFxjVdcy8MIJ4pB3+uphRCFB31n18/q4P6bXAN4PgRQty9keg/chF67MvEScMa0PZWibIbPxvcNW/7WxGGu7s7GeTvCKlTF8gCERsHCHl0WHyIkm7eCWM08sFAh0/VE7yN8pw/E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO8eu50J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO8eu50J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EE6C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728640553;
	bh=WEBlI3bO4RIkmGr7LIuI8ZYimxWhfx5ljbdOeiJWk5w=;
	h=To:Subject:From:Date:From;
	b=qO8eu50JKbgRdeLaUOrcwkUiPuVoi9fZbSr8uQ9x6TvwIXh7trDW+GytOLTqvGpxW
	 ULh464jcOmU4rkmjp3p8gQg8s69mko8Deq6C6wdygkYkpjiNv93KzoK8rXBnlbOxYs
	 nGMKgXk6oZ+nZ2N+H5OevreLh6sFpxn6H6hTt40n0peXslRvFBmwgJX9mbfRvfVLAq
	 zl1rnTI/69/3yVCf+EObMGWXsc96w3yviZ3jPo41RvVCOLlCWeU47LEMYWQUHkBmui
	 itkjCtKtDSkyA/j+1e+svwQzuvNxekLjs3GByytmbySi1HOuOq/AH2ns+YP++e9L6+
	 gxT44ziQEC86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FA9CFD30C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864055363.7561.6680846936989303809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3f7887d6a7b0357dea6840c781961c658210fe8c9ed6c8e1df6236738e1644
Date: Fri, 11 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728640553
