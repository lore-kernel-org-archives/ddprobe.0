Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC5E2F5A13
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782267994; cv=none; b=EYo0JMtkBQ6lzfSgnUrdfLd5Z65x/qcrcse1HMvWc86jUiOhOxnpufPmZg1KJfhnf1eC74i7p1K24QHPj35FqMdEUNVYM3ZOrX12x2P4WDb1euaGoHf82YJPXZMe913U+N/HTOOh6o/rligAvDSIUTYVGsx12zzRmp8SvEMfYnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782267994; c=relaxed/simple;
	bh=+60g6NkQCqAIc+UTJmKIrWpLPZxkb5pYRgtc8s5fbj4=;
	h=To:Subject:From:Message-Id:Date; b=PDx6j7y0dllKeJT6iWCBo4HoUB9b1XSfo5qRNYltPIjHVTemHsVdyzxTP1CdXb1IzRdE9UpPRfuEdQVCvUpXbsZPkbCTyQ0wqYKVE+ho98ZEP7JGMoftGLdXOGEU2ui/CNOSRQYD3XAF2RjcsPivUn2DY4TnaKmZj4fw9K8xBtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2R+xGzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2R+xGzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8359C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782267993;
	bh=+60g6NkQCqAIc+UTJmKIrWpLPZxkb5pYRgtc8s5fbj4=;
	h=To:Subject:From:Date:From;
	b=Z2R+xGzHfyK/WDGHYpom+j6RUy7I7JW9CZvyZ72nVruUoRg1a9kHP/UPkjzllTRpg
	 9t6eEHkDbfErP87FQd8X4HuWBaMLTL5lwrxz7wBDsorJNM9OGiarc3MzD2UNKT4H98
	 ro7OiecU7Kk7yrP32kvhiMcIIFkIEsAw1vYjSQ7Zy06VoxJPfSKaoj+zoUpsp9S5/C
	 JMNsG+c/UtaZR6TxR5eWeK5nlonSrWoGNgL1ihljSrBQXCaVEiILlcqOpozhzuMjEs
	 2l85aB4BOS3K08UCbr71+qIoVthGtqveri6dRVBBDRzk9ghsaiThtSijnNel/7VVP1
	 1VcjtNEhyUSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9254CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226799368.5890.10270451694196241410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a908f4caad95d6f5b2a645b87de63455555ba65b47ec03c61530bf04553a793
Date: Wed, 24 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782267993
