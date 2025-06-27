Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A6328CF6D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751062195; cv=none; b=T6OIdFewJy6NYq2b0J8C8Wivi95Ate/7b1Scl3h+qN3AI229P69srHDbQW3LtPHssYAIxakofiJi1CaK3KFylClEIeCegSiHTnJTo+i9wnO0QBkKGAkWLpXYsrbd791rRmSLUt0LpbGeYw95QYNOG/DCZQH8XMDHnxzSTFoMBaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751062195; c=relaxed/simple;
	bh=56plHDrknbFShbrv7sDjee4Ayccied9b/HsKgXUL6yk=;
	h=To:Subject:From:Message-Id:Date; b=vFdmsKJ/uX9iRWcoy77UOfaYQ5mDgzSFEq/KJFZfNXhAuXZgj0SVRWB93XG/IIFehjUwTkIYhCgwAfsqoTBKXn7+9ZUfuMat8W9wgsjvzMT1W1dXo57OuwYC0se1RncDgnGB4jUiSgievZR0l9NeoLwh3ym8JrYWKyWAhL67lvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfOeT33x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfOeT33x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78AEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751062194;
	bh=56plHDrknbFShbrv7sDjee4Ayccied9b/HsKgXUL6yk=;
	h=To:Subject:From:Date:From;
	b=rfOeT33xU8RqYO3pcBSyNFqovzFprQEkWILOB+I8MT1CUzQbKCg6W8jQHO2DDVrjS
	 coY3wOR6SoJVrYUJ+oDpWpTzvttFDjWb8pxSMt3qlb+CswG6f7A7xmh28WevAFgppF
	 7R70dVFnM/NYHryB1r2udrzmnoD8EyxGgDa2kibOnVexQlyE5B3+B6TzNgSsFKBoGY
	 8YHVRXHRPhbWKk7Ekah6no7lsDgHDBk8df7nIesSex6RMpXt689ZbnywSRfUyX7zZG
	 B8+cTZ/uLLNtvTEZjjt24IQ8mCNuGQkolYS3mvS8S4ENMYfDQCcKQzWDTgF0v5hLRY
	 6+avkP3vdlu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AFC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106219358.14107.7037634830908912129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fd7e4f9754822e07dc0d81f50ba442b1b93c2f588ee92b63ac2a59ad097458
Date: Fri, 27 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751062193
