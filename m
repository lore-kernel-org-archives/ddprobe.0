Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E534EF0F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779169834; cv=none; b=CNjMctUYGHZZ0RR1spAOJ0L1J7Rs6YZhzsAI/oEucuYtu1OL9yeBUFqEUfIxyhQU3cvQ4vE77TZIY+fw6jG8tKXG+gruETw2LpeUaTvXrZ1kBgakHrAHbYcpcFj4H6lZpA132Xfj0R/6j2OidYZgFATyjVtxcCKCDuC2TppJjlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779169834; c=relaxed/simple;
	bh=wluHLn1PnxgO3nsWuoC/rSiUdXsitdpWlicGVOHKNBc=;
	h=To:Subject:From:Message-Id:Date; b=gLQvGa0bHP7LAqw/yvcflgyR8u8cUnwqszAxmrz55eXRsLbfj8RWSYia/c2nW/zZwtwmnUQ++z+vM/6mKwYW3Iys3sXf8D7DXadClGvDjIwDMXLg15uf6jr9LZNI7hhcBtysDCaUPLW5D39t0vaU/u7e4kbzsDS6dEey7dcorYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P75HMYIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P75HMYIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF826C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779169833;
	bh=wluHLn1PnxgO3nsWuoC/rSiUdXsitdpWlicGVOHKNBc=;
	h=To:Subject:From:Date:From;
	b=P75HMYILluAISAU30mqe93iluszDNFjvJgMbw6Sp/vxOO7M5eDMGbv5gBBxVGRI7u
	 JAW7x5kqz4Ms/LLNQ90je3RUh2y5IeNmEQPsjJeTh0lVowvAMArr4ve2YAuROanISN
	 HNe+0jerNdYBoah+tXm1/pySh+FQlqHGT0Jn2jSZy9V1y+9inKCo1P3K3rnmefvfoi
	 ZI4X6yx8g6myygcimBqq20VCB4qyfuSgiQSwQOfHesWAOD9Slu+aqTwp9s6K1ghsMj
	 aH3vLtiKWx1/gP5pQdrAtRMoJgD5xoSrVNI2zzdb223kQuUiOBU39Pmwk8pYFXQvSe
	 DcYpvyghRKgFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE8CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916983368.28475.905968454314425055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee9b2bdf9c1195c143dc746d42403550374927c243c0c8df708ac7d78e862cd
Date: Tue, 19 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779169833
