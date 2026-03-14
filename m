Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485626ED37
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773514494; cv=none; b=FedhSuS2/7s4p+iAAsVAEr7EhBG2Azi9fsiCeyfK/PzIrRTY7EXvqOR/EpFMnsKNGS7801GVPzVyQXpROTA/9WL/2eQ1pTaVIqhfOg2N69wvJvWJe4vEgU58KS3hTwRa0NAktJFn6z5upFu1YK0v9UMJAsux1iTs7HZcV523B8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773514494; c=relaxed/simple;
	bh=dOvOAiFMqrmeSeXLUzdYdCOtkCLYI67woC54bffN/AI=;
	h=To:Subject:From:Message-Id:Date; b=A4RMQNtBady4glR72FswHN08dDeQ3jIYPDBHjt5pWvlGpAAEU90RoI9qCaDTwKTqQ+MX6BV75/gkJ4NGbt65XmaroZs5H64UIZz4g+ZA9NvDgomv/5Qg8z23Ta+76QQDKLSJG8VJxnEgiC0BU92V2XuAi5ZS6vn/9Xt/lKx/HVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPj5ybIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPj5ybIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9523C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773514493;
	bh=dOvOAiFMqrmeSeXLUzdYdCOtkCLYI67woC54bffN/AI=;
	h=To:Subject:From:Date:From;
	b=NPj5ybIb1MF40XuWAwzmnC2UQZg0BwQ7LcHzAqP92T51vuBeAn90ATpFNMkumdess
	 1mHWHhxePNSlKM1A6PTyMgvuOdUkZ23r6e4sjDi8rvntyabWC2AIsQXzhfYf1Tbd+v
	 Ws3T1x7fSQ0K9+CUXMWwo1zp6OYqTSp038s1XBz1lp9MNz5HF8EQUlh1uR4XQOOgZ/
	 6oaknbe/vg+UonKYugywDmc/4F26lC8AjXO4cX7L8uMvOrj25AO3cSBHxaEQ61B1yG
	 fTs/0RGUO0ptIVAIz+ptcHBu+FCfjaCodSIPtt4JbNUinQ8bJxruM5VcAH/vE4MpkY
	 IIppUuLTRz2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9735A10706FA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351449358.7684.15753127085047135237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f69b332e4ea0041119930fee530a09dfd1dbf4ed243cf09460705886d06443
Date: Sat, 14 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773514493
