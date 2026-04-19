Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D7013777E
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776635854; cv=none; b=THnDk1nPUv1Fi2NqR8tNUg0q/CgtDVVnTiNHfZaS+2P4I8GCZF2D1h9kBCf36LBwvv/dJpnVASNXVwJb7WAU3hB4kfG7qbFd79ROyODUOAyIRtLlCC+srcqF+Z/wCZtUxElepeISj9oijq4YjqT6X595tThWqBMYnj1nsHzMqls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776635854; c=relaxed/simple;
	bh=63iYps6JKaD18Tj81EPhyEZhWrpc+6ZZn+Q/BkL8AnQ=;
	h=To:Subject:From:Message-Id:Date; b=F9DxQCT8MyglurSWl7ff3g7D6gGIH6VRudeyx9RDaehquN5C1Xiu+FpHZb558Loutnut/x810Kzn02WnKYyYkNbAU8wfskw05wfjLOb9vsZia4ThEaBbjUDDFAKaz+HcuYCBOaRWDzkfdElmLQZ044t84OcbSKagHzmfBPMTwdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/2IJKNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/2IJKNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40C6C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776635853;
	bh=63iYps6JKaD18Tj81EPhyEZhWrpc+6ZZn+Q/BkL8AnQ=;
	h=To:Subject:From:Date:From;
	b=p/2IJKNkjPDGJt4DARXNinBqdFoexCXTjSKLTsepoxYmqmp3KenG90M4bycs0rblr
	 /YSw0FZ67naN+nkUenLpUms8xRgFuT/vhFii6dWrp4Bm7zIb0d8X8FbRkebl02GLSV
	 z6IKoCQ3DBW3hExLFPikKHmiYqBOGUpZ15Ufd1UwZSZZfdpqx97e+J6vDc5SMtCwu4
	 bXA37IXZlnR2qQOvrmc+KjIhiYAVZiTdP205izJEa8VhOVH3QfmNRDPsBChxRF9mYP
	 Ws7tfB6+pa1He90usAe7N1LPf5z1zHqjKPHbvZ81/RMP1XTVTVC2fvGY7AltxEba4K
	 NCtQwCKVCEvyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15D5EA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663585369.31072.5016325965089007134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ce0b458f71ccb893553682c4c7812cf133afbbfc4caed3aa6b4ca5216b228d
Date: Sun, 19 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776635853
