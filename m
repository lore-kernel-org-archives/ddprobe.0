Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400914F70
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736235354; cv=none; b=sJqdO5m2ahlqdsD7jVcNgWVbA3Tr52BFUVOetTRjO5Ktk1iJ5PW7yd2HD+oGk0Qk9qTogq/YHbdqWtLFrCciEJ3qIjSVsMqo6PjfvUr9dRUr6Zn12vdk8uuvuxuN/dU2ZpztUSYHyMiiaRigyzZ+dtGlIxVM7pGPI5U5PwCAtc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736235354; c=relaxed/simple;
	bh=uK7gKLdsqRncQLxZNITTUhxniCrYXBRRFzj8UUo8tXo=;
	h=To:Subject:From:Message-Id:Date; b=VqPuEqXrfHeLGz8TGh61bmeuDdgZfw5REDjfX0cjcW2BjXEl03KrWZ1sIvucTcdTyAMVgkR5az5YwqMiF1Bci3VpIJNmQtoG4ixYN8SuyK6nYAtzk+E43jN86ZKHrkh8+Orf5H2EgnlqNs4OzjqbK5rT0i4YNMcJkmb3/gKA5BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1KJheej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1KJheej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05A8C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736235353;
	bh=uK7gKLdsqRncQLxZNITTUhxniCrYXBRRFzj8UUo8tXo=;
	h=To:Subject:From:Date:From;
	b=Y1KJheejeB4r7ByNiHn8FX8OrcbvHLw4ELwja8n/JFef5RFSu53XQEhfTyxYsZMHH
	 Mogn6KYDAHDmhEaqsuHC5k8L6qtF6XjmJ6KL2Sr+NFCIoROtFRuXLxSzin3uLmduhK
	 qM3o46Pp9Kss3MUhKa3GBz0Bl+/UX50+lny3oTGp3rSoTrQCr2qB8W7REQc552rrbE
	 ZK1lSyuGVL/f3N/fFDQXQXv7zZcDE5SihLGhWKSHF2YxGz4+olESlV+V6Z6BM86MxU
	 Wb40mry52abwtVBf2k4dZ7p0Tp1oi+ni9CqwrWz8mGrhHXepDRk56uKc0FuzjpKKbF
	 S2mVmptiuDZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9629FE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623535358.23035.14644414597273946279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345d55a68d5357a0e3a39e9f12a09452515b79f2a21686ed7fca87f67d288197
Date: Tue, 07 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736235353
