Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7F223708
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777126654; cv=none; b=MBgwmJh2YTof9Yxf3VqN7yxdJS6a1UBu86/uR49uj0ufmIokhjgYVpAG/TQ0IuzrC5DDT+mXy8V54WMDqXLYcbn3OVGGm0aDVf4DQO3WpizczWVKIpQ0VIyzr2N8POk9UEpDMXOAJc7yuBgC5IK1j1T8koK7Ajs8N0W0P5CgoeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777126654; c=relaxed/simple;
	bh=+Fp/8vakWtgAldVjKqq/nGoQ3X3//IEqFD7c9Hqj8GM=;
	h=To:Subject:From:Message-Id:Date; b=OSEFm8qisSU20KGFB8SOSNnPmAUwTwlyMG+b5qTQkOJhaXm4lQikoOCu42FYNqPibuSXCppigU/VI1ZRrp7FLPP4wktkyQwXhl8KguKlItwoT5zJU9zuxoXJdyTPv8yq+t6iPmAEGxcH+2NasFVJjTtaMSnRqYFE/d2MTce1B+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6+bR5YW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6+bR5YW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D54C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777126653;
	bh=+Fp/8vakWtgAldVjKqq/nGoQ3X3//IEqFD7c9Hqj8GM=;
	h=To:Subject:From:Date:From;
	b=J6+bR5YWGcCjpFPHuJkdEelbgMOlrkTPhl7JTjrxmD9MtXBA3F8nvziavu1nb6nWM
	 Rr4R40fMiY0/bvbxcYs0X6Qy6q9w4p8PAg8SpXUieDJwbdpBom+MLtUxIOgGo79UBQ
	 Aqr+Xbg1N+Say8XKM3+EkG5RvXFY2WDXuVS1eb05yvNDf344aZdXgWo7MDjW08g5XI
	 ueeeUAr1hRMB7Lr/Oja/Txf9GeohSN+of4zalsnp9+iN8Zpi+eQS3ZQ7OqXPBTCIsh
	 0gwCEDMNBvMcUR8b7PPTtCWXDiXnkhuEfCYLIsggjpL6bpqtm0tZeFl/mjEWhUsvkD
	 33VJqVb8R3LzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A18FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712665368.7636.15277571007581703805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c8a7a8ffc0c02b3f1482e577321203ea1eed786a2942f7b279ddc04bd80269
Date: Sat, 25 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777126653
