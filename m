Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A54117C203
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786595434; cv=none; b=O8LpkwgSkWp4Ijcnddp8EPmHezNFcXVrJ3vLEnC8Lp+qgMZELN+/G6NwOcTe2YEFkbShBLFOhfBV+BoQcapcny5cVec+1R+R4vkoROdvnKkranBEris5jJgiXd98zKjjY2Z7dBrPkRFZo7EykMm3wi1yjxE0PVI9PrOIlT+7Mwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786595434; c=relaxed/simple;
	bh=J5lI+Mtu02dU0RdbVw6NTfol+GGqVLLTJ8m2+4ag5pU=;
	h=To:Subject:From:Message-Id:Date; b=ChYnEPaqpEdV8xKW9POS/aU0AwydO3Uhy5H3Rc08XIhoZ9BvL8ItPT0ZP2VDhcNqBYHwwGnrtfNKnJozqMdZb8aFr4U3ZW81eFaHjjUQhSdLByJY+hdNiGXkDpcqIJv5uoTO7OcRp5Q/N2YxykudjWTtvBXcF3lrsGL1MA3bJSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWOUQBDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWOUQBDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E74C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786595433;
	bh=J5lI+Mtu02dU0RdbVw6NTfol+GGqVLLTJ8m2+4ag5pU=;
	h=To:Subject:From:Date:From;
	b=mWOUQBDI0Tm55HbSmCW/1Iq6LBMqs4tCnaLihJxG2SdrjwrH5m9JwqC1kZXf6Gw+N
	 /XGE8KSu/6RUc6eYeWhjVQpr+KWTCN31ux/ZHFOTAfQFmStDJ3/gsE5NHB8DHXQ/pM
	 lwmlCHLfc4EN6FJAag+OEzwo/8zidDBgjzS6ilAp6pAZJYpK7IAjBR5mKYTaDBfEql
	 1Ovck/cptFvax5lY4sRXu5EMlgzjzONpSdiRGH/EhRbxRtsAVwMhBMYOiVr5jjyGM5
	 4DhOWNLzfby8DaPVfqhxXbedxfRyThSAuvejlvbosqsiFuxdNU72va9zdukBP3AhLd
	 +hgRbXfqcZ3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FAAC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659543371.32524.14210660779402764289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449bbcbf4c791baaf5faf053970f68e76b3cd99bb906cf6a735aed6ef15bcd5c
Date: Thu, 13 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786595433
