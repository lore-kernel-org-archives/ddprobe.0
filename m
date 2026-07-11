Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F67E2D4B68
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783792714; cv=none; b=ek5U4Rof8z4yZ/4rjc19C+wVKwNp8B5yxLVf/nutSqX3q8yEcBavF7tnhxytvaxBYBh1GwDhFlhtVnB4HcKXC5zexY1hO3vPHGUb7KXdR4gfJwBUhKYz3Kg8HCZcQbVXzURqVcwWMjlzFwstK6n/iOTCM0fz4Hm6h3u69Sm/zQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783792714; c=relaxed/simple;
	bh=sMO+Z/ujGd2UdHcW8pBWmrMn+Zknl6TAZw/VUj96lYI=;
	h=To:Subject:From:Message-Id:Date; b=Gj7R/oiznb6jnkrSSPsIwISUb6U8TRF2dM8SuaJ43ohdXWIvYG5qGmhtziVem3qAA8Ghvxiu/c9gqK6fBubLzwjt46yn1H6rFEJrFCmmqo+8B9nBM06yY1vcp/5+6nR194fJKbjI3/JKqJxxGP35SUvfHnVam6oySHV8OAAY1mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjaqofQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjaqofQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA689C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783792713;
	bh=sMO+Z/ujGd2UdHcW8pBWmrMn+Zknl6TAZw/VUj96lYI=;
	h=To:Subject:From:Date:From;
	b=PjaqofQZjqdNXl9gGSDgfgmZEJMEFOOs89gjgQhaMZ/ygG4fuuq4pXw/E9fzDXotH
	 WB2sZqgV/vSHyjM6Uyr+g8Md1uWMFIzYD0HVHD+t9cgSMJuBgfQU46KqOQAZ560IaC
	 iQDDlmZVoQ4a+7INkI9cWkH+SXbAoaIjLdY9fO0MWRn13FDI94TOc6RqE8jm2ia509
	 BpKssSfGWaLw2NAAaNXIaR8hsd+6lADekBXAazp2DyTa7pORMbvxIIT0c6MGfGCQar
	 GPKqVLmHIh0or/vURBdcRrp6P/QB+h+SBz5LixsGebay9R9ycb4A1KZXGC/A/tQITv
	 6nIQyZoAFW3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BC1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379271367.5666.6621990380507703418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889d8040764f5c52be260a7062d33c98c486f3a50b227aeffd79c934afe8f4a4
Date: Sat, 11 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783792713
