Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608F32E126
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780266274; cv=none; b=SmwFG7Wcr18hVB+0vcpSmdruajpPOAwXDdJFrY/bytPSa01W8aer3vL4U5+aroRiXRWvsI2rM0x9cpIuySS8hrYylgiJbhlK135IYXS8kBTjTzCpoJWj1yQQVuSiosgWrHvb5N2J+aTP52X2IH63/Mj2niNbZFDeb2XJlX121Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780266274; c=relaxed/simple;
	bh=GNM/aqJ6OrFLt64arAw2mNUe14EvDKAwSXFm5ljhAgQ=;
	h=To:Subject:From:Message-Id:Date; b=JmOYaKH/TQTjDIPYIVhvVPlCuftX7gO4D8MavH+CgPtGrRDIb2Mc4kkCwcnfteWlAX9DxVWtTsF8ubkm5Oc1/jPaKQ5Q39d4en6kmhB4pXjal7yy0Y8tL1uv39X6hpUgQIHFyXGlxzkRgsuowmWUw2OMkhZj5vdKZCgXzNtKt84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7QBznaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7QBznaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF643C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780266273;
	bh=GNM/aqJ6OrFLt64arAw2mNUe14EvDKAwSXFm5ljhAgQ=;
	h=To:Subject:From:Date:From;
	b=u7QBznaMV+padjQGtVwhjNq0KmMsIMk8z5JLw2ZWghi1MbC1CSDuAquLxCX+jVwQe
	 t5pdhJIAeAGesMkXMKTWlpcgPvdgAh6mYP9yL2hsTdaiTyF7CSJz+go8M0pO/sAXCQ
	 stV+SMWeEaBPUS1YV66trhBGSx8SGEyFMf/m/iMzyzLPceumI7bCmZBxboiRHiXUVU
	 cy6NGtZcC7qNZ2nExV35/YJ9D25EKNmMa/dA77HT5edYs2dIQRKh+lL6Aq363FYLBa
	 eTJp+7aGurYasXnolc3VliojHpfFQIeonI9kjH2gNK7cQ4EVd8pww4NlQh/JZpk10r
	 rojEFLRFWe2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B721DCD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026627371.9262.3309657700074028334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233c9fd939f95848ac199f11329ba9de85e945c5a3324be9db36db07e859046c
Date: Sun, 31 May 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780266273
