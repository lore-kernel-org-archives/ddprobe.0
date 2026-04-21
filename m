Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A4B1632DD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776771454; cv=none; b=dkA4RHlqKLLvLpP07oco+33u/ETeiZpF8Dsr16C2PeWhhwpDIgUMfnDZuM6E9Nuvogwqv6FREKQIgmOvHvAVw2d5rJZ3fxxGcAWtnILtImpDij5MQXeNWEDBW+Fx19wZLlFsBkLMg2Y/pPQlfeLQy+sDC6ba4/Plpn3J2DZRkpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776771454; c=relaxed/simple;
	bh=rBQ7NA0L7fonFfuoytkTewfOqDUqOm/Ap0neYES75WA=;
	h=To:Subject:From:Message-Id:Date; b=VfDd04dY873R5zD9N9taT86Pb/HiHbD+rlG+Kl6Pk/lrVSWD7E103pheWvj0yUKskznXe+LU/KRBxBRkpzfVaP4w7Jjylw6gd2iW7N4CbBGVCtnM0Eed1UUea7AOY7Cw9HHw6di4ISZ55mhaYKWo6kOzcWpt79+xbpSmJ3AInh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMw3Haza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMw3Haza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95C9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776771453;
	bh=rBQ7NA0L7fonFfuoytkTewfOqDUqOm/Ap0neYES75WA=;
	h=To:Subject:From:Date:From;
	b=RMw3Haza5jo/EnFRn6VW8MFwpsSAAfEB7xiX1iIuOdoAA43DiVnpUpRAj2IA6c2m3
	 LCJ3W5w8vlxrjVLt0xwisInrqqyw7wyuT57sM4iCBhD5fmCjEseO0WwjOCg0MTJajz
	 lJWoXjB5bsyp3ElvE6+qStyfcpGWIrhXiTImxeVEEpfewwSk3nBSWKmBG/jjC3/mbR
	 WuwowSS/VdzD9HUKFNdgVQTXWVHR2zXkdb6nDil/PTBi/BYxHmJHJndnquVLVKEpnv
	 A+eo3hQgMP9lWI5z9Vp4DLWTluy4u1HLP7JG0+K3+ta0dn9PedkK3AhgzPbmSWCqoU
	 VsH1kj7cav/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965CF8925E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677145368.6188.2850415036115828453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e5cdc933f38a13d46e26b9f5daa2ffb36d9f9d0f17172a1c5f0efca8a6c66a
Date: Tue, 21 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776771453
