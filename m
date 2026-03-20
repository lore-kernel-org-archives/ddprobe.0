Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C1928150F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773970494; cv=none; b=t9vIFPd2MBV7jO7mMsyL4oJNe0JIW2W51NYcD+Q5O1JEojJXbO7Xk/rn0rtta4nWPMoIulUtvE7mx2j8HLx03jU/4QZNUuQuJ7jimGYBv4R+wwKwu2P6JynliFVl8sSUmrnz1mLV/cqPa0ld5kAQX4UO4rfR9Ikj2vXZjrYtGhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773970494; c=relaxed/simple;
	bh=AthffliopqXBUEVrRYVtexfNUQyQRTX2jNkX0exUw9U=;
	h=To:Subject:From:Message-Id:Date; b=VecrmzgF1Enoils4z+yLSWD4kaP5EQaBfZnsge4/HVcDFLCkXgAKg6itxvnFA/OEw9uvjp9a1ufZZ/nYt7HVdDogPVzHhiQ8Gcgv5Si5twWjtiMfu27Xqewd7pBhRKATY8dGJgMHRJJrS3xkWhoacIE49L0+3fiUQv1Mkd7BCg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBjvZb77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBjvZb77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1866C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773970493;
	bh=AthffliopqXBUEVrRYVtexfNUQyQRTX2jNkX0exUw9U=;
	h=To:Subject:From:Date:From;
	b=PBjvZb77PnpXoQ2A8pUgT0nE04dVyz7yhaTUKFzLd41Sb1j3HFAGErZ/gtxSzWQrh
	 hii6qwLjE6w0JL0pXiICoLZ1oNVwVL0tj19H2ZtPLD+iDY/w88WWKxv90Po0nhg8tZ
	 e5AzmoMbtJEe9EqtvbXIrY48BCilhMm16ugNMwq036BgFi9OeBrTLzJWrBPOoik0L3
	 +SN1VWjGmW6PxoKnxk9/bt+2PqrlS+U5piddy+IqpSOAr4ICwpnykR+ioUHoq5tCeD
	 rhk87/1fGoKGL0wcNgx3wojQx0j5nXjCdTK6OwaPSd3NlbwBDENHvwrk5ygQ9yk0ng
	 N2WfKTamyrYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A2109316C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397049357.30468.17376439911291052037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b52ab2b43c5d2b757a2309fc9dc7da19da10d556020552213b9a292872eb37d
Date: Fri, 20 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773970493
