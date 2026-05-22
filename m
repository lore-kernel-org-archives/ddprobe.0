Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EE2E719C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779471154; cv=none; b=jE4EKB9hbMKbqrZXXK/JNC1XdESh4rnr9ury3UdbTeQJ+BApaRk1Q/WklDCvkpGwE4lbduJ/r2cWR2uxx07Ru4MP0US8dtpaA5Xf8PVySHhibeDABPjNb0CHsE9wSobR6fKWdWrRMIFpdcph+CTAJrWE4itMjlQFrGDdBaO4v2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779471154; c=relaxed/simple;
	bh=NVv2FOyxTVk8edtacyovrQwINxpVmwMJuyt/Fau+g78=;
	h=To:Subject:From:Message-Id:Date; b=qwkuAolcSOE99l3xZ4yv+ESaVtZUGUTh8BFl0C0LP1eI1mydlHnrQv/QXIyiMe1CT+UIIpA++Hl0tK2Y/ON4j+bTTEwWpTMnQf5OvjrcBrYmQlK3YPdpn40Be0efuqrinXiSF6gukPKqppRZ0SdkcyIj/sCEaN/X8SrZ6Xt2iD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjOHHDPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjOHHDPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9866C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779471153;
	bh=NVv2FOyxTVk8edtacyovrQwINxpVmwMJuyt/Fau+g78=;
	h=To:Subject:From:Date:From;
	b=pjOHHDPcHkUp1GnxZjUIIeosyTJ9fZXXKejnET60Gv3s+RU0WwdEd5WZGbKrNlfh5
	 7fNcckxdVBcEvOAr6ftrVW3HsYXzKBjHFSC+K/BGIyDn4+E2WqmBE7kGdLqb7ohvL9
	 yEphGhNgbbGm4dOKEDNfX9eji1gp6UE12CZx28xc/+ztPBxUdZ+4Ye+yMWUyd0zULW
	 G5gGE+azaIRyNif7i/6BF6nUCsg4aKMGphqKAgJOTIli99ojC3K+323v6IrjlmkAze
	 6umQ+BLsZFSIjagLiMwyVeFM9GlCI+ReqfF9KncxOSOgi078Dmm8EWVVfayLntMIrP
	 7cIVH+/GyjFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF34CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947115369.6895.3342019905865707639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66733a94b8b3c32d546082d37850d95bea771da69d2a3dd29f12fbfe4f041a31
Date: Fri, 22 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779471153
