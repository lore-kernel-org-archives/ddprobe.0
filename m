Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7D7261A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750655394; cv=none; b=upqqKFRG51w20m1eun1CU/MFuVwjGo/HgnaiGjAU75uVY1LIWKqosuOX8HjbjRKwplBPTKgr3SUrYzNjyFGzVRFdXZjL6Ko/oiTdt0cWEbexykcaaCMs82ZoO7FQgot0/eCmcA7uAx0Y63RbgKV7RCCodl6KQBA5D1shg+6X0CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750655394; c=relaxed/simple;
	bh=JYNHqYXq8J+hdGC8xZq4zuW0PSuAnUVRtv3lfg0WHIA=;
	h=To:Subject:From:Message-Id:Date; b=dnk6mxs09TAknPpCKj7BvXgcYQdI4UknCdrt7trW7OK4k9t4WeDJ6somw0EGYoQCmKh4uk84FaWHD3kaEfQwrtGL48KAjzNemlhWnZvjDhNVUKy0bpv8KTilWqg0yEBgg3na9TLsM+wRjh1fRP+GQn9CozOCrEEQzLyMl6o+Q+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/jTbgDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/jTbgDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2555C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750655393;
	bh=JYNHqYXq8J+hdGC8xZq4zuW0PSuAnUVRtv3lfg0WHIA=;
	h=To:Subject:From:Date:From;
	b=r/jTbgDbur28PTeiA97u3AYsWtKsfI2Y/gO/NlyGUGLo9Ve5zFF0lJDbZ7lq+KDXe
	 5FNtMiN0h8cxDkUtSWPT88b/cMZnMlXnX5P9AWyCBbU0b/aohLi/GKDxzt2XOk+jjD
	 BeKF0v1dXyXHdpB5hc9TaMRRmh5q6jE+B1OGP8Bf/traJqp/vzt3bKJu1grqk6k6jJ
	 wnSplR2XQ0Q19x+prFPyFUChskc/F0UEu6VRJjl7qQazZDF8bpR5/6JiqfE7Ufr5LL
	 8+b8NB1xS9A+WzJ6pm5zgiZ+i0ACn2rsv7G+4wZUMqnKyGiYbdS2MqQRv7EAVF2IUI
	 X4PV9VMCFuSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C0C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065539357.12391.11225219724032772024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7fc7d5089126a272bfdace88a71d1f8120ff80facd250608898bf096498105
Date: Mon, 23 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750655393
