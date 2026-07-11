Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257F323392E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783759114; cv=none; b=bEFuYCdDBnEOK09tJBgBkHy9piSN4sWiE8e6PyFpjTnV45Z2tFFGbscxK4/eGHeDxkaeBFtSg8c5FyCG1W2JhMtqlME/e+OkVaw82J9kRjtiHAcCxBo3biyCBQul5VCPclohCaXd6QO4/Ah9Afb9irnvbd/bm+WXPRwL5+vrA0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783759114; c=relaxed/simple;
	bh=5VzM0DVUyVxpvJ+6uXojIvOsnDrVWybYwve/9Ckyq7g=;
	h=To:Subject:From:Message-Id:Date; b=h7NjQ6qwULf8hJ6LdrkLUqylrr5WQIxFQyfmyLoYLO7yXRCV+e6mq6jCQNo46+IWdN41HQLS+KvOfRxaJhblAXSmvWXHA5mMLnilXBEv3Q/BJtgpfgaFvlCFXltZqzvI0zNfy0Gq74p7GJ4MsyH6N8hGAZUKuZrN8nLozA6YI4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpJntCtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpJntCtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CDEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783759113;
	bh=5VzM0DVUyVxpvJ+6uXojIvOsnDrVWybYwve/9Ckyq7g=;
	h=To:Subject:From:Date:From;
	b=NpJntCtkUb+JlFGS+Ld+OMFHmsFYIh+onoVc8YUiSCI1TuogRINn5N5GxrpuUraGb
	 d7SUn2r3iPg7aQ5RlGblGXqGV0arhU0Ozs0eEkvd5EbF6C98bklFhXFmo9efJ/wqqZ
	 gqbdyy7gKXTsu8TmtdHRmmYhHJ4qThx/6ms2NLXd4gfizjsVnGd342R1usFYSdNntU
	 rxDX4+EEw5EfNS20M3VQ9kQiTv2R4w2glD/xjEWViWej0Y67KkCrXh7cfcX6IdXosD
	 /+ivggVW0kT5zBd6wkTeLGA+uUIfZADIlwQm/eL/1IV030lxfB/VYCOvbxl0UN/o2z
	 vRspjRHFDhU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EBDC44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375911368.16634.9701586772226344752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0050d79b1195ed79f4da3e11fa5ecb0cbfcd9680c29b3e754ced37e6185bf78b
Date: Sat, 11 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783759113
