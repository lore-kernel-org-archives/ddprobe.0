Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD71C01
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736010354; cv=none; b=IjcPH2WTDi6RNp+IXi9UeMuK9vl3ufV+wRPeqEeer/xFmN3hChrJSspXSBpEyLpwZqJQUWkDowHmAJJThaMwP3zd49u/9ZhbRCCiXdO1oc4+XCMSJ9ShpkkqGbMynwvj2EHlc5Swkvnum/WFV9oyJsRhxGlPxoE/+aZpMhQMgkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736010354; c=relaxed/simple;
	bh=kSunwostyfrGdpOzLByoDnkeQVXOX1rHj3E1XZbZb88=;
	h=To:Subject:From:Message-Id:Date; b=ie7FD/hX2EswbtYFNckDjCdAyeNoEY3biyI1IlnCcyXO/3hKYWLZ295Nqy5AIH/92vK+vX6T5lWhwnwFHDMddsVzk81H2eU4FQdQMoqTGwfgK/pG2I9NrxTgthaiEBKx3V8E71+5zGpmWeVwkSvfYrorkM0ioQuKDgKvEA3phbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZFiLDvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZFiLDvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5840C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736010353;
	bh=kSunwostyfrGdpOzLByoDnkeQVXOX1rHj3E1XZbZb88=;
	h=To:Subject:From:Date:From;
	b=UZFiLDvZKMD7AwV49H6B6VnHPSsFWQv36OQ/zstSAeVeS3HvcYK4ug8p9WjUhW8a7
	 VMHbBHR/AsZHon0VCKudP8PEg9UZAqVQk0HatXCHgYOO4qe0LxNv2rdqjS+QPVz4bD
	 +eQZmGzsVf4tAKcK9GHwKnFFdZyXVFXbEWlqk+6trFwD5O4v7MmWOLvVaVEUvlDjFy
	 IBaQrgLZPeizevo01l9/bA9gFgMey7EAOOaqsR74Uklzj7CCZaBGMFPKuE8cmdrC9H
	 NPkPJpkJB13b7B601S1M6kRwCMA7FbkDWHkh/Abfn74I/LSnzkePhfQikF4fcn0rQ+
	 jjZpiF+SbGp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9421AE77197
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601035359.11070.10746923288468455286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3143167e3e032cd51a9fba40b8d062e5c48a68b670f13c50b6073b715869e2b6
Date: Sat, 04 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736010353
