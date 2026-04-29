Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1DB407578
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777479454; cv=none; b=lDgrf1b4fqwObToVmmirbKNFIK3oOAgrIb5Otffuw/lq0aM1ME3KSzxCv6/Z6C4YKKuet19EXjfajhY642nmlfa7VJL9V5KCsjy4eDPduMAComvFtzpbusow0cljyObmzMGSyLrEQwQLbsKAVXu9fM40SO9khXqAMm/ykNcdCZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777479454; c=relaxed/simple;
	bh=W9jEReZdJv8xyW/MUeNwOzJX0KcmK9FErXfjl1pUm/k=;
	h=To:Subject:From:Message-Id:Date; b=ox9xAANu9s7eByDfY08MEzwloOQN8BnE8SxRnIbaXNWhEe6YPtGxqw9xp90bpXF1XDIm7DzzgknBNV+NkjzoIoyx24N4OL8RL7jlCMi1qng7LF+Qist6yN9a2Ocb+r3wyLUknCe4h9NZwhlavulqDHSfGTrsC+spN5BSg0ANhfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hONKqrvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hONKqrvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777479453;
	bh=W9jEReZdJv8xyW/MUeNwOzJX0KcmK9FErXfjl1pUm/k=;
	h=To:Subject:From:Date:From;
	b=hONKqrvTwLZLdkckBiTWrKfEXQ5PoZfc2irmoIkKcGV9LZnM3xV9MhrUMzDlhYA1p
	 8apoR8uZqK/sdVS+8geSYGJuRHnGB8ZDQzJ+GsIDrjSaxTrRbWmXT2qxLPU5BMX6Qk
	 4/cr/7JT+Gpdvol2YAMjwbk+EXol7JMA0WdA0q8gZ7QZrh3wgAMXr9/3rR/FaRxpZ4
	 L8qISxGcb9BnB5IF7mVn2h5KxFNOa9qwdQV+EqxxjTT2vbo331+v7qZQQ/MNQAIAHv
	 pkyUgNn4bqC1xZQpDfqLcmtj3Wrkycq7U4VQZ+4h1XQwP3nSX0d0CZ2fHaJRRUB03W
	 sbOKpJp6Nk6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADCDFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747945368.11099.14175192878993978262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a4362b35902323b06c0adbb215d72dc3e299ff413e13b53224c81faaa159e0
Date: Wed, 29 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777479453
