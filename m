Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358C46AA7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743623994; cv=none; b=bpHh8jN3L9htDfD02kSKPuAqmRlX/EGqPR3xDDey/kKOCVnKAErnjU/a99jZIJUrkfYTVZwoQBSV+Ek7axPrcD3XrvF9n5RAabBKNF7rC2s8OreaWX459ZlvEmSS/tBNdajx0I6c5nC0AE0W2Xyt8W/AK06y1HJxmkfFw1LUJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743623994; c=relaxed/simple;
	bh=ZncBssC1iKVyZo7iJJzM0RYEqg3yLU+7Xn3q7EmOiMM=;
	h=To:Subject:From:Message-Id:Date; b=dBLT5jl+gxrfYJw/39pIamNHVqdSg5E3dT/jO3J8FYYn5w+8WZB5BeX2chnq3l8J9jCl8MCjXuXWLjIsK4JcYJqmJqw2kNrtn20137SnKEi/w5hQo80Qfw3SvRy21+k3Smn2ujZQtgNgp0dbVw4R2JTpxXPfVTrHD0CxmQ7TGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNSd38N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNSd38N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59E5C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743623993;
	bh=ZncBssC1iKVyZo7iJJzM0RYEqg3yLU+7Xn3q7EmOiMM=;
	h=To:Subject:From:Date:From;
	b=cNSd38N21mrCQA7XwC5igGUDwXxP2mnk/uwaQCaVYXN8EOJsIBhRrtWrB+5D1zQlH
	 Aejqs7HUotZyFvEZO2mG8DtB5ecgaXGlYsG02fNJBWpgHt3rkom9PnaVBfqCz3BbbT
	 MRdxq48vooocZLddnVdalXyBySw+WfKKRL5e6uWeXqNByHorTwd5nNQ7M919qNFMsc
	 XTJZHbm6zb6vfPZcT0vqvsUVf2Dx0vRnCceNKn+ekP7qYjqxoDgxF2+qfYzEPIph+K
	 +XMVdfUydQQkGWmdE3b9e5e+AWVpItUoJlu3ldbTkKuUrBEZd36rtEq33CTxzr8UaA
	 +PksRHxfPGVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B30C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362399357.31989.862552978234200552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82cc4959a2f880be87d27ccabd08c4a1272aa2a3ef4ffcb2352fd22d93fa25d
Date: Wed, 02 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743623993
