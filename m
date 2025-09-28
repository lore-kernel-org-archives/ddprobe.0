Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB613C914
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759064395; cv=none; b=HG6lxTOwZNWnX69GHGHwha2OLT3TzpNAV8J17f5CaSIo0noS4v707FhHpvrMVtoeov4M79LZOB5bUbnfNDrJm6CxccZ4/tOgZjv6LXmrUDGzxqt5Rgy7gwwCFVaKrx2B0kohSydb9fyrEfMuQjOW/701BOtk5SPVGc2vQOkv4ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759064395; c=relaxed/simple;
	bh=tIKISq/Gimc9Qz38fn9V3ME1R7OgHz2cOyZK/QGCctY=;
	h=To:Subject:From:Message-Id:Date; b=p2c9oiljvysRi/TdMTkZjh6jz9iy3lN//X4Zrs+maCKoN6kEocVa12ko/0Oo5HmXqeVmFCGUFxBey2PIxceDGmkzKRCp9n3DA6dW33eZUBvGcJlaHntHkOH+Ojq41tDM2hCOYZ8j+ubicW1x1i3BVZVe+Uh29DFnYkqDjP5282k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFRCrY2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFRCrY2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6296C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759064393;
	bh=tIKISq/Gimc9Qz38fn9V3ME1R7OgHz2cOyZK/QGCctY=;
	h=To:Subject:From:Date:From;
	b=QFRCrY2oGfy7VzsP809OiglqCZjpMrVqpCpaFjjLvYSKEqvyrb25YqINEplQaj2sf
	 YfS2eqCdu/Ms0kjoWhGM31uAmSMOlhGiYYlVJqdkKP0gmSyVwBTcr0+ogq1FrLq0q0
	 MrEo+Gq2ht5cmurAJ+fnxqa5Fsa9mTW0+WEzvOvfpcDSv6y+YJER1tpXZOaUriRsk8
	 7vod1X6ZDoGbDemlKrYkz5OyqhNvSgqMmoVwHWWDqkRaHjv0i5/z0psvAiAzFGRd+x
	 O08otHXlu108HDnnIRrCW4IZrsA/sDfDylAoyEjDtUQ5hldGtpHzs0pNCnpV6XYpdV
	 GfGhZiSZsQz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CFCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906439357.26878.12049737508079451614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dc48a7c67b8124d2c56d67ef9eabafa9cad55ec8093c082cadf818da7e9126
Date: Sun, 28 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759064393
