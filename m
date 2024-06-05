Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727AD13A897
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717628243; cv=none; b=eSfKBDqaKliqvdh3Pn+oEXGssEkxHcDhNRxdo8wXqvwbyGdjNBhE/uhTS8l/yMUsntCL2PXeaNfm/8d5KFGz0KCvdDEK1LrYsXQ9SycIUhTObESBWeQMMDeLHGkqqw+KYxYTqLbj+y5qqLE65ZiyhRAskPMOmuzOqoeKfOWDKf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717628243; c=relaxed/simple;
	bh=Npym0lbYPV8EdM9rqqJmSGXQxepZb1BMrlNA7gyBjxM=;
	h=To:Subject:From:Message-Id:Date; b=I964q2X3nTURgi7aG0bGVz3r8C9pG7W18tukE65wb+pyJ0xcrVVM/XPTnAD2aQfR4cymrcrQCz8v/9bGa9iwgAL2yjVBUAXQE8BLDM4apGsEqpBsqIvtGUcbjFjKnRtSblk9zFhxba8/3Rx5qeZcDsB0VoKpduN1WuyyJS1Jt2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/DsgAy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/DsgAy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2220C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717628243;
	bh=Npym0lbYPV8EdM9rqqJmSGXQxepZb1BMrlNA7gyBjxM=;
	h=To:Subject:From:Date:From;
	b=i/DsgAy2L99yR/LGcZw9ODCOHFpgQu4OR6kTZMdNBP9oLDn7ykdqldSKcFL5XOKm9
	 Y3YpEEe5buZ2IopUpki3L11cfdHx5zQBQBQBXj8z24oqrrRyTUv/OfEXzyw57OFEoO
	 jyrjnFpIFaFfp1ZS2gDUMxSlXoYxBNsZEMIhWPFNNk7bi4gVM0k80mOft7gK/ahrTo
	 OyBf4zaETQgDeyc2UtmIc07CsHR4tSIH4cX0h0TZitSfgmAS7eDOdg0iw8+Cfr/Edo
	 zVTGETYLBvZ3aRG0Y+eGrjckn9q7G4qrUBpueaDJjJDzTeN+6wY94l4paAU+UXchBh
	 U1bvbtslCfUSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCFD4C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762824281.5969.7511716498146965792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37445cc339fe6e698645efb0d485b5e0e297d88d954573cec6527f89f7ee76fc
Date: Wed, 05 Jun 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717628242
