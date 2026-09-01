Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561E0384258
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788224434; cv=none; b=kWAe9MIwOzVkeNMy1oRhpm07hlIfjVdSvm5o1+QdV6Xr3TT/0e2hAXZKo4veUc2/IiMv1WgvASgji5/GOZCAMR94RzdgqBtPJqA2FQG7QleHvIEO1viX/fQ9/FXnOJYdSXAV1AveCnkIxvhSwUQe4pCENLkMyuuCBs4knZ4HgvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788224434; c=relaxed/simple;
	bh=MxqQIc28OqVQjxE06/tFiEJf1Sui/tybMvMlzMoXIU4=;
	h=To:Subject:From:Message-Id:Date; b=l+AtHX/nRwGL2bEB1nN22e7+vBCveA3fB2WrAQ9se82XOMW1w2fYhmGdGx1jJn+T+d/fUe+bV6WdyVfAiu1Pgs+aaAqcr/4Gv6Af2Lk2xc2vSR/hk6e2MjXKeiCKbmRfHY8GrIvSB4O9JmE95j/RwJhQcQypMbhCseVPd//eqBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvmeVvkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvmeVvkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4245C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788224433;
	bh=MxqQIc28OqVQjxE06/tFiEJf1Sui/tybMvMlzMoXIU4=;
	h=To:Subject:From:Date:From;
	b=LvmeVvkZ4wZ3mBFyoNnavN0SWUcIZTXqieDwo6UWOi/GPDBvSDhVE5c+vu8kc6/oB
	 WtX7+8FO8Zg99nX/I42o0R46SEhG/ck4w5I0G9X0gctxS3O+krGKuQ1JSheNgiAtCR
	 g1SRgMisep2W9jkNmPLzilKtikwjUmNRm0r4d9cOv64Q+v5+2HOt0Isxn5w1dfl/V9
	 Gr37Zqc2z1uivqb+ONkF5xl+OZZHKsV0cDTgWgOoXSyAHK+8Gov2vQ+TmpgrCiBt3V
	 dzfm/UvF1XmP7xbAeWz7NvYUH6dCci2csKD0dg/NsvqxP8DpjkRK4CtcqapSG9wiD6
	 2kRci059Nl/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1636C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822443369.27389.6563554749811082993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27e6079da0de6bffddfd13b383e283bcbcdc35252179ac7de31b1e5b7152870
Date: Tue, 01 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788224433
