Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345492C187
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741742334; cv=none; b=j0QCiVItCrudlhx/+26gnwcL2WU0GB1MyMCuyMFee/IdtquFHvUj4M46xov0fJ9BZOKB7KTbhJeJQxuTnYG4dJ3/DkRWq8IkE+SjtfcX9vpDoPn/AB/9aGWegO9c8mXlmc+p0ys4EB49vdhx39z4kFZkr6iV1R6So2pFnocPZyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741742334; c=relaxed/simple;
	bh=8zwl+cY8I2lp7NL6RfGQWPcDsaoF/S7ZSX7bcIxU5O0=;
	h=To:Subject:From:Message-Id:Date; b=Wu10Zt2Ik4FVybmIO2yhvAQ3UTBurrWHLwhJl3fCZxZn/5BSuf7bR0LdVX2wRKDvPTSuZGR+DA/b9ZIIbUBAlyXDmHPAgp4W6nQwtWQEWAVRrMO+D6u6YvIX1pJ3b++fiLipYDwysBOuPCHtlpJ+DOh5zrPjzboeB5Dt7dLcXcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drZ9pyg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drZ9pyg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B07C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741742333;
	bh=8zwl+cY8I2lp7NL6RfGQWPcDsaoF/S7ZSX7bcIxU5O0=;
	h=To:Subject:From:Date:From;
	b=drZ9pyg+EJ8IFLFAIX8a12zxnI1vmeyjmQhaFEdW6Ya8Iwh8yeGjwTOD9oE6Sgt1t
	 aCWjnjpJbEgCYYtoI8Epv4fr/ZsUDpbCoP6tJNUUTQ9wDaM3LJ1TQd/k8sXIYc14tl
	 +t5vQVX2eZ1yemsz9k+tdtBY0RF1k4D1Ypse4xKu/iAEYK7vw0qIXQbeht+1H6mGNb
	 Cgb5Odqn2NwHUjTgq2cUZgTu8xWPcK63llrlYLZePWjarjoZf5JGRMQRvMUBxQNbID
	 +cCJjsUCXhVvE0hFwRjP3ZajOcaHe5XH9Jpu+wYubNbaU0aqhupPVR8jvv5l8dNTpX
	 IVmQAykaY1m9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980ABC282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174233361.32758.15164160703153415343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2112ebb0ddd7c4b99f9c0a3ad5397f80aff40ba3302ab51c480c8c04f40fa6e5
Date: Wed, 12 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741742333
