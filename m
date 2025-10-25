Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F44154BF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761401394; cv=none; b=KMpyW4Bh9lmvVno3GbLVJYp4uNcIFpRDfOkllvsdV7dEN+Ls7VKO0PfYoaipkjhkrgQyESxZUFW0IhLlgWJOVMZdQnVZqWTgxDRvQe/N90T0ilWwXKoF07oOiilMNt0y8wVmjZHe3MZEryKvpuTnOydaOz92lZ3hnd4eynKB50Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761401394; c=relaxed/simple;
	bh=M48mXPXvf7IPbJ/dW6HRX4QQLWzGw8CQ12NOyF4IuVM=;
	h=To:Subject:From:Message-Id:Date; b=QgyDNYSpYmA2eVb0Kt7mQNznkmjLsOgEwliwFF5pdkNal65LCPKz14DSU/ju+HKh/0Gy+ObHQSl1Pa6wsEFu49yj75dpb6p/iuZAfe3zkuN255eOHCTZ7qdPgdL8gSbdEbt7RKwdDmSv0wlpMCo6REnReh/ASaDcTeb9HNoTeKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDOtnYY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDOtnYY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB67DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761401393;
	bh=M48mXPXvf7IPbJ/dW6HRX4QQLWzGw8CQ12NOyF4IuVM=;
	h=To:Subject:From:Date:From;
	b=TDOtnYY5MnA/cvmMMBI6LSp/tNBigU0UBRpHatgiapifnSXK/GYpEjaEK11W3J5Oz
	 6AFnf5IppSENnd++gsdhAfEVCLqGjV11WKsEOLgiivyrY69fQZuGjTc9H1SJMe8VmY
	 aiDJTPC+8wj4zxd0uCyW3tPXyOVdR+t17QgjieNHBaqIBDJFpJX/IjzFvPE01lTMUf
	 b/eTdL87lfFUdYS3J5srCsWtm8V7sJbuLQ2mEux42BYQyUm504tZ0KBKnsQxPEmcA0
	 ObY9jnvZz7EtEJ3Nt76IR1qZWCqLHAtkCWitB1nji/BFVTBaetLBewHcwo2GQhnAG6
	 Ioa2TFgCAxnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C94CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140139359.22876.10326042572848375911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3581ace4c21a6054f4a439b2a86202b6a24a08d70866a2510378e929efa6ab
Date: Sat, 25 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761401393
