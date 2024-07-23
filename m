Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291022064
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721700954; cv=none; b=lPb2M/hFm9IYwkUiir+clBLQtE8JrVQ1vuENkqsfew8QnCFD3QA0XLF67jodqz1xNvyi3gdLMriAc3tkofIqhojmQ3GpblS1sFlJ0o7f2yjO8ROhKfmebU+WDE2N/O5tv2WdRaM4C7Q+5rk3RuPsrfR1kWAr4vNTX9SjaY7i+ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721700954; c=relaxed/simple;
	bh=DKHVLPCUcgSW4ZEgT/0D4HNimQUcUy4tR+aOLr4c3Qg=;
	h=To:Subject:From:Message-Id:Date; b=Ywr1JH/EJ5UFuWoha5HcEGJIuwzjvPXrYR/aHqJgkjUzlt5+AOq5UrKrpJHAl9raSQ5HcLkDeVXB2NQe02hZ0YeHgh/r7F6RAIfUt5aTrDa+uUxLg6fIQffiYPPI60UWIk3awGbtMaGRaqCXKBUJ1dQkCf0qT2fwcuiR+h7es5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qen1ami1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qen1ami1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCBDC32782
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721700953;
	bh=DKHVLPCUcgSW4ZEgT/0D4HNimQUcUy4tR+aOLr4c3Qg=;
	h=To:Subject:From:Date:From;
	b=Qen1ami1gO7EqJ2ZzttoUQn+33W7aIO0a9R4suHZzNlaPxax7oCUm406TtMyoCAT2
	 F1Uop2qhS6kkzkGJVSF8VHPlXe/R+8CX9C4EOO+lkIxWh0rftgvd3t9J+i0SOtCQ0l
	 GpxuS5pZlNXzzZEZ2qJQVbvKPl/R0GliTL2v8MftiKi2We+JWvgAtXR3Z0eXyutuaZ
	 BTtGhexOSnsjAccpj0Vsw9iS8l2UUtTdlZFseyRSWMpe648ZHHzHvamxhCwtrWEbJh
	 gFHfJqLcbV8jIku3ymqNLywcFfzHdLBCfYO9cRBene42PpN5cFLCXB55BXAOxStQZb
	 tEsG5uetIj8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE47C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170095370.26940.16482267434568301411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76414bd70b38b0abe0356ac6bc7305716dc6bfec5ed60bee322f65f405a32605
Date: Tue, 23 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721700953
