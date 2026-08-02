Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84575801
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785712234; cv=none; b=ErKhnyOp2rDcNv5tGKFa3PBr86LU1jxnncaRvKD+GEmkHmtai8zlrXHb7F5Tta6YDjVrzRVXG/kL9z8L9PxVs40oIGZ0a4Nhi03lCN3db4YrqZ/yuZ3Z2rcwWQ78c49aAXsl79U631ubU5GBED8I0o2NxWfWXwck3an2GdtTtCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785712234; c=relaxed/simple;
	bh=rkT/nPBvDLbYV4sMCOByEDQAeTBaB6H+JOL8uxEo1OY=;
	h=To:Subject:From:Message-Id:Date; b=jZYiki8K1jGUKjy783kP2n4ZRPVQIsyWsMtfafAAvukdjQubc8TMzUlcrMf3043YLmtZXpE+sZrp0XI8At03Z7KwI4Hi2y1EiiV8KRdP65kXZZkaGQn1IiSidbVoCgUATkjIAe56QLlNlEYgY5sZ+KAn/fKRasQCsaOnLZunB6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1UUoKla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1UUoKla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5310C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785712233;
	bh=rkT/nPBvDLbYV4sMCOByEDQAeTBaB6H+JOL8uxEo1OY=;
	h=To:Subject:From:Date:From;
	b=a1UUoKlaq8sWevzAwOqGkp4xWtThh9a48wdY67uGOleFO1jZUH50VoQHu3IDf7xVX
	 fWVXxeU08bEKxs+por2vQW3nrEcJvDYkIa+WZI4cW1lQ9HZWbHGSsTyhXjlDzy+QUK
	 wbR7t7+VfGFdaNLdQJWCxw6hEk5hqCHOC7tx2GVAGqrxUxgCiHatco4L64q+8fgwdk
	 tyHHGV23IaovbGN6a2SutIFqNtzED5lvbMlNBa5+2ucw7NJz0gPQwztaMh5YQQlsMc
	 eBrhaSzsJftYGio4Uezyft6sRbzLD6tal2j7e+xJIGIh/CxDppT9w2K14PJkuCW4oN
	 DtQ4aO2FluAgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17C5C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571223369.27852.5299235496495401061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f2632201c11d3d9c69b946360dd5dccfd3adfcb7165c5e164fbf4d7380e07e
Date: Sun, 02 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785712233
