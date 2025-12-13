Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C381DF748
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765651374; cv=none; b=ZRTgDd8eCRjl0TFkcSwkgRoQc4WJwymB5+VMDzdCrQ6xjOtFVrT7biy4N/sBvAgpVR7wwi5SSSPmEYceMsc3xAtn+D+rWw7k7DaGLP+9i5gHS7BKQ/Wp1Fy3E4CkYCr8NovNFT7GcNPk9tkrPeRY5ja74rGyqHHYpS1IhDlhTuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765651374; c=relaxed/simple;
	bh=V7I23/iVqHBcpX2j+R3CamX+v/vi9Zrh/sG8BVaXUT8=;
	h=To:Subject:From:Message-Id:Date; b=KaOf5WtoTz7gSH3mxqFwQNOp7mGoGjECaYoBEtLiioBg2dfrbfwgo1wltj7D29npZzs2dUGNwvTNtVfeNXH8eqcBujCfCLtlOOQHU1kcuZdvvOH+mKplK0YNQz1pvNwJ1j7oqVLW6EbdJNpA/wKap4TGp76Z327EURqT7fOke9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSPSqhbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSPSqhbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765651373;
	bh=V7I23/iVqHBcpX2j+R3CamX+v/vi9Zrh/sG8BVaXUT8=;
	h=To:Subject:From:Date:From;
	b=jSPSqhbxKS3cN0m+Y+2hoUGT8+7AX7EerZwUWFO+R0Pj5sv6mNyvruhNmhN8VBlGf
	 AAEoWk4rLcBcI70zsSBvfaPRK3+78IyA+V9GOYRF5s1aIo+HxdOCfGgGkZITfZ7ztP
	 yr94fk4sj1zEZJECTww9bMqGdnowDfXx9tDqwL/oQGEZ2i0cCIV+cvLiwoyp03/2XJ
	 G4l15NsKjq0AR2eBAMbSYkI450dmvUYR8SbBcUKkgz71+X/0tN1WNoHf3EC4XC4jMZ
	 dcBP6VqQ1z55hJJYLdmP7Zr/WdmYjeIjlU7pdTFv2VLW1662MJZx18PVSStFlPCfMj
	 QjrnSkGk2Ra9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90415D5B15F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565137358.15996.10878723206031616379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97015ecca38f29fd00b963f5e6316da2e60a73b1742817dcfdd7b2caa39e1ff
Date: Sat, 13 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765651373
