Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332872C08AC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779784354; cv=none; b=RoYQxcc83svqfOztEwKzd1fbeM0zzoxg1mJ4O/7mp8qRRxq+/tkcW6GbogVjGVIiSKp6r4dECY/5u4o0acrIcR2H2olPBCAXp4wDEwLtIEuc0DHz0fqR/bcsUBT1+nCAu/wTjtcGxBh+zsPpDEJNRx18b168we+udam/H0Q9NFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779784354; c=relaxed/simple;
	bh=USoXc12S1pDWkkQbL+rlBuBtvpcrQ5RMl96TOZ+3aVo=;
	h=To:Subject:From:Message-Id:Date; b=eGIFcXFZ8PbTB4i1YOmhqtgo50LKXpUzwAbS5LMWmBgdgKthWwT3EVjDmO4pZ4pChEoqq2uwVaXgYaSEMxTKKZEnalN8i1ZxXeoHxt2LA5kUYM4Tnn2o3bJNiHxsm0omFfPYd4nzfjaZNcaHkj54NN96L4J9EqQKUuow4M/QhuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGUplNLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGUplNLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5829C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779784353;
	bh=USoXc12S1pDWkkQbL+rlBuBtvpcrQ5RMl96TOZ+3aVo=;
	h=To:Subject:From:Date:From;
	b=ZGUplNLdWmaPIflbMCtg7gqgeLjodb5/fQ613m+kjKsh26rltSGeA2aS266VF9/Ba
	 LO0vpMHabmUKwDcSEajkc8TCAwKTabiKh3tbn9Fjr6lXJvNPx/+RfVsSkR/VUmmJ4i
	 YJ7u+A24TtKuKtXIJnt3fIFkdJz8jEKP7kPQvHwdSDkDrFAF4CvlHpw9HJWegU1KNP
	 +xPeymWDRvsPtdjYFZNboUVbHP2UZEEFwrpyxGmpO4awLVSme+882rCm8Zw7RQKbYK
	 NDm7eFkFwwgdLBncI6Bb/2PnYZ7g4wK0apML7Ho653AohKu1/ENjs3BXZJHFR7PR3X
	 IaGySD+guydWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909FCD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978435368.16544.13268093537665629050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e274b6f314415e54d3601932ba5d588e8b9200fee774f09a64455031f7ac09e
Date: Tue, 26 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779784353
