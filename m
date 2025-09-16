Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BF618A6CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758025193; cv=none; b=s/ktmGlAKN5hQThsFZlW+SltzWV0mvahBVlK2yvB06I9cfUTH097vjZI1CRCdnirpB0LH92RUl6JT7YBi26qdu8QgLF1qaEO6NGM9K/RD7ZOyg+exqRDkNmcseCSU7ni+hcT3jUnuRNMEg9LfVjiCNDrp5WPJBUYeMv1S2LaYkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758025193; c=relaxed/simple;
	bh=ZjGkpphXeyYie/5ql2uF89Z+DF1JK5RscPfwS7EKCHs=;
	h=To:Subject:From:Message-Id:Date; b=prN7b2q7xmt9rghyu0S0O7iUiT/2AF5fUTE10aFQ6yuVVj43mWA3lVW1VxESDA5fCisI+tpKz6UsyGDTc2pNA2TpOm5Uoun5SdNMDWPlmrYUjtGj5e+IR5KYyF2b1n9ahXmgKBrS/oLFkmDC8e+3yesRMr7NCHDxx90Gr9dEhZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0o7eOyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0o7eOyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0297C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758025193;
	bh=ZjGkpphXeyYie/5ql2uF89Z+DF1JK5RscPfwS7EKCHs=;
	h=To:Subject:From:Date:From;
	b=c0o7eOyW0HxlgyZMbHiqyUB0+PmoLd6XQ60fsQWW42i1BDsbeP0UEaXA+Ps0GOIUm
	 6TmH/sPjVQ18numyAMH+E5G3vcqjTMVnJE0LMqW8/AntCmRjp+tYW31fdB/H3GJTW6
	 pN5zrur3WC5eCVGnDLZMWK1NqPWC4okZnO+vvxLvK5k//TUmxZ18T8rjthNPdM1RLv
	 ylzRe43k5xm3zaxsOd8emg3owf2ccqFjOIzerbJvZ1bFD9s7SKThrwc/Hh2+252hc8
	 i2kW21oUYIpohMW4P+XotfRMVHYeetG6S1YyMI1tmRiDKperfJUwXvUBAaaf1ikvmn
	 ieOo5v1ze6H3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D5CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802519357.14797.1766581150634498575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f2a1144c8baa8b36de8ed01f4652b2114df08131d461024cca87069895410d
Date: Tue, 16 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758025193
