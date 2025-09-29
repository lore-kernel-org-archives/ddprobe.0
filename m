Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24862A92E
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759116595; cv=none; b=NOR2qnh/C5jhunLxQV/gxynSFbprXzTDeEQ01W88SPz6/rWj50e/mPXORe2/t5zxX8/ruTjtWk6sRI1xJCfQXCP3CoA4BxxA8GdLLh4Idfoxacxdqcsvtxsp/NT0eEaA5NaEzSNrFPE+MpV/AjM6eqb4bMVntb2UxE24auFF9Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759116595; c=relaxed/simple;
	bh=CzztdgEJ5sSG6tlJx1SjnVyXT12a+cMnv3suS+9YQuc=;
	h=To:Subject:From:Message-Id:Date; b=ba4OGyLVrj+K1h2j45qOQINHmZnEde2Ltz7+EIEFxy+OPoH0kUPwO9rvJNBGx7sUxv0+yCSZ9IifDSx4Caqq6/iayTtJ0XPyzUkdc2FD+y6jrtiLwDnR6HQQ30pVQdHy84kxQi6hzA13DtXeXk58ISd+yxgvXGKU2ayme5Rhvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyJ+phB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyJ+phB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD30EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759116593;
	bh=CzztdgEJ5sSG6tlJx1SjnVyXT12a+cMnv3suS+9YQuc=;
	h=To:Subject:From:Date:From;
	b=JyJ+phB2lFc2bOkYlLVVUGftvra//oQ/0NtFfYxvcashfeXsOSVrp5gJldOuMYwNE
	 YE9Vg+KTUfBoYdcP655dBHdeVgmRKnIC+c94PM+zEnziCmIm7GJJAQArmBlkC30sXG
	 SLVWjyyNj8zKInw9douun62A+w9vEHaUKVRnRvPLBfphQ95cxtN455Jpqatd14TCc2
	 RbR5/MyWM1eK1a2XayZ+ffHzCa3OFuaK/Qsd8Y5f2NauLGaYLCBEQuZvwoB215vr6U
	 mAKKWPSI8BVEQsjb95Y9+7XyDwGwC/LERPaxy9IaiQBhrGDQ9C3mEA9PPOUQfJ5PK5
	 hS+HIq1JOAN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F88CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911659358.11747.6812985811331225901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19438b3836d9e82dab0be0cbab621b0ef161817b6099e33af79d5eb6b4298a7
Date: Mon, 29 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759116593
