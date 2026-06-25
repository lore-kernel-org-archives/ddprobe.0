Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345637C918
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782401254; cv=none; b=gcfcjcv6mDYgZIjd/LcJg3raz7QsgabFYQ6/ZBQgT5N+XzkWBAvFXNHM1p4dO/fCix07xT2C8E0cUk3eRmj3AZmWgonjVYJScZgPxshv4OwsDdmnqmogrm9JWEiaFSGO96L9Y+i/c164G2UF/ymH5Y9pGKe2lB539ZMtj3QQMhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782401254; c=relaxed/simple;
	bh=nzx/39Qj1Bb/arg7kH0rudLApXSmxqKo9BtvtBHAYOU=;
	h=To:Subject:From:Message-Id:Date; b=euI3JjN8VsC4UgwPiZb9zXRtBdvjyZNx5Gutogo91Nk101nO5264DNvWCCH7/h1Llf9QV/6a50e03hz5AOmzi8nVF8pEEHSAPKevUCAQZ824Y9p2f58BYN8IiUIuDa3rUCVGPf5f4Qv1qkUGJrdgIWWpKxmqCOqAqbhB3XWxczI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf4yWQl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf4yWQl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D290DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782401253;
	bh=nzx/39Qj1Bb/arg7kH0rudLApXSmxqKo9BtvtBHAYOU=;
	h=To:Subject:From:Date:From;
	b=Hf4yWQl34GaoGDnfWu/caTNHiH5gK9RX1KFivWTtl5xXM0zNTBTNlKEEh5dBFWrIc
	 ouFvlF2k55ZnSYkl+EFiLOQuw/fe9JP36fG4CflG0PtzUurLqbdQoU0lxK1PVdQ9cZ
	 u9DocZzg7kAPJ2SxJiVNQs1nnQQRNT9ggd5zWALVFvXMP5vAtAXUsSox6dqqUcpcDH
	 meuRqpVRDWSecgcbdN+YIU6CQd+5YZfEgkCG8jWnT+wrZXheCC7wh0nsjM1Ce6xlzP
	 P+e+eIrlnEjKKgXySHBg1hg6HJphL4qbyOeBy6Sevv0cpEGDWe8DU+7sYyWZD5Q/CZ
	 xEkDauKq2BLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C53CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240125372.19393.5824204011769521968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3547ad902eb3556b8109f3a315b103e301be319fd2475561ab9b47725a3249bb
Date: Thu, 25 Jun 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782401253
