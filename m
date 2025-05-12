Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9FC186A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747089594; cv=none; b=VT62bAPj4CQigWzMbLu+juC2HOl8kdDl3wP2cPQ1kG4Tn96Rz/07KSdnQif8QYFcUEXh49ZQ4wyil2fZaWF6T/4k0wlkqGS/Qptz5fLp9usewvmdu5DeaDAssx7nNUYNJofOGSYAo3roH/3hUhoR7NDFWF2CWwGRN5fcm1+drPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747089594; c=relaxed/simple;
	bh=S6JCJYOKciSWM9VpAFfE37HkFvMX3jl77mBwpvQV6zk=;
	h=To:Subject:From:Message-Id:Date; b=T7ZXeJBBCiDklMuARiB2AxmXrehRRPwYBHuwOqa+TAam2alOnAu6mQfI506AV+n6x1brdQV7KNA+FLHI9wjDrpl3gKvyt6bnkf9Ezgs+FL3ayWng7TYGB/sdWL+kdpodT1mJaKZDRSX6+OyxXI5KimMQ7FSFXTkP++hHiUhRs4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwuFocnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwuFocnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F68C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747089593;
	bh=S6JCJYOKciSWM9VpAFfE37HkFvMX3jl77mBwpvQV6zk=;
	h=To:Subject:From:Date:From;
	b=VwuFocnhpMobnrfYaG9XO6qek4l6GtUTE91wn6vA3BjLiAaLrGS2TYJxYx/SH9Xo3
	 f3DF+EUGdiU8ak46NrHTZ1utD0C1ssZbEJZO1j9pmPfYk0SQRb6qVgEraiIoMjmAGA
	 GUMQtMJLD8ORD1xXaLs4/MlHHoYIC3QKW0DG2bt8kyGwjOPvVoLKeku9CypnJr4GGd
	 tikjbGUXD9R4q8xCAK9NHcyW+TgyfwKtq53JdZXizQL781Dlhzrym9VKjoriKJYNxd
	 CWtbqIWuqFEuP8uRGXDyci/Nd91PMtUsOPcT5Ay+qowoSkpe+w3PU7euGImPhvLmjf
	 2qMoPXzGTp6fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA1C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708959357.29535.4663565896988409454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27eec9578840c2f6b17a8df63330898d5e949a26fbf0e47cd5c0a0c48bc7a71
Date: Mon, 12 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747089593
