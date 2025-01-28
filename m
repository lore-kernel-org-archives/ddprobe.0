Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37C01FA4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738023954; cv=none; b=SPe4d0vYPjgFbRNspWyZzXhaSotk+fFf+EmwJ+P0yJvHNPzY9yywwoHkhlUYcTGI02urtK8d6gCApu7tXT3extDwpT8Z0XFFR2x5hG+qrqv6Tus5vPL18doGiZWyCJYSILqmGYFDeuLI4RhAGHT90xR0DZqGfnCsIcXlAjf9QJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738023954; c=relaxed/simple;
	bh=x+dicJBjrsGU1Yz3/hppA8HKV3T4QVL5i7fd1xyKLHI=;
	h=To:Subject:From:Message-Id:Date; b=E3C/0H5saTsgwjLsluxt5ylUYFo9ebnUvmUYn5vt5VbWRnGm1HTROip/h70av3tvI7AAOOvm6xmrnhk5cAe2kTkJc7u4z4/CcGz1Loxptktj3TYSV3PyfziuJm4gyYiVIiSFPfkt9fUqUGAltJ60jChPKL3ImwaKPQ9J5VxHIQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekbq7tL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekbq7tL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF938C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738023953;
	bh=x+dicJBjrsGU1Yz3/hppA8HKV3T4QVL5i7fd1xyKLHI=;
	h=To:Subject:From:Date:From;
	b=ekbq7tL8yYBTq1OiiLJMJy+9oMKNnuFtM30KOcNGIMQAr84JBIBXACQDm1mLLIqRT
	 zSVOaSm7ET6xgDhaK+qQ9WrsHTePkDX3gM34TKAM9K8rbFX34KgS1o0yqcVhmmdPzN
	 kykeMUIThVdEz8GyLdA3zV90Il/OYia2SzLBQJsGhbgxfIZVx5lthXTLePaCskEwGY
	 KJRA540XMoHSFo6vGvh7gsaWgOxan97Ayv8ZFWEPuADrKblgd7NAwQ7Qx1LcoMltWB
	 qZC8SZtDLgzC9qWOxGMwsYBWq+L3fURi4MkSQg7V/8v9B+GZLAPcws3ozFr3b2A63L
	 UvCjMEQC89AhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CB8C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802395364.30465.8245286090112171121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ed3fe728b8c84491e455e3791011cec569efbfa26bf19db28103775aee6383
Date: Tue, 28 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738023953
