Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D51862
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748393394; cv=none; b=TkMlQpIAPEG/VkjgGe51Tsr7iNnzlweZwG5rwQG6WV5+oAErltiznCDdVxdMIcK2F99YlhTp0zSsDV0OW6I0DUpzlzqe/zgaeq7tdIKcN8di2xhH8BXTJb8i7b1UtSXsSmEYogH1cB+uAcqLu/TLvsiNGxGGdLRxW3yG6fg/fag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748393394; c=relaxed/simple;
	bh=5jyUAbfwVDFA10tsbAWeW+zNTdzv1jyw16uNx9E52LI=;
	h=To:Subject:From:Message-Id:Date; b=DEYOXQvWkSF74p1LOEFvele93ZgVCM+cY59fP06cM9jfE4NnoGyMoP83HJofDDz8d98pL7Ah9r52s/Bsijiqa1AdZxwN5lS4jJOQYFdUAWoHEOvtiTdAzZQwLfWirZIqwIBBBNAJ0efIP7g+fZuu+97x2XEhm2FTXcOBjPFwMvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIYiL5id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIYiL5id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748393393;
	bh=5jyUAbfwVDFA10tsbAWeW+zNTdzv1jyw16uNx9E52LI=;
	h=To:Subject:From:Date:From;
	b=aIYiL5idzRObl3cHzyhz6K7GALkFKZpd54dw2m8F86zJuwsPHzhPzyib8uZ8A6g6G
	 1TjzokX3+MDLeI97+S/pG/vdkkarVlLv0Z2AqobQl2lAM+ONOXaM0KccYAkv8rxhZ8
	 bKY1Ykl7xpYhPfQ2i9ZJDHccJIYDF1Hx08reEQjEz7qUscXw0kjOPBD7eaFcDETvCQ
	 +Z1IsOdvvHcziFKX1D94mnshAEAkHFmcLE6CNP8c+xqK5XDzVyc4U8xDDA/UIanoaR
	 QwQGDJaLjuyj/LNo006XBiWz7VvcwhtJCveSKG0/n6Vuw1tEP4DdpWXDSn0l91snbu
	 7Y2HZGvg3wCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92989C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839339357.3963.2036585024992251243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d034ffc1bac58c1495e578d70aeba01ca4466f7bab56ce4a7acae43b8816096e
Date: Wed, 28 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748393393
