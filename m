Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A963158DCD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724886354; cv=none; b=ML82jJTdWjeiqNYdiKXxCAxIJBL2wcu6US+7cYKlCxASdgc6wB9UiuUPryDcA3arRHvk8wUrp8WbHAd/9AMYICFMbdJETZs7/zDpq8Y2/yUCSBMtg1hhP08VkRja3kVKFoG2nviC9Va70k4ve6xkwJMPe54ugwsoIL9CjVrzI40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724886354; c=relaxed/simple;
	bh=8H3YvzbD8kFsQaNZpQA6esfswZMTvfA8/Oxajh9+lnU=;
	h=To:Subject:From:Message-Id:Date; b=DEctGiDFL1I6e6UXtjWjRaj9uBOAuBsaEWiZP0zFA73JtrZviEpjo0L4IlfjV7qkWR3HONVHeORdJXo7/PB8EDSGfBups0pPjqjgAVYn+wO2BXp5CwXp3Sp2VVtN1/OfyM8veHjqaGyMyVD7fYq15//CnOs8JEWux5pINh+RhIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3qEGKx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3qEGKx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC1FC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724886353;
	bh=8H3YvzbD8kFsQaNZpQA6esfswZMTvfA8/Oxajh9+lnU=;
	h=To:Subject:From:Date:From;
	b=m3qEGKx3NM88jok+35uDzP39LZak+kRVQOjuYk05Rb6sOxSsTYXZA4J2av80ba1++
	 3aaQvAVSJO46CdTW0VL9TuZ56CY8Lg6LCBkUBqA1NiZxDbJAIYpsZ5J1C8+R7VYjOb
	 L1sf7Ig3DLv3XotxDZKbggp/SRaF6kc1x1b/1090AKJSCcuZ/VxfwK1XS0hbm67IfP
	 YCo6rEqvAAnpySdk/1TQrOzZC0vPocaXsE37+zvUFlzzA+ITve0OWqwQWvCi1/5iMc
	 FQgSctPEz9B7wRisvNGmH7JeRhnX5Uxmh7aiSAsHlWiTpDCKdTvquGgzXuqae3dj7e
	 eOLQbgukK7cDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D19C71150
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488635370.22761.11715335146138105767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af21204d0caa71c6fc0c09ee675f2c2b664f7aade2356ede0f781c3f17309c23
Date: Wed, 28 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724886353
