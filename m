Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AE32472A4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755352194; cv=none; b=bAeeAUcnb6NBSUggRx1KCTixTai6IWTn8PnVLr/lHOEiZuUVt4kLbiHGGws5gATbMBqwcesYu/5F5vRUf4jp6m/IZm8cEkTLvVT0S8qWBXorlEj8rInNnHQ7ESamjyTVwsn+xyhRUCV4PQhUXF7aBPv6RDloT3+OizU+RryQIAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755352194; c=relaxed/simple;
	bh=ASHB4OfPw6vrfqjfIPr8gagT2DnphrJxlW+IoLOKuU0=;
	h=To:Subject:From:Message-Id:Date; b=NsvpwfKdx3CayIBI3I+XIPcTs1OvVeKgb3gVNPXwnM/PToj/uQYmLVj7IwlkWEAGElXLm3X1nDRHiI/NzxpV7+Au9/DC+QsGh+PNBNjHdm5rhfEnFWkilq6pZDQjUoJfIUyu3TE9FI6MA0zKgEMR4PqzlIQaJ/jcc8prDDIYAZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2UJxPeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2UJxPeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755352193;
	bh=ASHB4OfPw6vrfqjfIPr8gagT2DnphrJxlW+IoLOKuU0=;
	h=To:Subject:From:Date:From;
	b=E2UJxPebquMy+s6u3fQ87CtCMo1G4RvxBHFiDbug9SQo1hd5ES7/mD+I2z7gwJ/e7
	 MpCMCzi6ab0q+DtKMV2BUS6KGsgritiiTjitxcAJ782KiaObhEMa7ex+YCcUDWsyHI
	 dvkySANE/3kr+BtChv5iDW4ei8KRwg9wfM+4OhhH3gxGEO1Ifauz5Htk+GK5cSBbC4
	 srS45YKkoMylrtPlTwHe08qGutoY6Xa9rDWR0ZLzwoYe6Pb4TvgqI3e05dCmBuBb+k
	 +ngNIHkLtO8L710KgWqbteSB95ln5UR9NzKp6YU3LyRTfVNFRkz2VKiYzcFmbxj0U2
	 YnPw6HuuDi+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7ABCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535219357.26731.15895406162198216988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbf3c04e533728c5e8a195833113176ff66bcf30ffbd3a19764f6a53da00bc3
Date: Sat, 16 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755352193
