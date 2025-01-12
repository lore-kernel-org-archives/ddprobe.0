Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF52A38B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736676354; cv=none; b=mpU8chMzt3vEYBfITeri5eKMNBqzcoKiF5wyNX6vMluI+vDk8j7xf1FKjVH+SMQuR0jSYhnsrcF4FnJQnSENBOIVeD/0OMqpuUZL7uHRSBeIgjJQg77iHDmQka6SS0H9qI9HnANBjZ6eI0Al44H4m0aRnS0WAjSF7g/x7iOKvbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736676354; c=relaxed/simple;
	bh=X2mCdso5vw/kRzWmN7FcZnW3Xn0tJ3O4kThHX9NoPCk=;
	h=To:Subject:From:Message-Id:Date; b=K9pdwabWEIKOjhJJkfMZQShhotrCFBqbazdO0+OdZsrahemi7EyPS0WvXGHoUzzHgrjg3ioicx0jl8THIbq4BR7/k4D4ujoJE6j+CWacbIHXCgZb4OwsinO9MSFlcMWOxP/gM6Mp7E4Z/QVhvQnEcjjzph54ufrg6hXfFOQCTC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxB3/eAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxB3/eAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA880C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736676353;
	bh=X2mCdso5vw/kRzWmN7FcZnW3Xn0tJ3O4kThHX9NoPCk=;
	h=To:Subject:From:Date:From;
	b=CxB3/eAEb1OEkscyakqVi0kT2rWXBmJHYNxfEULsrcpYAY93SB/rCQ+3muX37akgo
	 xxwALHXQHjMSDAKe3aFJWoWufftCDxSTBaPfoV7yLRgoZTAWPYSECVs4fvJap7SxLu
	 jk2ARuk1cu3zrvAvlC5wJaJY2jsbCnXpH97lZxl5QgFiH8kr89ABxaqnxmUeVxu7Sd
	 mP3IcJgvZLH1OzN/1Eqg2ymjqjXI5JFXPQuAtLRHTDVoT8uHYHXGsVe/DvzYR/2y6f
	 trxep/HORyA+4rT4KlqdbXVg1aaC+vIfNtztGKS9L+n8k+kejxZchZT/v9fodGdCth
	 EN2welluyQfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9764CE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667635359.5255.1017702078900237088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d6cff894628b0355b490898026a31a523dafd451162e620f0bf41f2975fd2b
Date: Sun, 12 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736676353
