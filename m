Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6505A8479
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738947354; cv=none; b=VSzjR1L/BfkSC3mzfdcx+U+oAH7XBOTde+FYCUJzBCpX5JjALN2YcG3BXDUa+UaG+GXTUMSSTu+Qhgn6CTsuCcalT/c6ftryUwjRzp1pJBbuDBpRJ7o4t77ovetSr172Rra+xsO8AcaDTNMn9J0g8qNvjBZkGHimoLY2mXuZ5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738947354; c=relaxed/simple;
	bh=pjZ8+aDKXaIbltvd87/7znZRbZ89JBmEoeKVNVhMz8s=;
	h=To:Subject:From:Message-Id:Date; b=d9PtBmpCtxgNc0qpDAHvp4C6YJGRDRdKLmue7lJOsoFIylKAToiSTsvLxmZleq2wJ6ZLHo0b5R3N5UoA0wO4cWXplUsYhqzc4FjPSaP2axvnOjHLX/TdmA3MsWKlqXjQgZrHaQQU2pxXiPl99AqzJq/fP3ksNH1Xk1I+eZvEwF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ/1Qh/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ/1Qh/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A25C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738947353;
	bh=pjZ8+aDKXaIbltvd87/7znZRbZ89JBmEoeKVNVhMz8s=;
	h=To:Subject:From:Date:From;
	b=aZ/1Qh/RiEz9QZfJ1JZc6tSRzCh5my/7aZVdC+f7SDExo9OCnBNZ8+2oiQ/nNGXDt
	 JABd0QPD291ZtwkLdUcp9ItW/6pfuCaFxs5ysHbDp28ClHgDC04unQtJjeJlnudl7T
	 4SYDSmXIcKsM6bzIYhZzl4xORVlQZriIwY3ge8x1P0dy151fILzwoGlKNsqufir5zn
	 r5JXGJyyo1uSuRKMSx68UF4aV3W0XYdIgAphHKFIk2Yf3XUlcch1XZoMAX2XjXX11t
	 oTGs6ADIp6w68GumQJKBK199hSqOBJJzXgPDRk0x3BtuN3kIRtvbvHe6cFES49pQKE
	 Q5gVU8twshREA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0915C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894735370.662.9857852576051036771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4295152585c3c1dfd5dd4c88d9e6130dae6e0858571fc6ce8626b69258c708f
Date: Fri, 07 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738947353
