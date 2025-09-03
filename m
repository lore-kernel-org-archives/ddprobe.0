Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E429D0E
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756928995; cv=none; b=YJj9+a550shMKr481Dt+eMvXEWnsLb8+GOTkVNZc6CZU1dJJsr4SgSj0bj2gmZxM983/y9XzzZcPBWzJ/X78eN488gin7nkx9WSCB7aj17lQGewU48OI5LPuA/MHCTxlrHoEe6UICBeKONS0I1UbcmWyMbKnbwIaeTqmd2meXJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756928995; c=relaxed/simple;
	bh=p3MzAzWeojFECYWK4dfcNsk/sEtTLGsv9Q9ERz3uu+k=;
	h=To:Subject:From:Message-Id:Date; b=lBou2Twjr1gv8O9qgAt6V1DH+d8PZsnusAhkqAcTINMmUSJwKi9sLfkvjAuiJF8vSHiIruzEnFN0lAj2026qZcQracbtpWyVhMbOkXLRl/J1GD1j+i4ESv2euDefzI0wDzpHePXDXiXL968Ys2FmF6+4ijIdKI/LvhITtw9OFVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SinXuhHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SinXuhHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756928993;
	bh=p3MzAzWeojFECYWK4dfcNsk/sEtTLGsv9Q9ERz3uu+k=;
	h=To:Subject:From:Date:From;
	b=SinXuhHPYcCoOqPhVXHRMry8uhTWuzP4LtwUdjR0tqwG2M5v5JxU8Usq3WXfC/UqD
	 pCPRt6iCkSXnOYcLm3dBKfrKLHvhv0P1l1Z7b2h1lQgb7eRTYGyQ10xhB9MvFVJALw
	 sXP6QOpgfQz4vMe6x+FbflFCWsT6UMkFOaucZ3zsMDrm73VE5+KjqTvwBuJaV85juF
	 1tnlECbAh03u1zjIwFyK/Matc/tYZ35KvbtQbsD31MvKCyoVafCHWJUoJuF1t5h+kf
	 FtqWabFJizBaOo86Hcj9Vb4J4+hl2CNSIXgmZp1w/M+cKXofp+TDe+CVnsiTCFkh6O
	 7EKtjKOSlClmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95680CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692899357.31710.15431855549052035751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b318f8e5e1a84868b0b0d7110848f751a3ad9eaff2e87da4629ff1c931a8a7
Date: Wed, 03 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756928993
