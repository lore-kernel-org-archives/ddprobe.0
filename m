Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A01288DA
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743632995; cv=none; b=HTxh/P2OJZK3ONJ/XJy3bVU4FwwhdX525WMXl4GFIIipPJ2NbPMTz+tMn2XjfTSHKdjjVmkQCtjkZl4x/gyhacCbrLpO7XxNiqGPoP2GoWjTWrVpSSvEzy23DSFCTlh/dyLhupKtHyq8fOX08YZ+7l6LfWaF5LYu5ndB480STk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743632995; c=relaxed/simple;
	bh=fXv/tuBbvD9tsF8if3tMRSIFr/nM+hrDc27fdcZ7RxI=;
	h=To:Subject:From:Message-Id:Date; b=QjIqSCxsxba3wWWlXu1JQIbhAUA+y5wBkwKvW6JinDMtei9x2wCAGk2jNwNPl/oHz82UGZGv08pXkGoORFUycmbFt6NTjLEjhyauGBlw/q8Fk4wsSsA8igGGBCA7pdn3I5+89mVf1qDI3sfyKm1Be/Jo4psz6BLqXBu4uXs+5F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7kgrTTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7kgrTTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78B9C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743632993;
	bh=fXv/tuBbvD9tsF8if3tMRSIFr/nM+hrDc27fdcZ7RxI=;
	h=To:Subject:From:Date:From;
	b=k7kgrTTB7E8zqRefwpX/0YEgF+ob+YA7gQcWbi1d/GBPNUVM7wXSFsU6AorAWr/Wc
	 SoSEReZU2lg6F4o3dW5Pcr3DwcGXrb68D9aYmc5xxrf7/P/XbKWVfgIzYf0zNUJY7H
	 8jlGTtpaIUY4hta++aUOH1pD4xuJj9SSoY9pDVZSnfRG9gGZk6jf19x+0OFRprgof6
	 4jqLp8oROe6HE0flNOuY6px0iysplEEvDH1PCXFLpddcDdqggyZSwD3Gmd1W+UaDqF
	 nP2Njh8dN6nRQo72ITJBjkG6EM3pu1yxXIFYLZFA2RQJ66peMEahlAD+TAWTMeNfJM
	 p5hjwB0g+oMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED56C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363299375.31469.12303244197658036953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a33b73f14caaa334ed60b87a430abd29f9f41b07ed321afd4ff807cd13d22e
Date: Wed, 02 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743632993
