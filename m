Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029582E2650
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751990394; cv=none; b=nDiKCL5P6MCAqX0za18r0WSGJuu1cZV9sYmc6i0HgOgiMRTk2Sht0wvLiPnWJzz7F+eha9EvxsNKGLef1VLlC71p+T5DQH0qlFDJ58dCQxJ9MNpy4p/DUuqssQ7L+9b0d2FgjxnWl297ePgBLHz/ylpMCjxrLXxxz65o9hNxPm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751990394; c=relaxed/simple;
	bh=A2Fc54hJ/IN4eJvHfosKIoWlRYUYlwk5Eu2mRBjAGog=;
	h=To:Subject:From:Message-Id:Date; b=k951+CjBzNtgFZi6oVlrJWh2XQl/N+2v3Mc5IObJym6XXVhl4iKjwXg7qS6q6FSFT6pq/lZcU0uZJd8mLqZGRb2IZvj2PC0tLIdd/lc7bUw2s970L4yjyM1zjQEjMgxEqhBEDyY2vk7rDJ1Gm9SFa00Xlbx11/Oded+53BkfWlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWuZK3Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWuZK3Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F91BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751990393;
	bh=A2Fc54hJ/IN4eJvHfosKIoWlRYUYlwk5Eu2mRBjAGog=;
	h=To:Subject:From:Date:From;
	b=DWuZK3XcF+bXMl8U0UXJLgBNg++Q5gBKkEauMApnDhM/vnpjalxST4DPPubCmhMaf
	 /BrjcQonV8/ZSE84iB5jIedKJraHX+/+d0vPVwreiOWq699XHUwdjDTz98UD2t+qTw
	 Vr1lWK8u94GdHcUuWNX152CN/JrRw8yfTpMl+1pT7hGsE3WT8k5GJBKQjO79E4jKT1
	 EVyRq/DLkGcJqE0TnGaLk7n3MkwWLVf4gFc9D0ZkXC1l8z1ksA51aR2pzLlaZOe4ru
	 N8CA4t3dsjtrlSmMdPFnE/DqMOKorfn4NvuG7LJBIt0Neq9QPRlkYTsvQkkAGgsMWZ
	 7xHF1kmq+4o7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF0C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199039358.5221.6957596699691050378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b01f9a27003873fb48a93730e8092f027ec556df36655646c17636b6bfa7122
Date: Tue, 08 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751990393
