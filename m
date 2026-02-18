Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D2272803
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771377894; cv=none; b=F8WiaRzDGRebVe+L27dIGCYEmBCrmQDVhpqHhIPTnlj4d8ueuf0rsGigmBpH5etm4be2fOMnxHxpMOxPkib1Vn3OFXd7ShoMGM6YAHlf3/OB+hKejtbDLlI+OleqQkt6fotrc7/d4A5kq89dvSH28aESCRLpXwa+ZaYWqs4KErg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771377894; c=relaxed/simple;
	bh=bZ9GFKUKKLxvu0UIMMWt9ag9IW7Fi3x8JJhGFBu1+CY=;
	h=To:Subject:From:Message-Id:Date; b=Kob4LULJirOVqmGoIjdXdX8juFBGFxI79fnzEtfe2CNUvFzaiW0Wys6b7xqeSWfpUFtzSv95cddGanYBYXNFNwhDqdfCAyEjh0koRnVcv3B7cH/HDi5Dg9vdmPbggZqeoc1ue/AS1wlDUl8HhMKaGuFrTapkLz8B7LW/ZgTJiC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiVAP+GA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiVAP+GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8461C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771377893;
	bh=bZ9GFKUKKLxvu0UIMMWt9ag9IW7Fi3x8JJhGFBu1+CY=;
	h=To:Subject:From:Date:From;
	b=HiVAP+GA2n78iEkXZJLkRF48YsDG2LaAn5uUKmpfETaOV45dPpAXfIOQKEk2zoqg7
	 olf6kKONoramxuAjWu/dY8NXvYe21A9LKrODPaCZXco8t7KDLWD9kFgg2FZc9U8Ai0
	 Y1osFUTgAq3buxGZFOmpMg9ztgucZo8xgdyLRCUfdLutFdZkjYP+lkJM2K3XzgFYRB
	 g/5ya/f4O7L7tXC+SurypW5qqCW7ksTwZR+STXNEqMSNvsej5mjOhcSFyNKQ6drbtC
	 fl7K5M4BhlOEgqva6l+9YLHzhdPH3Lzzqj9VIhU+9/NTgDWc6iQi1MnvVqWPgewbj6
	 zHYiNx8C3YIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95838E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137789360.26582.12753947285755446370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29b777604a2ea45e692bf3830282660e85846c13734141e837806d638ab9ace
Date: Wed, 18 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771377893
