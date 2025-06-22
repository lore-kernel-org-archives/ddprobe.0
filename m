Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A579219FC
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750570794; cv=none; b=Vt+GuIW6x3KFWbTumMFFgD8I/xUqZmP50zbUsIaqO7a9pmXT/C5KAy1v/VHAZpSVzfObfXJoIGDKUNbpTY9KZgX5OFSLCyOA+Zs8JAZzrJ4l/wA5bPu3zJIvRvoOl9+aLsDd/rwQk5+yjWmkJ5ImUIOOvV4eV0o3SmbjNf1JZqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750570794; c=relaxed/simple;
	bh=Z353t/gDIhWZbWSZwltB/D+w8DlL8bR/tTPoznkyn6s=;
	h=To:Subject:From:Message-Id:Date; b=MejjDnjdCoqHdkfpjleQWUH1oDOTIFW3WWjXT+6RRuo/8zPyR88gYZAkfSvMpZfkgTMaVrz1SZQc+cKCm+QqCiwLypcFal64HuumJ1HBZrXISfujumz5kiFL7Ea0EytnUpvYSDYz18SB2ropVOcwgkJhKnkF2YtXxw/l2Bz7klQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLIGw/LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLIGw/LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92DFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750570793;
	bh=Z353t/gDIhWZbWSZwltB/D+w8DlL8bR/tTPoznkyn6s=;
	h=To:Subject:From:Date:From;
	b=uLIGw/LRAUvNXCaYdfKw2eOX9QZA0TmWGInD5GWH/7njqQX3obBIAkbgOSoD9K/qU
	 S2pWV9i0WSfiQk/wpZpI2kvbDFCvTAazrinMIBJxSXHFLUyURgqHAODfxxoeXuHPp2
	 HZGXDsiGryoWd3gWZNiTsmfgT762Dg7b/ph/ImOhfi4yAuhQeJ//KIFWminfQF+UOA
	 OtGZHsg2IsVk52gblrxmSpBWbVncz3Np1V8Xy2tR/KmetX0sITBsHfQCpSSGR9J5NI
	 HcvOeAQohzKkcB7jfMMxqBY64n/sGzxsc4WUbbzmquoY0zWLLbRJoZnJ+BMbzPo+eF
	 WEWWxCA9YaxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B9C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057079357.866.17379559914027626241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c294e5852e5c162b038e16081166234da97732e6b54a45d1ff62c86385afc06f
Date: Sun, 22 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750570793
