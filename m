Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEAF3B3C11
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775564734; cv=none; b=KeHScSc8P9d69ZHSc3AHfH4eItDew861zWEnDC+74yPTIvBQ7PlK5ABL9bxux0kktrcg51ww1kGoIRTK6pfEf5uybalEHHS7Q5loDwy0iYawnSDPuKsA7zZVzLG3G1gKFOEO5JZftB6eG3LBpvAmP5tjors9bLn5X0V2/5xnPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775564734; c=relaxed/simple;
	bh=OYWRVZk9MmFQOyFB5bHk/o4z0kO/+Gx6zz2EgIHIWug=;
	h=To:Subject:From:Message-Id:Date; b=Z6QX3OJAq+24ZuvI26I2KRda7fKOZWoOVivmSHuKJY/GezL/Rs+MzHodvTGh+Dk/etCXoJeTWoNew/cCYlbhlnNzWw7Cg1LHN5fUIBSpkoxpSbQ1dlL9DOuiubhu2MuH0od7/DawjrK9+QxMZffpenctlZTpfl6BjPd/g0JunXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pECPK2ID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pECPK2ID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF77CC2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775564733;
	bh=OYWRVZk9MmFQOyFB5bHk/o4z0kO/+Gx6zz2EgIHIWug=;
	h=To:Subject:From:Date:From;
	b=pECPK2IDKO/QDW0mPx6uaVMnF6lzw80ZeTLxlxqI9atklthsK950DXn/VQvusvFZJ
	 NhtVPypoLrnVxElmsZ338S4Us3qNgMYHEU2N0KvfcxckgzJpAP2w4+2x2e9FF6AAh5
	 d5uAucwKG6dYi49cUyrVtDUI+emw/56P1XI6SRhexpsUAt12MN6Quoo/brPWqweSNT
	 E0IhtsAb2YKHHQync4Y0cdSJeWLDhflvy7FTwqn+WlV1lvg7p2QIK/LWTbv6ObB+nK
	 ItQkgtUGzB7Vimzxe9sIkaGRxJELpF8om9QFG5WQdmmLYY0yGxIyfqjRDcq/ZhlZ+k
	 hEmJoAfCpuN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBEFEEF31
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556473369.13571.14731375179982489535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91eea97324080440167defeb1984d5044e24f56cbce28525044cdf5c8506b40b
Date: Tue, 07 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775564733
