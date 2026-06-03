Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0574C0433
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780527874; cv=none; b=Q9s7yIS7HldAuVkXDrh8xd5FbE99b03zfyjN9otBksnKNq/rIP8i8XOR/AkmE/t2VUu/2QoueLq+dqoyUK27lNWx4KdVFPXYPnVYHVV6y3m74sDLdY4lp5S+i70uEi8+8jxaBHByyu5S8OCOBkADu4xq4ZeHJmg1kx+8SFA9Kgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780527874; c=relaxed/simple;
	bh=2uoA8zFU0goxi23szvusD/vSfKvcqzA1vRG7qssOtSs=;
	h=To:Subject:From:Message-Id:Date; b=d8FfKFDvD4iDE74fRt/Y/UFpir51TQl2pFWLS56rAAkga27TRDpbIiNFAoUBuBmgUu2dHLgruSTwsKLO3vhveG5ouVry7ymSKvQ1l0ONutlCYJuWIRlnM3sQn37KJ8+x78cYsRNPEjmLRgW7FCfUxtd7IPUXTB69Yqjp1AJg3X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePhV8H2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePhV8H2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAC8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780527873;
	bh=2uoA8zFU0goxi23szvusD/vSfKvcqzA1vRG7qssOtSs=;
	h=To:Subject:From:Date:From;
	b=ePhV8H2O7KFfKhYFx4joSdSuAJ67MfxUpKn7pAxk+xbtkXVqkJXqUoQEBD6Ksy/EQ
	 4tVcJLbPJhpVZmdm7pAk16Ixc/VTMW2KQkPtUOhQEgpQMn+lfnGOUGojDxjYLHxOzi
	 zrG4NrAbvsP47ZMF07Jyk7P3PITAlsQVxuWkAdUBZZa5tKIIHqOQi8AksqJmC8CU3G
	 KMiD8/Y5RXWXJX9Ea9tcCnOnRiClXsybWeeulaPyFI1oMNSKW2iPJKBdGc2T9hO5KF
	 nyOi5pfI0Huocl+iD1X8eAzIiq/gk8OZCst9DgLSEd3iApWxTE4qL0O5fsjl6fOfRH
	 YbK3iXCJ4g/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19DCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052787368.20262.3605989236731869653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12839aa9dadeb5bad0f9f26ec3a2ad88f3702368970f5ded4f48af21acda646b
Date: Wed, 03 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780527873
