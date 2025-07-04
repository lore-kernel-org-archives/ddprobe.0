Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E699E29E0ED
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751621394; cv=none; b=HUWS9/sNwQlSgIAmRZfTB400RI5oMESMko7ZrFYabqHBmDZduO5/Kxg7z8PwNPmHWOO7cody4Hbq79JOFzS1RFlpIybMYZxuewgjEfUISRKIaY5YO7tpA7B9oyyOdvsyqt9D7W4cMObNlQ7mjTI2H/9o8wd9XQjghWGclE6WwTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751621394; c=relaxed/simple;
	bh=MgFgKvuEHJIyv2jf7Jyk98L4Q+Y6uy/Ja5UdWofoPrI=;
	h=To:Subject:From:Message-Id:Date; b=ORHbP7xzttjPzCW0Uo443KNR5aj6Lh4gvbQWYH0yGQH3AsZvcjdp8Kfby0ZTns3+ya8a/3L8Be8zZ1uQmx7E0eI311+dvIjGhQerScwqGS8sW4fvL4lKVZCylA3cImfeA7nrRM11irVFvWmtMoW7CTVmItOX2KS4ygvhYXAEBE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq/GVoau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq/GVoau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751621393;
	bh=MgFgKvuEHJIyv2jf7Jyk98L4Q+Y6uy/Ja5UdWofoPrI=;
	h=To:Subject:From:Date:From;
	b=iq/GVoaumL9lcwQwkiH0v+MhOD5Wpip/Ue9qJM2b6Ox/2p040WBmVBjFWI1R28dh2
	 IGOuWkK4hJB5lu/bvQFccHZjEC1DgP8PEbEx4ti1z4xr8jgKtLCu3TWwMy/x3WMiz8
	 tq1ELEDABLBBhIIZyJN+dfTpj8NgAumSKX1n73VSV2gjDAZ0HIXIG7Y8IQUIbKTtCF
	 4HXPAAc0S47NAjGjPRsRDu+YaY0CaluAJyacFxe6MIGXWNGXfvybFz1YnMHNpqz52c
	 6sNROLiuG+YPCmAJ10Unxv5fhfIYqnDy9jDOTUV8RR23bTH6VjrQCr7uF0w9d8fYii
	 a79RhpYohw8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367FC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162139357.10746.5433554571825582315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0241bd779ac4a50bdcce74c63c8a02d15804850f5a84d10d1edc7763a2cafc6c
Date: Fri, 04 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751621393
