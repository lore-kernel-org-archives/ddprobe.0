Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750724A24
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718765963; cv=none; b=q7AXt4X28tQrr7W9FEkkT95UMINZplRsRVc11zOSjVYzJXP5l9R9/4oFUf548yDZ8lTvMQn69eYH7kuC0IRYHbRVHzl0maOKmmpbENMk6Xr4AkRSt2ePjVAaYQ0yyh+Iv+0KD8KoCQ3+t2U9fap02ReITZiRsWwkWbIKUvaM73U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718765963; c=relaxed/simple;
	bh=CZFtN65nFywfcjucwYKeTFqBry4BKlDHVMAa+m/POd4=;
	h=To:Subject:From:Message-Id:Date; b=cUg7llLsWYWiZONrwF/Qe8oDgURvBUpnXToBk4FqKTGE7G5EwKBI/5dgUq6ivYw7+8HLVIa55SYmE2BBHr+7Kf5F7cNFzq10zSWtf2nI5kjQqmAjxW4XRMN4uqNl5e7uJMs7MEul5Jq9Z1EtOItOVJTqJiw13J59EDGd00jSWMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIKRNjQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIKRNjQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE2D1C4AF1D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718765963;
	bh=CZFtN65nFywfcjucwYKeTFqBry4BKlDHVMAa+m/POd4=;
	h=To:Subject:From:Date:From;
	b=fIKRNjQRUHgmX+tJVDojAf7COdp6IpyX+fOnulS2ZHU2cf4Vn4DCLJe1+KiMPEd2+
	 QmIPFk+7yPLZFAgURepWc4N5UmWBJXdBJ8M+yKXWwM4wGhD4ki9RtLh/W8YrPu8qN7
	 5ohhp827NwZesPYaCulHr8uRQeiBMJivvQEcD30zv2lW1EasMTU04Z6fOSCNvlStzA
	 3JTNxhCk5CJwE9/sPkjX4sPAdAcY5RBuGERKFwANGyjJi6tQ04EEpzephvo3YztdQN
	 Gt7v5Ausriz/7Er8WBzjGzaQAQqtKc4IC52x/KoSpKX/g3P7K1XHb8pkG0l4BaGtv1
	 2NcT7mfM+qhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC664C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876596284.12573.7635123558071060783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f7e42393a7c7c93fadeae02231121e4b430287d2dc74201d414b97cd5ca164
Date: Wed, 19 Jun 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718765962
