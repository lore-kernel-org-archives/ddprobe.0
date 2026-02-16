Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F76262FC0
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771210494; cv=none; b=D3Mmly75e4hfvk8v83Su6EU5lDCGNkoM9xIi/sZmFQaShDjnN+LM7pike1oqmZGcUJXFXwq1a0WYQS63yk55YhWLU6z7TJiq0/4tfcCbi1fwGrg7rnz6YVwAcWWoqjtG1aeVEecxRtThlv9JhHhJrK5bLVpZWBWUNw3bK+Ki3mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771210494; c=relaxed/simple;
	bh=+xqm6rSL+ahY6+PVFQVZw52I32OOeu33slqeohgeRSQ=;
	h=To:Subject:From:Message-Id:Date; b=SJSxbLx1A53FTC3VqW69PtdmWmVCEOgAGShwckhQzJx3IBDnF60vvdfu2dH02+nMpGJoz5BRKrDbr/KA87qbWxwCQAz7uVIEQ354ahjWK1HXwqPqGZNrU1HFYt+oM7S2pZv5aB/EGC8eP139NZqh2laCYiAKXQo3D1/eCNuXYYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5MlOd3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5MlOd3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A938FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771210493;
	bh=+xqm6rSL+ahY6+PVFQVZw52I32OOeu33slqeohgeRSQ=;
	h=To:Subject:From:Date:From;
	b=s5MlOd3gUSG882tLvE/TvFmubgk3FKoVNhToQ7wG1/Tj8lALbl2QOpezSIMKM6Lej
	 Y8L3EH7oq8J9AvNAwW44uTfYcXEvtIdTMkjWttSHv88YGtgf/cpcYBVgVzTbs6qxqV
	 pcYA7vr7P0omOhL6o/P97pvTWQsvWshcOw3sk01kjQIaWo61q2u+d41RYErFClPtWh
	 thHz7QWHhKlqueXVmlbfm3zdZJA/LulA6I5LzjUDIkN0rF9cEr9NgfVJt6Opyslli8
	 pD5NqBTXMc45OqI6Mlt5klBDiaXqYYQHT78ck2CHxRb6ulRDWWZOHBPVw6/hK2PGNm
	 uZDAdYgdN5K0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95189E63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121049359.13172.12257410803318521558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050310d3af4a7ef9761d04c7191ec0b64cb15ab1de5cc1210751f76961502c9b
Date: Mon, 16 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771210493
