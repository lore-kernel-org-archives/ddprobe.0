Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083EC58ACE
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713103763; cv=none; b=rY7rHknlMdqTE1RVjduvi2SC/UnZnULLJnONjvLGv3M0tWdhiWQERQcHgs6WUzoqs3+SzfC5yDv6yUmxdHYMd/CV5stzUWLHcAZMJjDD+QXIuMKNHd6WZ6zQxvxaT7aafUQflZrHJ5IFNTZecRA4+0ovt4aM242NjEnWmskrRDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713103763; c=relaxed/simple;
	bh=7aaVrmwaN+faVPm+Wi7QLpG2gQBk6ZZoxlqYHAQH8x8=;
	h=To:Subject:From:Message-Id:Date; b=FASXioC6tqhryTgIkrebKYfaKiFLr5HvOhj98dmDpEKEwP/xyHjmWsFDWqa8gYde8Spo28D68BJckpFMV0CtTJz7z8+4jpEbqFQ6AXcT3+RebftjXmh0ac60C5cEnmRoCZuy4wPDL4kZklnJMNfWhW4v8Ibr/sAL9ehbtZ776ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6wn8HVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6wn8HVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A76C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713103762;
	bh=7aaVrmwaN+faVPm+Wi7QLpG2gQBk6ZZoxlqYHAQH8x8=;
	h=To:Subject:From:Date:From;
	b=Y6wn8HVAz7XVFSEQ3yy4AhhsurFNfUOF+4vrCSAQ+CVuA2bofNaqIqXZrjo4hrlmW
	 mY9AA9crh9RWoHzrueni6XCz+WTrjPqKH83I2iwOH7mC+iyHzAMjBmRwSWVGYLBqN6
	 1aFLKzdsSoReL+bHdNbrSFvH/Y3yEGPSGpV3x8AY5wT3cg0EKZpkgh9s0ZeuFX9tvD
	 48zuTM1jyG6rEM7UqB1vKrkR43ZBRudUG9k4s6KXPSwCLjJbKaPMPcUULNcKo8wzSv
	 0ye4omBSJMXkjT21w8rIZSJoRn1J5kKbETP+3iozOT1wgbb6KsqR6M1tqwKFqkZBrS
	 pq7EcciZLKf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB5AC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310376276.5156.12716389888028410056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7906f4ba3e83767387ae06984d8351e275aeae29f66d4737f0513d8d4b03ea
Date: Sun, 14 Apr 2024 14:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713103762
