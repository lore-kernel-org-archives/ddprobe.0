Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64378F49
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758597594; cv=none; b=cOUlixNgBFwKIt2mXytDmat51PtD8qHQVWytkGqTVs2W/jlRnVUqQdKpbqUxqYM6zQi/d5PuoVDiz6t6DIi6FAoAqxmVUHIWpRiNtGUtcOFdNLZvtT4mJe/8I2xNVm376OXMhZleGAMMl7qoV+C2jcWPO2sjB/I25lDJGWD1xc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758597594; c=relaxed/simple;
	bh=T3AHu8pvIUgFDS2vgpyKOzqrBWEx0/ZZ8xWIeZFRlZ8=;
	h=To:Subject:From:Message-Id:Date; b=dSaU61MojKWHuq4Fcwt1V0Qg/y9+qBiPFuHKjBEp2rF1q+4en/bGW6ckjmllDh5h1vSne/9Z0wFLLJK53xaaRhl7yTWQxJ+ch4jYtEd+Bg5aHoRbJDU5+93OSAjnLSCE6aCsNdEoIu3ggrf/TdM2eC6qnuTrqIg2LZdzmxdT2MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM1ReiZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM1ReiZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6017C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758597593;
	bh=T3AHu8pvIUgFDS2vgpyKOzqrBWEx0/ZZ8xWIeZFRlZ8=;
	h=To:Subject:From:Date:From;
	b=IM1ReiZcXXiI5B5srbDFE+HfARrNu8M7HKLcFUrTsy/bzx8wHk+eSy5NQWSUCmhtk
	 NQNOmwknn5Dzm5EEpymMikF/SdMlTviujxkIGpIWHm33rJoMeALmTbUL+qBvq59GuP
	 UEMiuXck8BJVSKUoXhUAat+8ZHAxqPTES7wEDLNqrEYbwL+w7/ytZB6ZpJIQf+/EBO
	 Zslmhk+ZWnHPyFloBnwbheMMQxK+WNR0Omcb4rh/zTJZtX4p9a2N5hzW6Ns1+uBETp
	 11KPgWWjzT3ORIGfdwHhVPDFEWvfIFBBRfPo/M2MZ5mBF55t2xapPbPen1R9qqT/hq
	 g/4J5CVkoyUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F2CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859759360.16575.2010355935227604543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511a6fcbb2fa96e917967507d7ab717e2f81ef820c615eed385a1f445d8f7f38
Date: Tue, 23 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758597593
