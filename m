Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D21D7E41
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783803514; cv=none; b=Wxgpao2cCCJzPQNQLthXGi/k/2FNn9B0hFGWQqk/Wsm2UpinU6/S1pN6ZKMLI8/nPEUXjvds0f2skinl1QJNUZpbrjfSLuouZO7t4umvQKbWrntHFUYHcx7bn09cCfBd9rtlN5JkQFZOElZKaigeRyaojMY36YE2WJPAeslrcrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783803514; c=relaxed/simple;
	bh=yrTY8M6BApInVvPgIVJF3mTHbCYXk7FDWZAjE9F11ww=;
	h=To:Subject:From:Message-Id:Date; b=Cn2ZTBYMyDsVZRmSPDAYzvhtB8clGgCSm1KCtxWCAL+9J512cWreKm05dVsM3CL+RBDA++Iy3rYP8oomLa7lyvKNCvUyljnoYMFhfA0ADgGi7EINMq0NJm+JXAmPQB6LR7F4NdOBirqIDemIyx0SF3SF+OVOAlYl3/OpXjX8h5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ouf2J1U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ouf2J1U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE449C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783803513;
	bh=yrTY8M6BApInVvPgIVJF3mTHbCYXk7FDWZAjE9F11ww=;
	h=To:Subject:From:Date:From;
	b=Ouf2J1U0YhuXRM4ToX839LDVtiMNBNARwzYkY9Lnxh+pZ9hv9hgTgTUMqQx85Lg64
	 5xy2rkBXd6dQfEnpFQGoJ3+qAbEMOtegfZrA8z3CYVU4bk6ZokL9mxAm3MdVSSihPC
	 3WUJo46FlZe57CzMUZwKPZoDtQIekmopsS69DB4Pt9SPuDiAadoWlwKZgfNCTaJkQ8
	 6YFas4wnHCkLTP7vRk/2rZZvn1Y6ow7qqldrPTle+VaoZMd3LKUt43w0JOgicB999G
	 cW4oK7wtRaNUvbtQDsrCSESF4USyKtD45wXbsbnJLBid9Yg4MdlzTtD9ilvG7yphoW
	 TqhWtWFUFXVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E6C44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380351368.1676.4532050509170883097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda640df033850094ea5101b5ba52d289ee15d93ca90402a647d86897ae9e072
Date: Sat, 11 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783803513
