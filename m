Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6855554645
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721307323; cv=none; b=az7JOJ97W6kSaFYQyOJMD0zctdb8QXsJv87qjgUfUv5dWkLOMbpCOKJMACTr25VaIiMZNseQ5Cd677N4axLdqLGEL4Sd+M6k6ItMaqr7GZY3NACrTEMapXSA46LHOC96eTvQCzIDzEwdFtSv8gqMDAORXYbVL4Yfjorty/sKjEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721307323; c=relaxed/simple;
	bh=NQRlStKKTFji4Ugl4qBljQpmfkX0eWxgb50Z5U60qB0=;
	h=To:Subject:From:Message-Id:Date; b=Mz1J68FTaUl+smrCF2XJ9CCdfm1K+nlqQ6a57Y99NxW4NjfoET1+vBdGxEg4n6V5KrTy8RJdls11kW1p7eRaoUdpXF4xnHmlMApvJwQ8DpAdPVnfird4bIU7kVkSrpWhKhg/6ZcszkPvtqimHfhPya0d1HUecAFx2C0Oqgf/YeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4WT5R9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4WT5R9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8741C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721307322;
	bh=NQRlStKKTFji4Ugl4qBljQpmfkX0eWxgb50Z5U60qB0=;
	h=To:Subject:From:Date:From;
	b=n4WT5R9IC+YEOagk+w9DKpAvcN2IGdYVjW85de8YXeMNB7a7inkdps4ta0aeRGm/L
	 w1K7bJ7LU0D8oeSJwQDNOgSz8qE5YObGZ4D2QzoarJ+EI7k71RzkAJ9uKfAsTTNRv3
	 qJc0ywsGmT4zjYVITj1OOFDF6q2292uosiqMAmESXRlbF4WQGKVsY+z/JRo8nFzAVP
	 YSDH2aBEr4UMxl8/RgcEGslyR1ZBkfKQPdGNypKAMzjtWzHE45g/8khn7J44zfsR8B
	 spJfJoXjl3ZPOVj0wDosAKtrxES2QTaLLfdodn/BxmO2RMBUBI/mZYmtmwqkU2uOzA
	 RiBlZE8f5gVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C015CC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130732277.4842.9301366283823860719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb887b404036dead9ee5c561f5c35579cc2de22d436a10f5e6e7bddfeb7cd117
Date: Thu, 18 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721307322
