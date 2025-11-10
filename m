Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3751A58D
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762736994; cv=none; b=OPCbz78pYol9ydg4T7NWDqdbBaKeVo4s9uISZWNF+dTzSmYjW4jRvWKOJ3iMDBZqyw7sMOwwRZ1yTcnFAf2p/5R3O4AaTS5tyKiRTgFgOa0k/RZtjYWZJmEN5umTCY0M0PVDLnWukBjmE/ZQ0JzwGvwBlzeGRexdlzB6FaYNvJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762736994; c=relaxed/simple;
	bh=/8AcKQYA2IcuuByyS/9OkxWNVNkhF6aUbTbxRcxbFy0=;
	h=To:Subject:From:Message-Id:Date; b=k6Xo6Ga9Mw4Jjf/OpnKdEmo1CHw7nhNaUfMLawbReBA9gSwKRJbaeEBiYnhNRkKnVxvE63oGZJA7uy49ssSxkMNpHTvnnKM0MdnozzPRhlTc4Q94jJcGNYJ8Wh+3531K2DKcDkc35+H/NUQX/k0jdHkg9p9iYVHAO+hdI+JT0vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZbIiWxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZbIiWxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB923C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762736993;
	bh=/8AcKQYA2IcuuByyS/9OkxWNVNkhF6aUbTbxRcxbFy0=;
	h=To:Subject:From:Date:From;
	b=aZbIiWxzcpKqaZN8ihRAr6LPq/kOtzdwGcQgp5adLR73E3I2e+T3kDh7I0vTxz1gS
	 jwUF0bXKwyMt4MaZ2gjcxQ3hMnime5fVXnkeX0unUQpJmKKRHOrfvujjC9X0ScJFbE
	 1fIPBuPQl8t3XAxaDOa73PLn3/OlS0fqzC+L3/4m77Dcms+XqlekCWsP2E8VANlgD4
	 PED4pon9xUTf4yLtM6bFrkY/V/joMW9BBgbO6CtRYL/KLsW8iqtwVlwj3dUF0Bho92
	 Mgg42gsJypyqL+kc9JX1sLGxeoLyeFYIdaBnP6IVAMpXhBd+reePI6ZOlEnzML4ZK2
	 MDvajX8th4cAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA4ECCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273699364.9699.11780213408382004140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1850a8715c1e7b41315a0735f0324456dc1e383a683e903dbc23a20f97673a37
Date: Mon, 10 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762736993
