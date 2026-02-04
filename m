Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED9031B107
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770225834; cv=none; b=ewKQsq4dDDcce4OlrpwYJMyCw1v62ESFXL+y3tlcwHLp3t+hnq/aPgAsR9I//PrMz+QYWU7/I+5msD0YGEIMmzFaRupwVNiCSHbDrRaU0gR4rnRLc3V5L7O1XM9QyEunmBMDxoGkTmo7dKA3x005wy6Q/P9OcvaM7JJMCUzT7+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770225834; c=relaxed/simple;
	bh=c+91LMW7US+V4bs1MnhomWstwsLukfdwsLDdWL1KCQ4=;
	h=To:Subject:From:Message-Id:Date; b=M7NuN+gVt1HPIBIEY3c04+Z0avkNKhqtMPF1gYqbR6qemoHc+Dm7PtUCaEDoOIvkFNc89ncDzT1U0RcdkyfGsAWcOK4L6fRgBLzPLjeAPmWtjjqwRFHkDP9ANdblTSb01k1R/aMC4BdmMvafn95y2ZWh3GvPFSHRH3TSmU7RoM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv4eLhIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv4eLhIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D083BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770225833;
	bh=c+91LMW7US+V4bs1MnhomWstwsLukfdwsLDdWL1KCQ4=;
	h=To:Subject:From:Date:From;
	b=pv4eLhIpdzRjTuySM9WyHhbAoQt/ET4osxd2p/OFvp4HUg58XULsW6Fq7KfHrRyW+
	 D/GmYVvRX3psQSOSHpqHZSJ3pgSMlkHF+LEXW6CxUplyaMy3qKjc9CjctrSCMdN47h
	 XtvukBKHeF36/ihqATQ2wn8L5IuyekH+NmRP8UHNo/JlTOo2VRvTN4Tyc+qrCJEkq4
	 W3m7QGNXID0t4ckrwkQWM5UkVIWj/swo8s0Nx1GfDW/4mysVOEcsB086hAF9louHpv
	 PzDX+5WMAaSfDlZccqL70VI05TNrxNzNoYEt+18E8a+X3pGz8vzfkF2YqudlP7GgNb
	 uAIDzAwANa92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FA9E9D41D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022583371.27817.15105421158845386043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9667f8a2f3e0b433daffaf0956b2342574a64ffbde17009b575957cd577fb78
Date: Wed, 04 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770225833
