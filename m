Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F917A2FB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761956394; cv=none; b=Hh1+jxzpgXoSodLS6zva0UV2rrRMnR5ZFXABEpFPzdH6TAzrJBZxbv20OG6PnmwO9L97nC+7wtbLCKofI2BxWfgRkwyU1xOBSlo7kUhcjmBnD+xDvxNJ63178cIarjLf1NFkH9yFDJB5G/oQHl1Xdqw5Pi+p34SssTyZT5Lc3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761956394; c=relaxed/simple;
	bh=hEJmqmaPEjX4A5CooAan4ln99tazSM9NnLeG2unYmUE=;
	h=To:Subject:From:Message-Id:Date; b=sgUzoDIg7P3xJdQrxC8w3ExOQcaxmtZozpLZwnlqOwId29mdX4mTlfqB/c3ivAA1uDHtHs7n7i91uy2joWwG/47DWDiVIv0Vp9debf0IK1RW2NNxCmgJ1J+S7sQQTyUl/SfnHHSrnR+8LV4NiRy6/wCnACuMmPDA0wW+R2rHbPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRP+5mAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRP+5mAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB10FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761956393;
	bh=hEJmqmaPEjX4A5CooAan4ln99tazSM9NnLeG2unYmUE=;
	h=To:Subject:From:Date:From;
	b=lRP+5mAKFqKxSbq0OmFvh1BJmT5UABQKsC/IptOWfbqVvLFFRs1ue9BygHlY+cXhQ
	 ia109l/Uvyoaw8T54wh//itQWeywJJzmGggJCetRUF072wMngvaXwoFi/QJ1eafCtS
	 O9NQbW+yzLwXE6k8zpgf/2Ul1fxp9ukfyMYAZHEZX4GP9ofN9Wi2WXhUEJYWIUn5ia
	 FQjW3+U8AhX822MWNhxQV2MJ5YiDHPz1PcifJEKuW1DT/uaarVx5Sc62llJUuHbi1W
	 hGfp5rWXECtR9La0KpFFJaX/RJKTk+AjWgFTMyCvKonm2jLwbwKaf9E326822nQGws
	 qSMyxwTvmUdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93188CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195639359.27444.8931273936981919864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3088f6105f0752fbf538d0b5a290029781ef909c95cf45fdbe4028ccbd4475
Date: Sat, 01 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761956393
