Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E51175A5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766016234; cv=none; b=qaFdo1pFR8CwtWc0Xq45Rq38yh+Eguswhn9zQhvt8UnSID3LT1UPzrG3L4UaUpPq+fT/Rd+hRE1OLblOfFK0epQzbpm+du6P9oG0FAVQPvexHxlfyTC3SD/HRMQi3Xmj/v4rj2qaSpzX5pcJ8MuG4EWTWiX4OB5LhruhrysjUyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766016234; c=relaxed/simple;
	bh=ckbiFSl1MqgbuLjxoETObkupH3iqdrJVXr5G9jPIl+c=;
	h=To:Subject:From:Message-Id:Date; b=P24pi2XGQIHV4mN4nzir8VdV+kVKXOTdtNdsN592YGlp9akE9yRLTmw3seKO4k3ZkWNQrKzUlIavq4AxIvGjDl4LSjV8EF4EzsBj+FBcrqf75HGWqIObt0SCCUe7QkqUyg8rryhGMiTOz2HMJChT6TPWILV+9Q8ZyYQul5Ol/6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad7XbF6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad7XbF6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC2C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766016233;
	bh=ckbiFSl1MqgbuLjxoETObkupH3iqdrJVXr5G9jPIl+c=;
	h=To:Subject:From:Date:From;
	b=Ad7XbF6K2oMTRokmUhUKKbll+fCbDzd0h8pwxLXDp1RuzX1SQokuSCmGHrqeHAWrN
	 r2EDaOzMoBnK6rZIOavOcQSezbIrkZySDmxItEUMrT1ZAXSAl3tH/l5eOl043vEuhw
	 x/KL+2LQRmYxMbu3A92Zz157oQu6nAg6BEKCtSn1tDDMb56uwEsGGZBeWXVqh384XX
	 6pyeTNX+lXlvN9geUJi+KilgV9k5Cv0yg8sBjxP9ypmL/24ypmzuwwwtDEjY039aAc
	 nn3Y6WodAezSPS2bwLTH0M4bKWkMdFINswX9OiDVNL51/lXyxRpe79gCBRtSiIsxIW
	 3HeGQ50gyX7cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9ED68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601623358.29232.421705364181489172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1e168634c73006403b1aefeb17312f46ba9440eb9507d1f742613230bfff1e
Date: Thu, 18 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766016233
