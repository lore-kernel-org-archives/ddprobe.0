Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134892DECAA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762377594; cv=none; b=qIuJk4CWLAIVhInZfgcm7eoTsODoBPdAZw4E95lkW6R4WDvtI5JRxIN3Jz/V84OgIaOJPaDAknHmeiVYjht8/Hu594lfrWSaSPWl3TdDOslakMXJF/nOhCKLwTJtuN3X16OcHSiuD49/VHX1tK6Y6SNc7svgi3YxU2GkhBJwzLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762377594; c=relaxed/simple;
	bh=aCt7RVAqvbDbtCC5K/zX21pMb6MEX9xnJnKqpY1FX3Q=;
	h=To:Subject:From:Message-Id:Date; b=pC2k1E/4fyP8hGaROhF8dGZGKASPdB2g9m3scf3obFMoZXHYqJunRcabOx5snUDobHth2J6pKSmmBBr5PzxQ1VQkZ7Dz8JJTbUky2FczWqIh50WzB8cZA5iXN4f1UXZ0/23CU8feCb4fkZtg4u2rzLbXTruv064aZ1CZ3Z/nt70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6LvFCTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6LvFCTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA39C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762377593;
	bh=aCt7RVAqvbDbtCC5K/zX21pMb6MEX9xnJnKqpY1FX3Q=;
	h=To:Subject:From:Date:From;
	b=O6LvFCTpkLGVXy+BKrbAWPpoAlJparqjhFlsPP+wek39VHdpw5rjJv1QHTFsvVTWL
	 D2CutDY0TCmMAolCHbGho2w/e2U0FT1X0Vs6R4xzj6s/vFDoj+wTGmH3ZcDz0HItEY
	 107mfs9YF2Cr2wbW4Efwp4zjdA6jmJPInTnJQBCB/g8wj6qHIXSr9p2nqPmd/RNQ+U
	 QdRSlJNXV9oOpWFGFrZeHHex9V0yurYvY32/keZlbn9w4gd2IvBHaO1O5PfPB9IhBx
	 oZBq31dy5X8ISYVYD8sWfczgja9zj1zy+zLQpDClcv24+ngjMyZexHuiaAYQMkLoQU
	 dPCEk3BaOH5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C7CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237759357.19645.7409483235905333508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fa36f7b141b0c88451fe5cf6df1fdca6d2061bcf5f6c9c4d6e6e2cc664a936
Date: Wed, 05 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762377593
