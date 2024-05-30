Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDD218756D
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717104863; cv=none; b=Q3z/JgAuSHtXQRufJ2CHDIVUz7hi4f+wgrfwJVMohns43nsjQu7xiNP6/aptitXNuOpM1d0UjV3gPk3YlxqQcj3+Yc1GyxgQfkFnBLeQ/i6Q+V4LaGonJwrWL/ezRXE8nSBsMcT4RH+WxdRDQUwUiUHBNfss0r/3K0P9auENYCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717104863; c=relaxed/simple;
	bh=hf2D65XG4+D1wzUjyue+0UsRipQEgwBdHf0+uEfD1KU=;
	h=To:Subject:From:Message-Id:Date; b=UGo65EdCMhfLO4LaKGHWOzfXC5GyKWEmDESl9ubDohBb/yAy3GUFawDZpfXsQoL9JPdGtiGqd5x7NckncCa5f7XwtznGWnDKTChLZ91KQ2MOBJ7iqSfXr+diMESRlYKhRjLoWIyvf/k8Rwll4wfF+BnrrP/A+NJexRQta8QzMt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/hgTa27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/hgTa27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E39C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717104862;
	bh=hf2D65XG4+D1wzUjyue+0UsRipQEgwBdHf0+uEfD1KU=;
	h=To:Subject:From:Date:From;
	b=Z/hgTa27+8wXzzkMvJ9ZCB9E1BaPIZbq/P4UN7VPDwiV8Jc8WwINj+/94Cqkmsanv
	 iGiEHLYegJCEGmp3EjgLzgOynSlX0XfFmPXN2uRZc3nBX2EVnky5Xq2whUP6R0nwfY
	 NIGUVYdzwBWyuHeviPd+DnqTXgeflmo7JgbSdRIsLmm66fsI2WhbrgNobfZSWvU5BD
	 tCjtfbiIZJVNhqknOh1Me8KNKKiFhw9dWFNZkMeqGQ84DrY++0NDHCg4XJSeXslszx
	 gX91X9/YXOTLGEOZMQWjfoVCDjLc+v/mFA7vXnu5VO0ROfxsLm2c8h5t4pPwxxn3e2
	 NfimZztkhWXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C422DC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710486277.23726.8332241004252735724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec6cc012a152d70e4f593eb67816761b7b070fde01d63285d8840f4a36c0506
Date: Thu, 30 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717104862
