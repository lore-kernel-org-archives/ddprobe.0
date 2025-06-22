Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F335977
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750634394; cv=none; b=Cuftc3VkWnhNC0umJ2ddyJrQKS+3jXTrM6VBMxB+O1oJ1Tr4Qx7dfwtxOxIwBucnuBteMHzqNyLwclLepj2I0NWyeMN+SKs/wKSoLBco2JTZbLiWb7qZzRZ9h/tNYkWEG5njq7obJySk4xaPJv2dzgdI9mkJ9JdvShDCF28KeLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750634394; c=relaxed/simple;
	bh=2Xertllnv480pu5N3/gnUE+urcsPyuFPWXNh6ohK/hI=;
	h=To:Subject:From:Message-Id:Date; b=oSmqZGOzqA3ZMhYu1t98XE1HKhzcS7v+z/C0EIXu2X9G9INWsz7QmCbSHS4yDGC3dCoLhDcZrqa5JVWergf+btvomDWE8BaW57XvFplPDLm4ewOZjHjq+Q+zdUh7l2VikjCBaJY8W8h24EGM+ecjKSPZjIVyJ82Ql6jucBxqR/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yboym9ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yboym9ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750634393;
	bh=2Xertllnv480pu5N3/gnUE+urcsPyuFPWXNh6ohK/hI=;
	h=To:Subject:From:Date:From;
	b=Yboym9ksowedVAJ9dD6bWpoawF3qs7TRBIxO9gGkjjWasZwqav+ahtTpVcjGziMK2
	 bz3X3R2A5o5WW/TCtYMqdgVjSs8hlQrbPCdEeqWo9XNCJod3XgOtuxSHcMdLRLeCbQ
	 75g39aG4MqqqVUO76e9udzD9gKCBHqAe+bYpaAWsb5WgzkHYPJCZfMzwF5UywNalk/
	 jxQdc+teDsxFJYEgiOuAPaStmndJlLUWphIs3UtjKs2ccyEDMymRLhnlxydEtKjCOV
	 CQfcy/fBR7UHSFth0DgrxmhoY1w3J+6av/NoEfqgZrF60HY/T+zjUhOY1Cg3Fp6fPX
	 mTb8BjLcSqZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91925C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063439358.14688.15046972823751499096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ece616d4e311c1dc90707482886394754fcc19b50d75ace3c4c0537d898289
Date: Sun, 22 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750634393
