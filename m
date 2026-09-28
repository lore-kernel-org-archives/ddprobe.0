Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E1156661
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790563834; cv=none; b=dxeooOHCeCeG5TJN30QdNEZTBUC3jGqFZzDhJJbkl794Ug4+9y+KcTLbRloJWcbZilGXGis8RaR6EcS9Sq/np1+HBCM0er4dE7pDLBA+XM01WVuQPZokFFKqph8vOzyAv+EqMPBFj6QB5A8VYAbkb3FvAoZ31YFff1aXPq2mXgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790563834; c=relaxed/simple;
	bh=az64r4/zThqJC8TB5L6XhDztl33j9JqfM8DYjxN3WYg=;
	h=To:Subject:From:Message-Id:Date; b=mD3iEbDkisWHGzEfeu1rRTJ37oh63Jl0zoR3eoXnWIOFFUzO348xq/gR0RmiDt/DyL9Wf/GH1b+IkBqushtCywOJZtG5Y512uGdsl4MmQaaqcccstf+JvtheAaKlCYLPOdvSaMuA2PvrK0uIH/wA5LjRdxLCmKTWyePTZ5MeXOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNIYVyVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNIYVyVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0FFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790563833;
	bh=az64r4/zThqJC8TB5L6XhDztl33j9JqfM8DYjxN3WYg=;
	h=To:Subject:From:Date:From;
	b=PNIYVyVac5fiLAPU1bjEKQDg9dwMTzYgnTAOmNtvuC8H6ST1bhJKoZK1WaWZDLYxU
	 d5ZzeSqMRrrUlht9bCYIraf3Q9m/Xj9quG9K6+Gg4W40cVz+kJpDWCEKZ+1pY8m1O3
	 WVBR1y3Wsj64FFtzRq/RNKxGax59q6UnERnJnitnI+a4Vct4yG5D0O+O1HBk09Wrxr
	 Aj0bfiez26Eydl1H0q999MBltb2/DXeJDCB5CEJx1qOuFU2L5tq6J2gOJ4j2DXspRa
	 kU4yVE8h58ublxLLGUXUBA+V5lZZppFuf5R1CW6/BgSJ/KDogKKBUpojRlZdGlrzzg
	 az/eh+Pai+t6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90FC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056383369.13123.1652354649869119622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369c83decc35a0ca413b041653873d4bcf5e351aee7ae57f5b60e4c74f774d54
Date: Mon, 28 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790563833
