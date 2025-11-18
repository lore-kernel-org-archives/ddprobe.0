Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C553C3559D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763473314; cv=none; b=CpMYyyWiH2I7BG64zxR33yWJcxYssYMxIguBnUgYeJUeRfTBx/NXrbyqXK2oxsGk5eg4/EfUuMmHypUMCVPH3QJaneABj4GNOCbCzRIetZMSHro+ndtCOZI2GPgnJ4xoEoEL2MFLc9Hz+Jf+SgV2eMdDwVWulnTlQNV78l26irs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763473314; c=relaxed/simple;
	bh=VkSxZABi9JEVQLqtSMNyWrH0bxK8HzNLrukDueEWj9E=;
	h=To:Subject:From:Message-Id:Date; b=a7wCSoS10BshT/1FDRZ4X2URlSiZxKvBX/AX/ZwDiejA7No+lm3C+dx29iLgsAJMeuxWbOajZxtWkkW4BF2Tdkp3iZUQm8atdeH98DqYGiNxesSp0W9xuRKP1+BYYyt5iwFozY2o1rlq+/lWZsA+fsrFdTpgESgXdzp+JJth6us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i88EmKcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i88EmKcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C860C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763473314;
	bh=VkSxZABi9JEVQLqtSMNyWrH0bxK8HzNLrukDueEWj9E=;
	h=To:Subject:From:Date:From;
	b=i88EmKcc0OB5jYW9svagVjTP9X//WqYe/4Ilw6oeltqqG3bJLgkQtqTIwxMPXgjId
	 U4NOJ6Rb3OsKstYoxnr71ByCMwZ9CPoDYYVaOU37M3HN6LN8oRmWnZxD05G2BnJrNU
	 B0Zq5mLuww54zx4ypYXQdnKaev50joE3vMtX3eBVc01p7gMSbdF8WPY9TrndZIFmFU
	 g7n+3wzamSjvzx0HNgfGWh62CqLvjgAdyvgu9E2sSRwg6p0reC3ymQb//WUun2jvfg
	 +uwGpLIT6vMLDuNlrQxczKt7XSBeflmQKM9Y4AljlL/7LWCibnwlOEZySJLWJ0rOY1
	 vpsLvFmt3s1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FDCEDD86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347331358.13865.13931893318173093442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805fa7691688f147b20f7d91802e233bdd39afe784f1cc1c147e6a06492107f4
Date: Tue, 18 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763473313
