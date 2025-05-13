Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF871E883A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747127394; cv=none; b=TRVXQYepEt+yxJ/VfxXaRtjicBsDLram3ZxWP+KneeDFQR7CtI8dCv5qwcsCOeOL4G5rxjQNaGVMgluaS9rygf8DkymuttGtSKwNC53U5O6g3g8fOfrowfonfLY45dH+Axx/aFFXRIc62t8+kdlIlotK53vGJoB2A0eB4pI1dVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747127394; c=relaxed/simple;
	bh=Niz/wGhaCE7SEX5tTgU3f3XVxyjoSkaBJvgoahGNM1w=;
	h=To:Subject:From:Message-Id:Date; b=VbTPGmEUO3BdW2J9kNQB/tT8THLifvZlVl8VvqyN+U9L657j9xJtuCfgj7z8gQ5iCFtRjf4Ynop23DqxaJUKot5d6WmLAi+6pfsdvFc5Iaw37Qm5LMDEnC0xHwupI69koJypWE2D+XRjTXylCRRqiMJwfn7UilCkd0L0Pr5eIl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hm3PLO0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hm3PLO0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747127393;
	bh=Niz/wGhaCE7SEX5tTgU3f3XVxyjoSkaBJvgoahGNM1w=;
	h=To:Subject:From:Date:From;
	b=Hm3PLO0CCRUvvJEbjwcPwhbUeOZdgwKKkRF5mdgiClCWJxACZSbPlpgZMR9kPzjbo
	 ZUArQhNaHaRoye5R6eTB7rmnclqDYwRLPqxYNeJt1bxKf9BCPJUftwk3Ktrp9MdlwA
	 WVXI/bjBwujcqsj4PmYeqfSRmBBwb/dWOqq4Ui9TMiyBdkz/dpWnKfcnvlo7DtAF0K
	 i2DTUxCPwbMVwxpIfOYPBrQW8PaKQjikBJ39GtDH7TOOGgVOqn272UJp5+nuXInFGY
	 pygcRmIvt2M++Q+M0ligRHTPK9DqCwUCP2ktZthyT3l+j0KJ9l9l5u+qlpmhH72twW
	 J9ZASV/Lp6/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF19C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712739357.9847.15877287103105526450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ad07bb8bae8094840fcaf4a1692909f4eba020d017616170c30daf6c1e139
Date: Tue, 13 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747127393
