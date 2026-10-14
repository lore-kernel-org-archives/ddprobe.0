Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC4C368D5E
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791948034; cv=none; b=ZBCjKSLjRB8wwT7/GD9htD2wVWczVECPE2Ugz6Di0BpvA8jV2rndEdgCVEIG3gc9B6YISr4x286tPF0lDYhKthIoGiFx4JBbi5VQsNw1F6xfvq8ok819iWXAeIvi2vV5cz27Xe9lFHdoICqhrzj4QKLBkRTaOGVzJL/lcsAFv6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791948034; c=relaxed/simple;
	bh=i/dDGbp6wfBoJw0TRfFpDetkiytMpbGJJC5rp3TZoOo=;
	h=To:Subject:From:Message-Id:Date; b=hECHwFtcK288SXXEXMfg+bWU72ecHm2MLyYfoXaF3/Zm1gYGWdGmtKy/XuC7YtJAf2VNxPl+G4vq1METL2pSMZpMCq9QhtbMjlxdC8A8VwZVnPfHWcn3ffZVkE9wni6smcDSt/a038Be2ydIpPfu6aJI17POaXBe0oG58whB4yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlGxfIeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlGxfIeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8748C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791948033;
	bh=i/dDGbp6wfBoJw0TRfFpDetkiytMpbGJJC5rp3TZoOo=;
	h=To:Subject:From:Date:From;
	b=PlGxfIeqxM1YthchDtBb2hW0CJuBJ9cu2d6pGUoGmMtTQD6sswTsG/hzGZYgKfAy7
	 TLvYusMx+BbcdJ3DsXiMkEVyvP+VTKNd/puSA1Kkajkvl6ixYkzMV3nrn392334yGy
	 9oDHuwP1BOdhI1o8sabHF7o0SwXtXDL66PFR+2FBCaLtYTLat/PYLeLclvoGtorGgr
	 ph03rvn1dqiujE58bzpeQKFmmY2YZ2K34pdvg8ulrIlTrDcxRbrlmBlkgXaHcuzSHo
	 u80Wrmz9DU6ta6Igjs33s+Rcewiz/nKbyj9UgNbOce2U29mi/Cw5r0yqqL1kfSbdDV
	 W/HStqwLCkIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AA6CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194803373.8586.4430648788584587282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddab07b23ad5728b603b436641df6236048fbbbc1cb1dcb2c43496652a00097
Date: Wed, 14 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791948033
