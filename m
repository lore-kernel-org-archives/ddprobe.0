Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7A731DDAB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756476594; cv=none; b=SWBO4dGtOjfmjPLqWQ1UFu2YsOwQWzxHfv2Xf0LwtT+u1FpgOPeyha1+XnPVex1dz7d9GHho/bTT27wVikP+QtikSolU6vm0SdUgjrPmqX/wPiqLkEFLdOsmcF+xBRldQ+/epoRUV9gEDM5Cio9bK/mR8RPny8MUEXaNLvF2IHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756476594; c=relaxed/simple;
	bh=7htfELZuz5HsXYXSxXadzwURBHnKRiCsSk9w5E3eRBw=;
	h=To:Subject:From:Message-Id:Date; b=LgzwK8l2KhbuDoVGg75EU5GnvMXh3e/QL4VPNb/3CWnOkdOL0h0m7LxdubwQSfsGOzjs6Tdw99gorzxrW5/s5hfl3Y3Q/45shgGy6X5OAxb5ddNZxCsCH2wL7wV9CN+klM4oXKHudeTBiQBBYKGd8fsV4sYHlbyq69fycbWcNSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkW3AhM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkW3AhM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E59CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756476593;
	bh=7htfELZuz5HsXYXSxXadzwURBHnKRiCsSk9w5E3eRBw=;
	h=To:Subject:From:Date:From;
	b=HkW3AhM8ark1sAKoGay0GzzqzPpvtCE86JCg2I0Ioi/gloqQj3g0gFR+i8zasdwQT
	 hQyUln05Cv8ID1blWW21uwaQxE7hCcqbcBLCNMSfygy8K2K9NhX8lNCyrxBLwB62gJ
	 dnN1/3S9fAFBx7bbaU/sFrbrmOK7iacvjybfFpUEuvmIlj67RLrVbqlRRy7YsLteJp
	 x9wCcTU4qkyrssvo6BobVeGgYRmRs40kWIHhL6epsBnrLqgn+fRf7MqDOhc7xjvXIn
	 gQz9+itQUX7eLOHtfZ6cGHCisGeuXNhvyIUEnoYtJSoKUS648ycJVEdf37tQJCW/CL
	 gSr73qCZitKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647659357.19978.17655675924903900439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3204a47aab8a3bf27dbddc908f3c61b0a10f537fd42ea82a01c1a31fe8e94d58
Date: Fri, 29 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756476593
