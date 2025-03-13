Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D79B1F5420
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741906734; cv=none; b=l0Qe4C1zy0UTr3fruzXFDbmcUWVj8PnvDbMEkwN4whjvhYwEhXUibNtR79BZ5d/zdeNwsejEiv2yi1qEWVI6UM2K9/AjVWHEFs+6vm/Roay+y/b1eZSwkPB06ST+/Di0+5RIQwhGaCrnnHwJM+paDlg7MH3m9OF/7Uz8ng25h6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741906734; c=relaxed/simple;
	bh=NTO/a9Va4JhgEoCFToG9yLHVcpaa+1FX6XhC1+WSrz0=;
	h=To:Subject:From:Message-Id:Date; b=nEXBFVoZlRaKRSgV9z/0nKp8faWtY7jqHxMnXQYRz9LXNiNVT1Q4s563wXhq+aZItrNH0WcVR9pdBTODu7y6Y4cyUztr3B2n4oQijKaku7GgMLXiwIn8pv5/9e4/MezhnUVf31jzwWBPjqsNwddapNW6RyDB2Em0FqBWIEiP0y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7dlIng+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7dlIng+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD64EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741906733;
	bh=NTO/a9Va4JhgEoCFToG9yLHVcpaa+1FX6XhC1+WSrz0=;
	h=To:Subject:From:Date:From;
	b=W7dlIng+ec/SgVLar9A0l8i9sHSC7NsJAEWjNZKonI8gymJfVg9TMtY8K4QuGONQl
	 WXToIOq1TZDt8fSmAcIG8uxIQ6uKWZYCPnxzl3vA+pL4aWXWGoxG+f/61NN2OofaDy
	 wjp5sMuPyCrT77dakiw+EMeLvN7GWh/vhuBzBuL/fYjnzn0Kk2ip8kt3g0Nhsegfux
	 p+ygM5nqayNxl+/IqzvEsKYzr1v8GAoMSgrHjOPajhXfwSyiG5ay1Mg6lmhDlodzFh
	 ZYGS9cQM36Q/rSVapSBwv+QoHkVl8+kaHQJ1NUOQMlnteQ0ZkuPrmnwu8W6soFVbIy
	 aPi+nBZAGEA1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AA5C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190673361.2477.16023463912504560636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c29d8a934a9eaba142d2dadbfe1827ddd1ad60a30191530ad578699eeac41f
Date: Thu, 13 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741906733
