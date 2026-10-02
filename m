Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABB2317164
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790948434; cv=none; b=ViKCj8TXT9iwgwGvQBODtN86GYzEvtGJ01HUg1OaUiTy2iMfVljYv2kF2Hga/BtMo6UWR08Qr8jM24xX5skrN8wKBIy5WLkCfpsgpwCx+4g1qQBwN54CxKRLa7++jcMmrdB3bsfyR2yFtDdzsiKGQKm9l9Jze5CqqWY+28MvaNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790948434; c=relaxed/simple;
	bh=6rWpUHoSBOTMBZmi+k8xx1maupT4wr6+YPjKrqnK7Vg=;
	h=To:Subject:From:Message-Id:Date; b=Cm/Sl/tbdtkK2M5fpofvuY3zRj8zcKgCxawV28pSE1yxjJ6IQsX3UkmSWT5wnF/sayjOfxyOkJb2MvKxh8OHGNT8HAwrX3z1vEhYMPqkn2A4korOEQi02qIHDbpKXPkSv/z+2JTfM4uJMkxAXeO1fjR/SmC1XhDWWaaC2ruaeLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfdJnScb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfdJnScb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBFBC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790948433;
	bh=6rWpUHoSBOTMBZmi+k8xx1maupT4wr6+YPjKrqnK7Vg=;
	h=To:Subject:From:Date:From;
	b=cfdJnScbSakZW5V8TkoC7Y4QdgB+WfQ9uU+1zA49rMOm9cvoYpNc4kEQipRNBOUZI
	 CgK9XP0CBFhJ/jAPhqe28vNrAyrbbLVtFVXU3H7kj+uvgTNDkcTnwxKjhkepf1IG78
	 1XoWH/o1bjQoVNXx+fd21zWrGPzYMV+qhIQFC09xiMDGI1cUyW0s3JaveWggmGng9E
	 ZYNPI8ugIeEefhpwLYD5Aph4cCHrF5KLU4WUPGf0l1WWE4mKmWiHdYSdsG5U49Lgh0
	 mm0CyzuB3/fVNVgc5eJSjNSdSOehJLhz9uldWVBrimFHjGJeKZOu1KDN9+s3oHgQsq
	 HzEKXNzGM7liQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA316CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094843368.2643.15706800270220455430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5521f43a8576ae1faa11bfc8825b5ef2bd9e8c50e5366429aba9c403e579ee2b
Date: Fri, 02 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790948433
