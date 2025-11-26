Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286CD26A0DB
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764154974; cv=none; b=OacKPWgqtsbKqgWRng5+5OpOM5yac1mC+QfcIcB+cPRW3gXb2l1DdQ8aJwk6glofFqGqdq8uZthEEdWDkSrpZ9mXI35VBKBRjhuU8sUDW0sHG1Q9Zfucff66yw/eXj5DlCSpqRSAZmgtkY/j3FAC3OxD9i26Q275Lembl5Y0+58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764154974; c=relaxed/simple;
	bh=CHGtu6Jbq44GVGlhKAugctii19+hDYDOe8YoIQGdoQU=;
	h=To:Subject:From:Message-Id:Date; b=D+elxd1zF9Xz9QywxQy+ROyLFYAheug9v9RTmhtEiIRn9tTXHhdTUdYR8bAJNZzJPZ9aYb2HX2XXJU5b+z5ZG27iWWmCD0hGMA1qRfZDN8yiQ2I7+Fye4l5qAyqRkOPYyYK1OZSLaobdLDJIRm22jmkifwCwanDTreWgKR+1H10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQmU0sL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQmU0sL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29B6C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764154973;
	bh=CHGtu6Jbq44GVGlhKAugctii19+hDYDOe8YoIQGdoQU=;
	h=To:Subject:From:Date:From;
	b=jQmU0sL0I0FVT/uf1UTOL6p75m0o2JPE3LD4gUx45LXa2hsCNdU82PpX4+6dTDMM7
	 8aikLV1B+KNvgi8mqdlBxLp5trOrINrGudWrXn0evvZb2FE62C42+O+s5+YfM4gL/a
	 u8xPfhv7mFEYT9qa8HoM/fsTE/UQo6m77HTIYVZI1VU7gepp+QgjiRdjTN5PT3SsDG
	 qrLO78IpNrl1Z061FrmZ5sWgB8+LFtutymqGDhITHMvDM9ct1XZkErpOGuq7J8wSwu
	 QfhfQhRRWsuYwyaGTDcUaTuy63YmH7j2C8tjEAd/rooeoaCCwwp56cRmy6ZTzYXpxF
	 AaogImXThOUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B0D1037B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415497358.28004.766476299817281600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d2bd48e9791b3c624af2ee0e2ac415da49da3e1ef42a81ae9ca13f088f9b1b
Date: Wed, 26 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764154973
