Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD0128F5
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765420974; cv=none; b=Q/BCYpsyDMCGkh4KOwoW5I+PBVHYOeNegjzoT+QIjml25KbfO7eRoiMvgBiPTITBglGM3RQf3wp2pW7wGyLEBZJL4guqCgULjOkyjvmpqFGrPl93aocwSbhb4fg1TmaLljrJOTAGrAbFzfT5nZYkkSmyr5aSGai2D2jxSI3a8Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765420974; c=relaxed/simple;
	bh=Ws82oFG12cCwtKMNKvIf8sdRSVpBH06l1q6dNXLCGGc=;
	h=To:Subject:From:Message-Id:Date; b=N64Mc4Ga3cBSEPVOiDlAyA4Tj4RtPZgRJZ63kFn5G7GZ9Ywb+XxXiEPLctr/Mq+6Lxz7mcm+JaMA3rxbBMXlot8wpZiXHlKX6+2XVegYWfb8wJI3DD58V4PdQxXzui6E+geQyEay2vF2ZczNykAXc10FrWkeVKDM9dPEQxwDgiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0qiKuMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0qiKuMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD848C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765420973;
	bh=Ws82oFG12cCwtKMNKvIf8sdRSVpBH06l1q6dNXLCGGc=;
	h=To:Subject:From:Date:From;
	b=O0qiKuMv8whH3tfGf4qdOXptoaCKx3x55CnrUrGzUHjXI6EDPh3pRjlNl2qX5NzjS
	 r0HEXFWrQi/obQC09vtE59VovNqdT3u/bLdI8cjWWsPXE5lSEmEoisg1EWLsBM19sO
	 24/T23s5xjCM9k1qNGXc9xg4MZEDESzCrpHFqlex7AKEnpebEmOfZ2rU+Hd13rB4yk
	 OiwCCt/pgdqfVgaM5deotZnTKZHkPjmpiRV28nROtUKj29YrbuaPMviImQ/4E5BYZI
	 1oZ6Np7YgBDOUwWzrvgqlanxWHolLOR62CASsDfXGe9Vy6Cwh1esXeXSLFUZ2ovX1L
	 nUScEyeJ3RNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA0DD3E788
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542097360.431.830393004979386996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187d824dce463ab339ea0bce0a4193928e347fa8209e7e91e8d2be12b96a71b9
Date: Thu, 11 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765420973
