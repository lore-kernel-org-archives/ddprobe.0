Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2A70807
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340154; cv=none; b=AubeIMQrdES0YWT9mareAJVaGiUTvTG2jAVjdYKT53lXa+9XdEUbkbpeSYjPrdEvBFa97OglLJpkAg4l0RS37nGofOUeM6zovkvP2qmYPkLozHGeT65HKDGH3UWywO5YDyC+IulSv92/59oF3Op498Hg8WuNfe4RWBoZdVyiVoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340154; c=relaxed/simple;
	bh=2NW8DVldb9AjCcC8w8h6nUY4OPBJJuDnI5O+5QSqDBo=;
	h=To:Subject:From:Message-Id:Date; b=lhAQOz89JpBXyz00FtG+OHuI5e7wJhTyHH4nsWHnaR1/QGMoyaDO6EsUrBj/cluFtC9lm1D5iGiIIq05VzX0r2AdJZpfjBCFeQELOAf2cgxxRBqBFM4MCL/C/7fyOk7pxBdtfqsUVxEs1MaQoXNsm/YuQywyhlbTAPEkgnEkX3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IErvYncy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IErvYncy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DAEC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738340153;
	bh=2NW8DVldb9AjCcC8w8h6nUY4OPBJJuDnI5O+5QSqDBo=;
	h=To:Subject:From:Date:From;
	b=IErvYncygZbcR6iXes5nxwyXNBbUwjXTPzR2Fw3SyVaZxmqJSSvcILs3axNQ6UPb/
	 Os0bg0ltowowVsPpcQi02I/fOXih19zYCHyiJe+s2JCLqrwCjNLH65aeKEYiwQVNuv
	 W6OEF8/tgeJ2ZEvrL5hKFwwUaXkAZl4FlvtrtZHpAn11NIet0wsFNCKA3Mct42E5ri
	 FHyVc+hgkCL4can3zTMpwk7+XY118PuVfpKh+Udo5t4ZOhLG1NYkESUkmceZJrywie
	 4Xi4DFmuyhTZ/YNbGV5wZGIqSS3fp0n809PrAZ/DezdpD5FSZFWnaafW3/grznhGTw
	 wpsUg80hJrMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B09DC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834015362.24924.3455316502425072446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de19efa2a7da169f90177438da4469961b939643eae37525b60bdba2f88de89f
Date: Fri, 31 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738340153
