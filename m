Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B39324B1F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784567915; cv=none; b=Vtend4m1rcU+F/XFh5W+lph9rnykAg2eefNCfhKsd8g93xdVgD6tOXdoOQRqZC7xhsy5gFLa2uGORjAtd/z01RXHQ/DSzVqehAblJ3fdcDEUExwQ4dKpxkvCXTR1B6qVcWAaV9omvbkwMK/Uaw8u3N7LzfuFu67qZqOitnsEm4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784567915; c=relaxed/simple;
	bh=3p69Hmp0i2oP4Tdij35+sis+hUcE6X4bmDWkkJRGq40=;
	h=To:Subject:From:Message-Id:Date; b=oo2os+zRSqFYcwVjCLKAZ/e2feLOT7z0YbQRIOxZX/DQePXVbjx7D4l8Q/8jlQ3D/J4Ilq3Kvo5qZjGnWqjeK/Kn6nsx27pvGAIzcZfqKMdd+2Ky58UA1cxyoODGU2PkaczTtwFc/GSEE/XCIle12efBkPiQ+jEKHsxzT7chSOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH1SF4iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH1SF4iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EA5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784567913;
	bh=3p69Hmp0i2oP4Tdij35+sis+hUcE6X4bmDWkkJRGq40=;
	h=To:Subject:From:Date:From;
	b=LH1SF4iBy/cIBiZ4Q0p1CJ5jUzxepGw6v2BnDyNc4Joraa0htoRapFVsI45xZsN54
	 EXkNElvGGZuD+agU6d3Xc4c9ZOlDOzwc/BQKW2o65sX5eqIsR435QCpSNgHVQDmHac
	 83ZDkmPUyAytsGDg4cEkabOMGZG3j2IYnVhZ7VlmFQnMzdXo7nnrkWx4JI7JtDU+Vw
	 MhzGBjMynec2cAAJNEt4TMdcoUJBmDzJpg2Ig3ny+5fPbElWTy/eAePxCtWhidF/l1
	 gsPCSfoSjXreFtycxQcQLH/xKvIM94jsuv7CAx+HAynfA+XFWt20lzDx0K7FHyhDSn
	 pyTI+b8fodSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF600C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456791370.16160.13034054471707678013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a85a7365dec962e72876274d7e94d9dbedb5b1e2b5ca142d5dcdfa7262c79c
Date: Mon, 20 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784567913
