Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CBD1946D5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717582583; cv=none; b=REjLVQ+BpSqDHlOUqY6Ei2GSGa2c2k9nl5+0H6DuTJH7+y6TeVYmOqoLERC8kMq4K6CZ2BLW+754tl82DpH0I8DJ9rLVxd0jbqMLqa/uXA0ajrM4Ylrc6Kncoxqe+6xrhqbR+tUGRpjWhAs92F0RqrhHiFVoO+mKvcvYSipmE30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717582583; c=relaxed/simple;
	bh=Aasxhm3RNE4n7E162N2H+SDePmzFA9LwKv0+NMc+WBU=;
	h=To:Subject:From:Message-Id:Date; b=RmtlwnylHO510qVTd3Avimrrf+7q6AkhV4MNhr+96mIXPcHbbXitKukiiE0eppZ0yuN0wTPGI7LUEniaimZS6oALbvcH6KDI1dxrSRaB47KbLMOHeHDmpB9m1fOPa+BC9mcKyH0yUVhonYKwZpYClIrGNQwBfRi9FzbclCosvLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzdgIvaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzdgIvaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D157AC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717582582;
	bh=Aasxhm3RNE4n7E162N2H+SDePmzFA9LwKv0+NMc+WBU=;
	h=To:Subject:From:Date:From;
	b=uzdgIvaAj1lbTQ93PHQgp59+4Guil21CWqaDbbxfbKIGGM3pYZSZv00VMTxPXIllZ
	 uiAis8rzpSSnWZB4jhgY9NXTrUI+zyFxREc9SgKcYnjSLkhwN/ZuM99Ibe1KH6vrkL
	 F7PcyKgBu/JwDtV3LQBcVm+AdlYq90zUXaOxNJuOEjpznyJ+7CLU/jOzF85Y8VqmPN
	 1XIIdXzaT6xfhK+1ae8zUPo32o4BbCh4ZNhU2Zqi35YkPHHSOziUQ7e+rFBjcVtbWa
	 fflCYHTIVEHb/oC+CUguuhaWuuxw9dBAEWHi8rtUK/M9PACI97vfOkawrM8Ey/CFaz
	 bH/WeiPKJhE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE8CC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758258277.4793.8388533152539777128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c42344cecf5b4c9e1468ece79a678789c5764ff04d03aa207e5603b3cf52d93
Date: Wed, 05 Jun 2024 10:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717582582
