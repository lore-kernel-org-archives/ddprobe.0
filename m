Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922B332EDD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768973034; cv=none; b=N9I9fiHOIDYq3JrtPUb+npsP6J777MGOswHrmT973z3Z91k5izDi4TBe6YOGiR+Fezf1WTfkHr1D70qdbYrbZhhZAstRNOwZJ/pO+GEjnIWru4e5eo2Vos/g62ETcW6jCx1DzNF3GZnXVLDZAG781PFALcoJNykQsaNn17TSI1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768973034; c=relaxed/simple;
	bh=04wkWRZy0odh9hkd35kjshAvuqjZTux37Zy9IomQ4MI=;
	h=To:Subject:From:Message-Id:Date; b=hPnfjHX1iru0rPJjcS46Yant1CtT0dF5s0sNw9TrtbakbvRP9DJguW67KG9mzocXUN+DXUL8g/qMhhwcVC0cjEcBkrkVsrqVsFornwYrG6/YwHslANFCBTJUqdU7FhexhgRGS1rWgqssKl3lFyMHUpso22tCWW8ryEc0V2G6TJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt4Oha7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt4Oha7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D61C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768973033;
	bh=04wkWRZy0odh9hkd35kjshAvuqjZTux37Zy9IomQ4MI=;
	h=To:Subject:From:Date:From;
	b=tt4Oha7OtPmAkppcSz1djzIfAfTBw1cEiGFz67/vI/Cfg6I+x/RlPVRnKdwE6PRlG
	 piwI98OuWhf4t70A64crHsoVEdQGd0GhoqIYfkbR2ByhjQ9JCIssSDKobyHaiN+LcF
	 SqOOjm1gSsRRxTAHWhODhzDJXX1wTzGsMWMkJbsYfNyhAfhS6ii4m8avUbu8jU/ydY
	 vuWdBtrtsjKgcK11xdpUSBNNOX0TYpPjvYeNQMjALh8aC418/aTvzQpMGIthEFExks
	 ZS6v/m0eFWIO+jgu1ygYphOPldwHtVvGM/EZmVIMbY2mR89hJUbGaFAGCJbgwKtCyc
	 Mjy3fQ8FKc5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE1D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897303358.32278.1801080091454335863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf1e756206373d09a050943938995fc5d6a91a6b9140d90b3218fa3fe173109
Date: Wed, 21 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768973033
