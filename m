Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFAD33DEF9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785319234; cv=none; b=YdgrxpvrEnaad0YRWvzjck7zTKzkolWgT8NQIZNJCRr9kq74a7h4OvTNTiqN7Y+52e5YKX7NCa7DA8JBmP0FDIpt3z/a5HBoDY8BqR8poSa+E+zHBmvtVI/Q1QM0auTvoe3tpsELyYWy6Ia1PeR/jVCOtiekzBiTmDOmRNtPAak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785319234; c=relaxed/simple;
	bh=qoVls2jm8ljDabZHquJ/1Caqj3rzDjI4VEWJ+RmDR0A=;
	h=To:Subject:From:Message-Id:Date; b=LS26NK0fC4dpaQBpSFA0rhgK2To9QLoQkZdIBFYu15dNq+by68Mg9aHiBjA9VR3QksDXkgnQTAaqtcnbfEHllUEjkXtkdqn0I9kNiyWAD1nsXFjT8rsWeygmbQLxKMZiRwr4nn12cmzOkW46OQuRioW5rli3y89SfHmxHblfaDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHtBcJBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHtBcJBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DB9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785319233;
	bh=qoVls2jm8ljDabZHquJ/1Caqj3rzDjI4VEWJ+RmDR0A=;
	h=To:Subject:From:Date:From;
	b=gHtBcJBOFYN4NMInhZprKBmt4TvNxdlZfL0VwwjifRiYOhYftLHZmoXCm1hnk49Db
	 NmHQcfDcIIpEhHK35/hStcThJ9nnWntrGga4xHGLM7TNAQcFDvQB3VYCCDjVebugLX
	 eHipGNFLlVC3Ig2ijysY2DVYC3e90Ch0m9nucvcpV2A05TwvDDkXwy+g3QH9KYvSKv
	 RDoYWpmBgSBXrDsLpS/LlfXzBqwq0GWUXY27tUvpZIqqWm9G5C5vJQSyksnz6DE/+C
	 jGXwt96goWvGEtmshOnXccnv1Qo090jikTsmU4n2Hxr4ePF92RIa6F0w0CXts+QBAY
	 +FBFAa+NWE3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82D7C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531923368.15260.7661282185396974347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f897e0b0b9d2ab746462dcfcdd8e207031b9c533ad3f4876a8e9eb8cc0ceb526
Date: Wed, 29 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785319233
