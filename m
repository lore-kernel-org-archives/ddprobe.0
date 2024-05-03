Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508D1137C36
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714711943; cv=none; b=t1TDJkAGlvr7NbrQQqnSm8VRzrwG9jiKxDPReD8K3SU+oJr3g70+1JT71Bux2fVSJWJFKmsoOJ0KlTPC6jWYpEDrheIU58hv6crB4smwKM2FCio0V6cMUsR/TUuZaUkuejgA6dS/UbuLbNBAGLYOw1tLJNIExjaIUG+Lj/OmRx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714711943; c=relaxed/simple;
	bh=IRUMHOdTequHffkry6LLQllkfljrxjdW+KKi0HSwFiI=;
	h=To:Subject:From:Message-Id:Date; b=gQEKywKa5NmCZnIb2LWd3yKktE58kMSxVtvWHpgzLYrsvtmgiI/LZms1bgKitamITrEAdx8PTVCXSCA5ssbhLLhY0dS0/Z8E+CA2FKESmqWjNqBWCzuMO875yLJOJMOEWJYSlW7dfZPkuob66184PknO/iAM0i8BPQnx/pkAtbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr7ZSulQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr7ZSulQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A34C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714711942;
	bh=IRUMHOdTequHffkry6LLQllkfljrxjdW+KKi0HSwFiI=;
	h=To:Subject:From:Date:From;
	b=mr7ZSulQPdhsQB0tifjcVhA2r7PmiTVqdLcB4Nk4BLQ5q4WkNWFih1xRtFeLsPgPB
	 Wkzea4F0Gc40KLYubv/NNMbqVbDylv4krda1gJU9t0i2HDPxdJtCuTi/N+M99nEpTj
	 FN4UkhMnDhHPJgTMNYtxv3bfbnalRQQOva1msaID+H37CfwQ4eMDsT/xuYhj2QzYAe
	 X7xuSXx5djycVe0/uJbSVSrsNFowMK0FmvcQeiPHRtrDaD+/TtBSXovUCQVt3S7tBv
	 lThwRAseGYipvPdXptdtMEruj5gIQeSlWZ6E5fzTKv2RoD3jDcuvMac1MXlhfvJzp+
	 +1CKZiNchKOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5C9C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471194277.2221.1932515854141773920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107226fde1f64ebb18da492ff7b72ed1a4838eb2319679b4486db43a8ead2687
Date: Fri, 03 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714711942
