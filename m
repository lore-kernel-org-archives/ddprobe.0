Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D4963A5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720655843; cv=none; b=T0H9KB9p6INxc79bZjFjG5iXwTTVw6YuNOrBXzdacw3JJIKXwIs9s5BE04cWXBU2hY7u83PXstgbLSoSwfV3NjVLTQW3Ut5ydfdLBEZcAO7ScjKoFE7xHY9SmrTXf3XNblaf2qWPELAWCC29r81OTXK76NobxV0zixUca9GRLPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720655843; c=relaxed/simple;
	bh=kDBKqDb7cyKpP3gsoAkavOi07+9GNQcOe5TUOfndgpE=;
	h=To:Subject:From:Message-Id:Date; b=A/x6W6yBKrQyrpIoTTW2h4TTBmZOM6+/NleI9M7j9w3MHEep2Lm5rV1Pko3I6ahB/ReARjMdxKAXQLMuJ4jhsQ0zr4GfLPl13Ld0bHkCnRdERd14Ry15PVRN7kusF9dd+8uycRAdcbyXDJt9vNuTa8NbmrNaj70h++rSX9xyHos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMpGfyqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMpGfyqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB857C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720655842;
	bh=kDBKqDb7cyKpP3gsoAkavOi07+9GNQcOe5TUOfndgpE=;
	h=To:Subject:From:Date:From;
	b=VMpGfyqBkjqnAtlO7fKEUDCN/hzYDam6+DaxAS359v6K5Mdjj98Tqoe4CJudRl9+r
	 xRdSJZXuJOALh72qYZeXK3X1x8HYL5Lv6Ct79VxLo8JsNAKrcr6LctWkp0JuqEia87
	 8acIuQ4uedzVKFGTr7yRrpFZS4qKPZ41NvbfIC6ALMLyU1e0VUFR+5ihvzBJRzzX26
	 +fzsQVmopPXog0ZmM9aYgEVY1/5WdcAWw57wi8xSkyZu0O8aLh1ZyAdRRrN7iAPeLK
	 UpiqB4FxU8grL4mh4sMOX+W3DAMeT88iYachfN9RIS4WReE+Y6Q8EL9e/7JmDPdU/n
	 qbdS5RQVxkY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5576C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065584279.13270.17783055536366208259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1152ccd71162d7371148a388b5811d24a78c03fd304dd22c16324811f9ef4243
Date: Wed, 10 Jul 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720655842
