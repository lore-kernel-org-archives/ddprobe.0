Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E607686AF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712660297; cv=none; b=Nb7LcMhtcZr+8d++DV2IJgcDMTnI9ydfixXHTeDRsZhC3p3mk1NRJ3FyYCZ6aRvGR+fqlBabZAOr+RyZzT2TFsoYeuNUIHKKwFpIc+HaJO9Zcd6eQ5SVdC0gsD7WMDC/QPWHMFqAU8vQSmN/K7uHDgrNVhh3UAKoOPzW+9IteJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712660297; c=relaxed/simple;
	bh=R2+12wJBR8hoHEhRFduSCZpRFcwaN6Lc05xQJRbOhX8=;
	h=To:Subject:From:Message-Id:Date; b=OiCcvD3vUpE6b3hdAG3nOGn/WSEdYoVVH59x9njJqNYDHO0PLJ12AERClzalv214BmQaQvyq6rwH+i8IGr4EUVsaus2SVuoIkW5k1GyPhKQLA7b6SGqAPNF75gg3FvEljqpqjNgs7/1qh71NpgNuWigqWH+ZwBXm8DSerNMy/q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TifkSeQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TifkSeQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFCFC43394
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712660296;
	bh=R2+12wJBR8hoHEhRFduSCZpRFcwaN6Lc05xQJRbOhX8=;
	h=To:Subject:From:Date:From;
	b=TifkSeQdlBwkfZFtyhzF9IQNXA/ubLoki3QPFsELl0EslMAq5QuNAa4rqeRFWSW3T
	 c1pTU6h75Sqs6HEcAhnMsLbqkRjdQltHB/KirStVvn060A2My1le7beZ/zOIE9s8W/
	 oPWOSTooZ/sBOw8lzoQtZyDXxgTD8BY3Xrrpgc7aS4BqsihR8Lzt6Ig5FRV8mzAOmD
	 DBT2dsbiNKl70UMTewbh1PvtEOkd70sgerM/icZfTsNq8aadKCeGNOh2oCqPF8X+fp
	 TYQ3iGBQO9pnzfFhGmMBRKMFptkR7kSfMGB9JmcVH6UEpGrWMi82RBEg9QFxjqNMf8
	 5hP64onMz3QNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD70CD1299
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266029643.31197.9066415552538637374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64aad9540cbab0d8848eaea6cabdf2326f1743a14a491254794ed81f86431410
Date: Tue, 09 Apr 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712660296
