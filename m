Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B63AAD55
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717263264; cv=none; b=U1izBcZ/8OQGSwv7Ps4JgG6DZQONTHosNHF/XLNrH1l6PcNq+kuJBvkEMZKX/2cNySDvWAhNHxTOZlMmKXaBXP4fyZd3TTeVrfuXtFdxjKzgJR7CMOPOYO9Ybz+35QZ+iHbTeiLR2vGpX6P0ptLf3xJzErzg9J2YRH3WzlAPaoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717263264; c=relaxed/simple;
	bh=X0C5gYTyvMVIcyUHZq9JmzkAKNMTb93KhnHKMNoFu/Y=;
	h=To:Subject:From:Message-Id:Date; b=a9psJtFRORYXFBIcvJqwM3/beNSL+JbUIKl4Jg7/0XMkjVQOcUodfBbQkQ3QBmnyfjpqUY/lMLZGINa12rGBjeSBsmd1eCHdjeD9hWvi6SZ5odNkcsrHaXXvmVI086nhdZPh28m//sTh7fX/JeNnCOnjASkxuBseTYYknD9vxeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ffg3A9p5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ffg3A9p5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E9CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717263263;
	bh=X0C5gYTyvMVIcyUHZq9JmzkAKNMTb93KhnHKMNoFu/Y=;
	h=To:Subject:From:Date:From;
	b=Ffg3A9p5v7DROPClsbLBq41embGvVn1xK6rVjzQeRkdJzS7MzcRPxgWyKf9bKGIVO
	 cDpRQ6IVxPkEG6vI2oUWahn7qSBbL1iN+iXVRRDLEe9CQfAe43Ay5wG8dg9/2MsoZL
	 2ECl9TNbecILHB7RHtokdq34gLoTHI39/4LRVKRjWf6KdfOZBRl7cRgQ5KTnfaFYnh
	 gdC4Bh7hK2R8qOvkWB/oyN/78eOJu3cIdjrgRvj0jssMUOTcxKtejVuy76Qx4VBxJ6
	 dC2HKQfyy+4SzMhSdqKILk84U96QOY1Yx710XYgUEu03Tb4VuGoRiG8drIPdMpyoWR
	 YscGC3lE8K1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B2F2C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:34:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726326318.5289.6733472760189268988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c108c4ca902f92bdd34cd7d514349f4051028b788ed6b64dbbad54c66f4a62ba
Date: Sat, 01 Jun 2024 17:34:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717263263
