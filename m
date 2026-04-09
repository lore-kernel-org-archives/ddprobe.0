Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315BE2DE709
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775698534; cv=none; b=q2rBZMJQ1KuGdAkAoliZyRnIy0pBolrhcISQmavBobx6MRWhFtN1V2d9dvHYR8yIlCDu8VYYgO0lgJFUIl312GE0r2erWMOz7SUzTIvhRli/RMlN0HMa8tbnwTsH3COi/sOMGRP2CSER46iMRE+yO30aWrM9nhWp71trsl21yAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775698534; c=relaxed/simple;
	bh=25ashfrTGW5MIZQIY6lIeydpHKpnesvY0uPK2A6NeQ0=;
	h=To:Subject:From:Message-Id:Date; b=XxZLOZRLxFbN1NMFXIh5XPKCWL8sY8aCpx87isDT1so2iiHOxYZ3b2enTFCrBytWbfvYTf83Oed+lH99UVzUcvD+HJxIgUBlF3pqalOrZg6kAcp/l0iG15FbZl/uL20OA3ctNhEIoqG9JaG16q02E7MLe4G+f95nh+H9Ro6gFDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAL8wErX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAL8wErX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF763C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775698533;
	bh=25ashfrTGW5MIZQIY6lIeydpHKpnesvY0uPK2A6NeQ0=;
	h=To:Subject:From:Date:From;
	b=hAL8wErXKSYKK3VHFT0BHeRXVYEP1RmBdORcaTjbV8zVX6Y1w17hTvi4keVPiRDyv
	 LTBqv58ntbHu7cXHeh+tVbKet4MMqzfPWyH0c2Uh+8NfpTgsziBiy4qMi7LV9Ve50D
	 p6cmCZcAQJRq17HDgvt8qbalEcWcevNyUqj3Nfs3BwNfOhBxRIdeqi+kmWchoW4fxB
	 wKN8zpGFBpMzCr1g232xkvb3Xlt4zheQH8YnRC45qOoU5ROz+Z5S59r/yCe4oY/kih
	 yAUUjr38RAuSC4XBA8dbFotsrP2iTYKRuBpum+dyF56A3hY24nWlVBvFQf0jVQ0tBj
	 za3N1RN6ULRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF510FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569853369.6732.14896563735694503544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70f837f4ac34fe5cec3b2c6fda86883d5e2850d1b0fe798042e6e920a50949b
Date: Thu, 09 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775698533
