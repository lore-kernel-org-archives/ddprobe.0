Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFAB2882D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272693; cv=none; b=eVRve3kvwNFsJlg5V8HLHWw6sBZ8rrUIW+poZVlJ9XkO3Rg6JWrjeYyew8grQMnEOhlrJXh0d7PN9DfSkfrAWMlA8JNZ0Dbh+h4bFTSELaBaM6LtR5b27EMSJALtqFjbcDZ/ViP6u6oIVGns6wlphSuJueMiHCPo854TTUBbeZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272693; c=relaxed/simple;
	bh=gcPe2QjmHL7DphrvKqS150mLo2E/TnsLoUN6oA7o9PU=;
	h=To:Subject:From:Message-Id:Date; b=u1wmI4ZWIRnQobZ1mxQwxc6OdI9KRnM78/HLwRDIAtUVzBQhClAlXLao3Brtecg0oYL5w046e4qRia6CXlI3l7dVKOjbfZTWuF0pNuz6yta1wrvRKAi2clqLBGJRUq9Q+nNRVPJBRQLAT8UVOXreIVjcgAqML1lMB93ft/5UgCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MivtMni6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MivtMni6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6014C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773272693;
	bh=gcPe2QjmHL7DphrvKqS150mLo2E/TnsLoUN6oA7o9PU=;
	h=To:Subject:From:Date:From;
	b=MivtMni6CCCro0SZAhpbW2OWi8sUZBh5Xu8t4MZjJpR6JIsnAU9kqtHvGQ45/dL1J
	 aERIX4+IGZhWjM9jgUn/T8y0kjhNv4Ohz1oe+ZgEqoEYdD+fMZeGDN+W9RnimilH34
	 QL5lQPcxFpFp78erO7wTsImAC7qcV5GiQ1+J0S6yVSmSAlbsyt0qmyy65IPGPkTdtI
	 c26ebdOljm50vvwte0037tLJhdSiqY653Dn6GMCx4FS46fE3FBXnrbS3tGwIW0rPj5
	 D/kaMISePg4BF1Zprn6WFH+MGwQ50QI+WkGvWlYpvWI6VMyAyE1HJMRPUIX0VvbhQ6
	 I5wVWHQR2jMSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91790103E2F4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327269358.28063.522911248823732367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2541797d5e02a3579fca87806f849defb2226bec407fa6c5f024e68be76ccab
Date: Wed, 11 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773272693
