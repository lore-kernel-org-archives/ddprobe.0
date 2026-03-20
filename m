Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3004636EA92
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773993894; cv=none; b=gOq10gXzFo3Y523doYDWOHr3I3pgEOPytOHhzW83CjDN3QPPZkrsF55mdCY6X5MDZhy1BeBBQt7ayG0i5KvBF5ctGxMk/FSvUF/uu7061KaOSB68jHxjAO409HMprJFtVpYCtaT0BIYlpfALjRY1zCV52CZ9vMCd6mASEO7rkDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773993894; c=relaxed/simple;
	bh=g7M73VDW/12/oH1y8Jn7JkvOmxUj1RP8TrTrT9F8JZk=;
	h=To:Subject:From:Message-Id:Date; b=Kmb2YUEN985BhvGvBCodFcyScNuPBUh7+6Zp7K9hhjULPnBmmwGfKWtECdCijEtppMsAvf1Wz2ada/hZkouWFvfzqo50v3BeQaIzydSkGe7TOTeTAyrE0BE5f/UMOYot0uG7n5mwvlKbZ4Hec5fVnKANQWA/7VUZHRaLmtbcAYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUhVHDir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUhVHDir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D55C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773993893;
	bh=g7M73VDW/12/oH1y8Jn7JkvOmxUj1RP8TrTrT9F8JZk=;
	h=To:Subject:From:Date:From;
	b=iUhVHDirgvM+/TJ0ZS4m0KXumFEIkF6N/etFsGVkg5HTyrGr9iLWRx92nDHXx1iE4
	 HYenQkJPfmBDMyLUQxcF6kkQNozaRX6I/+EgxOd0ymXiKrRiNSJb070iiPPiR5ScLX
	 P5bY6M9LYiznkP80T9P6iiRj0pgUjClJTsBS/QPKtLkkLGLRHIvvyzBAXoH63z4XfM
	 B2MBpzmd6wjckRbYaOS0MGyo1wsWI7QLjcmRZODUeIDMseciaASmGGzcQ9OC9RnUR4
	 doBPnzwrOkYcGUi2rgcskj2wlzj37wx19EO5x4W/r2nnC0m9P+y4DEMyaNIPCocaS3
	 IVSCpEojcZpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A15109316C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399389358.4355.10007493293673112358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc08f203eee291b02b4d9d57f27dd6929a53ca000c572b14904b1481daa7559
Date: Fri, 20 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773993893
