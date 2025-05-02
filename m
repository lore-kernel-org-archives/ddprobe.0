Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C152580C4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746202794; cv=none; b=XciM1k2bDdxxH6d5U3uzWBn6jjHVXmkDr2pz5Ebwh2pLlJBzW802G7k0NzScw8BTO0KQOimaxL5GWh5SFooLyaIVzmdCzzAIwO/XHV4FHge5RPcLE7CuWJZ3Dx9gCpvR4JxIEyPEfu89z/XR2WkipDZegaecFLH7XHVOHdFgoOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746202794; c=relaxed/simple;
	bh=nWEOg9uwlpDSpPDZKavFTFIHJcik4j5G2jv5Ob8Bobw=;
	h=To:Subject:From:Message-Id:Date; b=ShhtbDP+XXVhiFSwI8wmOBaKa4/f8wqBFYWzGg2a+IbFQJKzPJGBnQFIdh61GbTsEQ3K1W0MQRIOGbaJ4GzyIx6xEERpgCs8RuTsczHGJopdSrQh2HEwqP0Ip4a1X2szK5ClfZZgBrFpgtKhJJpr8neKBWAWW6BDf2uM0BDM/ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnA53uZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnA53uZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746202793;
	bh=nWEOg9uwlpDSpPDZKavFTFIHJcik4j5G2jv5Ob8Bobw=;
	h=To:Subject:From:Date:From;
	b=XnA53uZDBjDHgSz2HKQ58RUhLdpBnxZZP+cI0dY2jQ5q3Whpm2OyC4h8a2Ttt8Fcp
	 9baOGcTmhoITVoeeA3hr5vxrXsrUzdBAtx8WQUT/pv5s2Fnb0QZy2AStMdn6nc++q0
	 rAG4w5jfMix41dmFWbG98ShZQgySVTAR23sW2VFrK+k9ASCFoa0MwutBaAyuHwS/zB
	 v+mLbQ1SxNONPKqEFMWEi0hByhICKdOCDe1ZbOlZpQZF0UWz2SgAPWKIPKFGDvHQ1a
	 twoIrAECJO6I7bxwKgRTJcQqdZuQ5wHkiFJOUHuvzvoSZIs3nE/7dMDfwckn6faP6U
	 rAubxRqI+rRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F102C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620279357.22807.9937207712967347126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7d7cff689df95d85f9fee6234518c1fbe751a4a9a5a128ce8549b3857e3f7e
Date: Fri, 02 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746202793
