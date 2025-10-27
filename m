Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3092DBF78
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761608994; cv=none; b=KHUuu6rxMGmRVIxI9B6f/0gLJnXuqOurgZo/v64Lscf3j33oH2rnZGbfVHmBnNWQIVY3zUniMWX8nLsb5xkUTuJT7Q9GVBL+1n2ztaom6GYh8sNn2r68iSFUmYnBA8ziDSsKtFcVOYbQfKQOFoETbbsBDGzYz/jDU3sbmaTL2ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761608994; c=relaxed/simple;
	bh=yyfSKaZvlU5L5tiwuY0cehcu0xxsgGDeRTTsuldYYRw=;
	h=To:Subject:From:Message-Id:Date; b=T///KqUxnsOQPEGmSpwcLNxlLad4W9dFjShQlP2UDn/v1Oj/dSlGekGlDbr5cszY/XbHC+0g9/Z2a143+BG9Q/EYWfYABDz1FvG3fHo2bqu7yxBJKa/6qQNb1vElaRJrzU8+Io9I2ZpumkEiYFHLk8nF5S1CczDV2EWEfVQYF4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppGlZZH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppGlZZH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A46C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761608993;
	bh=yyfSKaZvlU5L5tiwuY0cehcu0xxsgGDeRTTsuldYYRw=;
	h=To:Subject:From:Date:From;
	b=ppGlZZH4o8GCmCOqapgJ845MT6OFCjXgA0scjeygPxgfs7IgmxCAptDR9qD+1IYa2
	 vbX37XAU2EqbyPnypDfJ7vib+DhHI1+CUvHtTSt8H9PkEShJz9QqqRrozzBiHm9YTZ
	 c+aPjZZ4vGdzNH4DAUg3RkgJ9tBN0LO2ciM+SYppcXN+KVxcu71YoDqt6mHOCdTir3
	 aJSd2GUygVLCb1KB3qcbFsS/NpAlGeuhT3pl/ewqk9BB+dGuAbBPkzN0Qc7qxUMAuS
	 b10rMkhDg3T135pbsn3tPxpMP/pGjojz8I33Poz/AQ1ffCznf5ZeEH/H3velAPoEwJ
	 SscBhSRSkOjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A7CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160899360.1042.7623154991913032239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d3aba551ff1c5bac321f7f0c3a0ae6e44c633293057bf12974a688c333fa0e
Date: Mon, 27 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761608993
