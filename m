Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DA2426D05
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770309234; cv=none; b=RheAbVQfxsm1uOoFKpfXm7u/zrQk+DIYwMBxel4Otqysn+xSn/fKpdpE74SOkjN6iON0zbtXVo9vbcl9Ec7HclVI/ZdKOivwYwiAUWGpLpXhGBcqxBdSVFA+oNlQQu9gvzdNK0MBxQ9NVOHP37cjGqE1YhUfLEhZmTntc5o1FXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770309234; c=relaxed/simple;
	bh=40H38upzt3GOStAj4OpjikHHAxDTNWKdoFEueEZItvY=;
	h=To:Subject:From:Message-Id:Date; b=PrrvZA+nBjjp+BKp8PXeH02trQ/gC4AvAS37lrXitFnA8nB+RXWMvviBSnciXRiQhxCcaiNvSuSrceHUhlcRDwo2GcktOzmcD7tMk1QaaIwfTxQQU0da9rxOuvUGdo3cseRs/4/OnVA91KHb2XtP3rDlTGe5o9JaztLskQ6BrH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuaHuMly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuaHuMly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED97C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770309233;
	bh=40H38upzt3GOStAj4OpjikHHAxDTNWKdoFEueEZItvY=;
	h=To:Subject:From:Date:From;
	b=UuaHuMlyddBeO/3azgU8H07s4jn9pz5u3jTLobHN5Q0qXRgWGE5/uJrkHmC4/PbYM
	 nOiinkCLQAr1AP4M7CzRbEu6IP39QsRNIf3Q9cqzu7CabZL2DQLB2U4hgYiUmRuF7f
	 ocV2155578lmMYBfxmqTs6F5Hq28fmPoQOfxN1z7YPmazQb0jKmoXcXMyUD08XTsSX
	 +68m9P1c/TeZPNSK0VCm4V0odvdxQUTTsYqFuV16K9k+086gIcUwVvf+O1O6NaLVk1
	 brzY1MlwA5JZZZknWxEkDDcb4HA2c41Dl7kvAptHco4lnfaQx1K38hOq2fM8tvo0aT
	 Rnib5QscfwEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FECECD985
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030923358.8579.14486282889661755386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c0aba0f1612cbc4480e1ef007eaf14f51401fe2d9469e959b946792eb647e1
Date: Thu, 05 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770309233
