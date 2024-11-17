Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469F41FDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731805554; cv=none; b=YsEAc//NLA4F9W1EBPjp04+yDx0er1L7uOsMNxeIUmskfKoEbSXifs/TSRtV3R2pN+GC+A19111usFu8NbIXngqUnUk2mUBTYqzfj4EiSdr9NCH6wynETaM/lJwyq5B3Cmi9a/kk/+lRoTKccz+gbMcjb+YjjhB5Do+sCCqD0Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731805554; c=relaxed/simple;
	bh=tOPuWq/SKH/LZlYSbNlX2JYwH0ofifERAD1rP8h+Jk8=;
	h=To:Subject:From:Message-Id:Date; b=LRSYKQc14cP+4tZ/iCPNnaIxuvO1HQ/C26x/lCZufLy5VKiEE1QThaKhStnItllr73Hq6qopvujL/Zvw2fQf2fL3fkilAIa/A/Y0Yy0FEB2YkSYRJILrvoCzUoRTJhL8c7sTiYNjzY6XsgA5tvLf5LH7P90fLpeRftJ7rr2VRso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoyj27Br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoyj27Br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC9DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731805553;
	bh=tOPuWq/SKH/LZlYSbNlX2JYwH0ofifERAD1rP8h+Jk8=;
	h=To:Subject:From:Date:From;
	b=Aoyj27BrLgop5fdfT2LHRGPGaFxG467arrFmk40w7/XWQDcxhZsMkGI8mXQxJq7r4
	 jgjA9siX3J5I1yRQhrkEYvegZvN0WNLeyj8hdxu8MTWua7k9Qv2YAVsV10DpUHo0pf
	 Q27UNQCIRUlws3sAsFRStZj9tFL0jTXRyhZh6GlczwsD2Nu5Oqw8gXCXHqdyaRgGl+
	 a4yMnMSyukf22Mc9i/f5y2OVqzslL6bgugXMY4nbN7c6XRhFnukWFHPu8FDcR4SBEN
	 bnTNVFOF8Yj5zxlDuz9hYK3AO8Srw2Z4q42c2u2M5hx3Y1noICFd0VEX0DL5wWkZLl
	 n+RWzeGUVG8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBCD68BE8
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173180555365.17788.16298676665362646958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b87c9f84fdc91e3ce3590890970d3d40957f1489e823d58e1d1600c9881d56
Date: Sun, 17 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731805553
