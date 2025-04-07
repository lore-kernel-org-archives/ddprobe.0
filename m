Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF2D209F45
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744065594; cv=none; b=QWFJYOc+x52PYpTNSaP6fKNwqv+DSqFvAZoTQ10wx4MLoNEwKUhEB6shA62j9Qe8bGe16vny6N3JBSpDcb8E1k0gLuH4tpEFWYCG9J+SXH2kN9LNVCZmAgd7GDT3vHA1f+bM4hKVPXZqU9Ml/SJ8B3yh9Pgw3+oBAsVyipTEcbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744065594; c=relaxed/simple;
	bh=zHZJ5Xic9rrx2t3l1DGnzOy1lwHJ1pgWHrYmRpFMJPU=;
	h=To:Subject:From:Message-Id:Date; b=Gy21fkUZUOSpMjh2aOS2P8cq0OSeNzCMP2mtwwOXoQgp6UMT5RB13bzj565M/zJt6mogVB0jByPOQ9jN2TeVFJH6X1qO/fnGs8m9SJCfmNOWQWhn0NRTf66unFMlkdTmD3LkiapxSHM9lUF0lQEyRvWyrUycXsXaipERrS6fLKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ412Tn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ412Tn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C4C4CEE8
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744065593;
	bh=zHZJ5Xic9rrx2t3l1DGnzOy1lwHJ1pgWHrYmRpFMJPU=;
	h=To:Subject:From:Date:From;
	b=cZ412Tn9BAC8gWEj+w7QraM+DPnp6JLADRZKgt2ILlYisDxEmjpAmvdpVujs8bZVb
	 282NPBGs8JZQw1CWVYsbSVX7vi2Ilt3GuXG4eTMkf7zLy1dew3ZnqBM6pMLd5TvZUt
	 hUza78IUKLey0r3FlwOryz0YJBoxjb+UWlx9/ABets4v5QQxXCprwg2jFsI6PKga96
	 MaD3Cn2dgQhf90rPwxERZR20r+XolJ2+dxABY+0QCeLtOvf64DRWCaCs2y2LVbivJQ
	 cVL0WBaxtYaXusYd2RrBG0WvVc8Q6uqLGynMapAmqbPVNI5NiXXoMPXWZIYypYLeqq
	 OzKFpUpZ8Tz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93063C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406559359.27560.17218342039689501897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d353280a0bd8e2be03a660f1b9fcd659b28a928a8ef6bf9bbb3efcb234269ec5
Date: Mon, 07 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744065593
