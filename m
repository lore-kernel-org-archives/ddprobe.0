Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403A12737EB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761170994; cv=none; b=Lnl7y6dA2qYn2eCdbw8onjBYzHR1MAfo9POTTAl67RxVQWLRD4S7XmhZ7rh92BTQVMUqRi03JTHiwOKvzoAmn6kBd5qas2HDdxeojUZuWW51lR1dP7hSLKCEMYMpo5ugASIY85x5s/zg2yRcZcc9OzGgPtFfxap8nN/mpp4fk28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761170994; c=relaxed/simple;
	bh=9zwjD1oVn069PRRiM22u9VmYtmjJIQPeYP5D6Iu6CNk=;
	h=To:Subject:From:Message-Id:Date; b=EQLy9COy8qLnU0j48G+UOnp58yDVbh5URaNure29F7oKVpbQgE4tA6pUAE9fb9yV+cK5dqT3Iar5PMhHjCgytSz3rGG6COXl53nYiV9AhwhI5vxBX4tsgUwNilzCtkXoQIyn+bQ2z4Qz2DxyFk+k2a27U1xJI2YIKmN22weyNmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJBKXiBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJBKXiBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4429C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761170993;
	bh=9zwjD1oVn069PRRiM22u9VmYtmjJIQPeYP5D6Iu6CNk=;
	h=To:Subject:From:Date:From;
	b=oJBKXiBu3Khdj+0Rc/vsVygqOPIiAHMBvVYd4wrxY85zajjJF5c+Xul0Koz27xgNZ
	 1WKSw4UyxFuNKLqnF9PruLZO28tkqfFZ6KuS+EPNfzjxUaDEFYKLmTAmzbCB5hNYrK
	 BSndgXTQGV3F3COrYvQDlivhLYLWu0tJNms+tbQDBp3xz78BRt9CnIoCKf2xbPJ3bG
	 m6x3ZIP/Ty3TzN7IThN4xlVAuxDiBJEmDwjQ8LRXfTZyI+rv56ltqL4J0GynpqVdeQ
	 Asgkpajb8GMMgnbVG5DldiLvznv2WPQZn4Nfi5ybZnuJyD3zOEK4g+ij4stzoh4nFt
	 gKlgDH066lMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6BCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117099358.17597.640893330641963818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05df09e6fada4cdd6a0acb886e68b1454cb96d53d46b8b2d41d2e3eab255204e
Date: Wed, 22 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761170993
