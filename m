Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FAE2F851
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767261834; cv=none; b=WV2fdpPicGBHD7hNzbcH0gpwQMFfc5qAVhL+76/zXz4D7iu1nYT8JobL6+D1yiuFykjvFmkAARM2z+lCrJYWX9XGfkW/QQrggNK3WvBxvQi0cX9gLgPTEP4M0MF0eVJKekEi+J2XzFSHFWjEDO5GtgFj7aBBtlFaTbfIePgTXlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767261834; c=relaxed/simple;
	bh=4IPPSSL0zG1KoLcvOVg9KDxW+1gvMb4H6HlN3j/Kv8Y=;
	h=To:Subject:From:Message-Id:Date; b=tsLKvUNWSuqvDH2YjoNvfGta9UZrpk112ay0cltH6NcTK8DQ6gwvn1162DT11+M4dDMK4XLI0Gtregvf14xbDShNo58XAsDokVFGyHSjBF/N5ktxnCE65oY8mPochBAL2/QLCzV2wxS3ONMeN/BhBehnYVcUAKqYCs6JWAl25Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGsM16ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGsM16ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767261833;
	bh=4IPPSSL0zG1KoLcvOVg9KDxW+1gvMb4H6HlN3j/Kv8Y=;
	h=To:Subject:From:Date:From;
	b=rGsM16ia8kFXQpa6aFk8/7LbXF8+3ETXEjyfp5kzehnpVhdi/FyvFoXMM6pO0lJgE
	 PGXLPogK/qVxrtU7pNFM0jG71WlYstEk9XkQP9S4Szab/Az9nraA2HJveBEy9Nw1/x
	 SBEb3bloZ4qxXTv+3WtsL3OJeBWOggvZr+QiJH6tRxDX0VE9cNCJKKKxNxRnOcr7Dn
	 40eCvrxkfXWKPyIsijepqlzfRPDQ8+RcnqGKE91vJbpljzYSfzYFcC410cySufkwKm
	 gLhWTPMvggSe9C/45/QoofghSmsaXrhlrfjURdf6ho4NIqojfRYxWHu8/l4vpObvwI
	 uEmwfnP6HIx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F4EEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726183358.16191.5365492302870095644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e73c8beec4f2b8fb101e30b3aa98b5974207af166967e756f14e7cde2878f81
Date: Thu, 01 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767261833
