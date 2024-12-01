Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165D2B9A2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075754; cv=none; b=STlcbbzhrNKYh3Mnm0q89mBHTzK/G9qaIfVH8iSgMQ3SC5as2W+i4fPN5YSNZdynO9KnOXBPTaNISjsg0yDf0iCy8/stqLeaYyQ6mX+x7bSZRsNT0+lOBOPbQ/k7Vng85bjV0prQCRcM7gd71lh+nz0UN94k/lmnVtAWF0ksTdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075754; c=relaxed/simple;
	bh=ftg4Z6XPi48MSbJatUr90FUVe8IHbURmxzPhrteTTiw=;
	h=To:Subject:From:Message-Id:Date; b=DjgGTBZUzkHVaxB7S3sdK0g0z6MVN8mkkOniTbt1uNgSM7Jf2LlZjWl6xmkB3rLPIDQo9s9a6oeKyxOiuWm9GEY45YSlW/PttqFOWadeX+U/FzICfxrmC54W1xMRLIBh2MYumDZZhkknvY3cBmvecyfA6zOo1tDz5PjbzZT5rII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fl5VoOK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl5VoOK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1EAC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733075753;
	bh=ftg4Z6XPi48MSbJatUr90FUVe8IHbURmxzPhrteTTiw=;
	h=To:Subject:From:Date:From;
	b=fl5VoOK8gS2HS9sfhEkGk/lYI/xwiCbjqklwwj0sZDfHLbWO6D3nYW2GebW09Ks0Q
	 XeXj79AP9vvVw+kmKhnbzwqzwbeVdNOsRF6BHsdywg88FwNI1qT8hJl/OFHKBKbFrU
	 1R7xH1ZuFv58MDOKalXrkgJvNCS0IkY1zck3QOO5sOoMdlh+oDQb2ERt3fN3G+cTIh
	 pfsEOMttThDF0D3n84jK37rKthK1iy2uvKDsApeRk7WsQf1PcEeEnMuEnC8LkybCMU
	 6RfHesdBCOQ7yYpupC8IPBnwZH2RwsCBgayRN7hJcIe4UTppn45yjJ824QdMDZHRMH
	 s0+nhWK6tR1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24EFD4977B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307575365.10847.17606567425293637869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62dae3be1606a9e0e4253d843c5c097301588e3f4f7ae31c3b59bd9fc826de7
Date: Sun, 01 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733075753
