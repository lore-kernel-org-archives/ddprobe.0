Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500FE242D7B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783457914; cv=none; b=mOcgeSwGUIUO+rrXkpfGP92XZWzqYdhn9RjtxxjYHFB2YDPoFilmvZ43NX5iFBy+k2yNmw6AlcM118yBS/NSb53neA+vl10pmfD3p+KUbHTfv9eZc+Q6MHEZSJh1I5lKeUUEspxKhmUa0HBxH+6UnayslcxHmCrYiWGS2JBKHP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783457914; c=relaxed/simple;
	bh=CP+nFiPfpHTeAuLVk0V28ON2yzUscAzRkW5gtY/EL3w=;
	h=To:Subject:From:Message-Id:Date; b=Mdjqz5EbDjWXGWxDuWs7KrNm/2WAMUE88mCLw0AeK95DPhj3UxS5e+F3fqqlvoR5RKBX9pJk3L0vBWh/OJ2Ap1mDSJ0K8h5s1rFUsamoZCOc7EHRv/PledqlwVXqNKMN4l/C4ITOObG2+fUv0ZhaDkzDtd+kMuodTLPacsuj8I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJCLUGhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJCLUGhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D8DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783457913;
	bh=CP+nFiPfpHTeAuLVk0V28ON2yzUscAzRkW5gtY/EL3w=;
	h=To:Subject:From:Date:From;
	b=FJCLUGhUa1xyCGlZEfx2noxzGZcJFz/onEf3prnBwQf8vIfNewNUYFiEKI7NWeJFa
	 DwPsWYQ5CRtExKBm8QTbgjz9j+cpnS+8nyOHRznzAL0qLPJaeQyu7OB5rwjfpg/Lg9
	 6sSUNiELo6ol5maaqqzZ4nhq+vEb2SYSMk2mjP3FuHebsxkk0fnv31f5vnD3mmzijA
	 6P4fA1h6E8io/J0ojFiztxK6D24n202Cln7K3NY1WDo0zuTEpDyq1AlR5Gpf/5OOpk
	 nwG3HSHXVQfLlN3UM4+3YIa4/vN2Uw7LrNPJztxixWE7lHnjT2wcx4RHe4FuZwo9K0
	 V2iVJQOoLCZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80B8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345791368.11211.858478179994635448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a23dba66e6301810a81f9e85b4b953d5974b0e8dc56914023ff5337d21ff02
Date: Tue, 07 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783457913
