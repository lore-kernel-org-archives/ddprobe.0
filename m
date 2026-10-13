Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50422492187
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791916234; cv=none; b=e2HoJyoYT8bQDpu7AV8IvZdUuul99nmor3zumgMcWzF/zDp5+lccochAKzkDkkmuGjpe5bnhto+ACEvNpvtRYn733jVAVXnhtbLYfyjucINe/1owuQ/lfaNPQesL43+ahR9ayCpCXy/UqxS/yPA+T08AZere3lcW6DlvW1W2WY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791916234; c=relaxed/simple;
	bh=88H4almSwKED9yx7nOSVJZjA7hpY8sJWQT1retMF014=;
	h=To:Subject:From:Message-Id:Date; b=MTSkmJSt2qE6NxCHzGDFuCDJ80i4TD2jrnAudcOnh4XGjzoeSxg6iY91s8PuyBNMCRytU5hdSSiuC1Vbuq70TjsHYMstmtUipP6rWrerHDpT0LAyFAr3Am0e/gX7niTAFDzJf29dtBStoyXWWsBmJOJItiTTbqKaTwCT+5lp7lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCZGOsxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCZGOsxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC81FC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791916233;
	bh=88H4almSwKED9yx7nOSVJZjA7hpY8sJWQT1retMF014=;
	h=To:Subject:From:Date:From;
	b=fCZGOsxelfsXYXzHY5UpLimIScP/yjsGyRqVAOgK04vFzx9qfke7d6sd72+dwHQ4v
	 bc0YaJmJaqRiCFjRutuL8O15JfzACLnawaDO3gl5s8WwUSoIYCaXhSMiDBrQva77gm
	 HbZlfiNdeB0ZkiL6gxp2y+cCdKlGW2RxrYWhjFhJerSA4YUNjFvP9jOshxTFvq/eR8
	 +5AqnDBm/6lf4EVRqGvyC7wH2z8eMoqCgweR8GaJ5m5hCMKD0YbvnBdbVQtNlQbLqe
	 p3O5EyTtJHPhN3dbv6gc0CcdUFluHeYHLzSUarAdLav1b6POmul85hUXVQxzjkw4bF
	 a73KutJcoexBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F83CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191623371.685.14078089009535176158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efc51d29bce714d5dc568e56d723fe6245835c22a0f053afe09f44c09abd16e
Date: Tue, 13 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791916233
