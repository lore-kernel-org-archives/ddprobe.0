Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED62C36C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705886297; cv=none; b=hYcYvLyBrHNJirJvQSt+Ii4/YG2FOnNl7/d44IVsKdY0qSoHSd+YINey9/ndwtaz+bc0MZpZq73djP6edmQO5DN1UoJkpCobNH1xddrOhQmht9we5drc0KBJ8aJB1ht4Nilkz3tjM52/x4NmISC9duuvTsYFMCtzGbwM8DZ3Uow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705886297; c=relaxed/simple;
	bh=W+1+pSYKpa9QILOTdcb1q3kd5uxGwSWKF6587+UbSfM=;
	h=To:Subject:From:Message-Id:Date; b=eUsl+7nj85sikFJbgru0eZYoEEk7Js5ZAWsmG4VZbFDhUvidQfc4rzj100c3OzP7ru+obDn7dMtJqfH1IkpV0FdWxH3o8PdFqQLxgfgzCCKpYsaxhg51wlztRLlUpPrAl/D41wnoFqq4Z+ifUs5E61NKsaJaAoGrg0eX1A6mU3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7PQ43II; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7PQ43II"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751C1C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705886296;
	bh=W+1+pSYKpa9QILOTdcb1q3kd5uxGwSWKF6587+UbSfM=;
	h=To:Subject:From:Date:From;
	b=a7PQ43IIXWBIVYfPljRX/vpPBfaKyFSueCZM3TLQyVkH5ei4rSs/T4eSpXq0ujA5Q
	 RVcusr+KodFZWDuceVwh1ZJ8iaTuE37L4wdV4NwbMox1qrFKfWoAjYHjR8vLRMw2yD
	 bXxlRQXsV6Qex6mtlDbmT5YGLH0Jkgn5lRdl4dtjcnrdbP1GZNBenrTlZ9sx43fI8C
	 C5DAvEoITGaZszaYFrJcq5yZf8TaPF8xohMTWPMVfVxLXzkQcKI8aUQeRCMjTRhrIa
	 ZPeqY1xXDp5UorAHVQbO+9YWXU89DZzbI2aJhlrxaYIHIQqEiJV574XCXge8DL3ja4
	 fO44yp5mQYAoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9E1C47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588629636.5734.3157300847430927686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8075c0a91bd9743af411ef7a370b720f82c6ca0ade3a10da3783ef71ab8246d
Date: Mon, 22 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705886296
