Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1116C33F593
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776118054; cv=none; b=nvv1EQXvAj/Vam6Pp+wZ0QK/GUp4ukNPdqLsCmzfMEPY+1jBMDc5T0rN0dEZVMvnxNI+oIqYfVavlw/VSEWRlIM81OS3iEU9a60ddnLZX0EHheIQoUyt0bn1FRkFDTF1IK8iyJNeVTFB7Dqdb9oLk7th2nIcE53zi67/4syPRZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776118054; c=relaxed/simple;
	bh=Z9Bl/R29XdazTOaVE3tGf3ut/Qb3LbT8Cqcu5fDfpzI=;
	h=To:Subject:From:Message-Id:Date; b=TTkY+W6BsPVQ4qXt0y+zplnSi/CFEYlkirYprD23PcPpevI78u4aCfMwv0nnlAXAj6tFD4ihBT5Gl6ifiRqNR63J6XXDx6xOEBmDmpfo29IRuqQvDOQwb19WVWY1BY+ZRGf9p+JQ8m4NiLnonbbE0FzIeQvMUodwUhro7LBkric=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+Z+y8RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+Z+y8RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD925C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776118053;
	bh=Z9Bl/R29XdazTOaVE3tGf3ut/Qb3LbT8Cqcu5fDfpzI=;
	h=To:Subject:From:Date:From;
	b=H+Z+y8RAYU4DUpUQPhEqMKlD2jDBTtMsz3OEoseWwsNdzpoMLfc/d1gBFtGepHbkx
	 RyADN34TjbC0VxZcwZ4vMXXvYz7sMr0059OIGV74N2GbZHeSNpfSEkUeDfwT8yDaiB
	 IuWZS+eY4JuMiO/b0ZZWXQBxAaNpHB3eVzLidbxz2jCNj0ONWtF1UHpAdQ3D1iTsay
	 fDLLdU0sOLZXPjR8KK/OZ5fMQUnN8oowtGNhYA0JSahFx8CPX0ovqxJa8GW8ITWO8N
	 YMPcMk28SoMVVwte4/dAOuik+CLkJoYjq9RTi2M5jakQmAbkMBdj2DahUGw+yha064
	 R7Nfkwjasuj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC2F531DB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611805369.27157.17055994707307310622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7330d8ad7d008f9415ef2283d636fce9f06cff9bb9d3f0970cc3514038204870
Date: Mon, 13 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776118053
