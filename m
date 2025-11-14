Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1987330AAC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763114994; cv=none; b=Vc9l79EJPCgk+WwjWVlaWYORlZM3hrV0/gYuSoulGQDwF41G0+8cl8FjHaceVsTI0AZRY/Q2L9cCyy49C82fGRLkg375WPCW1Kv2SghcIR32TSlvYMhnhQGmDXgVEKEg7nLd/c7z9W+99zkSPalVw5KuHyDCcOBewcu7x/0RAwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763114994; c=relaxed/simple;
	bh=ltm1hC3S0CHz8EUbpd7tvqa1CjBwFyddUb+K4WY6tdU=;
	h=To:Subject:From:Message-Id:Date; b=IJBS8Tl/SXjWJfKKz/v8to69K0vfO6FubVY2NCASELOaYvxtmCwQwsZpAO3kh8XkUVeLKEvUCB1W4ISgyCq+vj/OtHKRk48DvPqLUyeRp2K/ueGmRmPzEqii+JY5z9xw5gZlVjoMhFcvFq4SOVPZmB2I4zzgW9j//TRwIieJtAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtSBI0oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtSBI0oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB51C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763114993;
	bh=ltm1hC3S0CHz8EUbpd7tvqa1CjBwFyddUb+K4WY6tdU=;
	h=To:Subject:From:Date:From;
	b=BtSBI0oqsvoZpqBuRlKqo06l6NlhMLLtsggyWttsTCz3ExCL3aWnNt8a2ULlbYeLy
	 XiKvDi3sVFygtDj7eNgnk2/Z2YLnuoIptyTJPkhGA/kDrJLJ+9eyqaQT9pkjCUQ4Os
	 og2cLYp3jRi3plT0S1xEZuP4W9ZZZRyWdnwNzAesXfrdyxULtQBHrQjwA0mNZcFdIb
	 0ARo4Iw2VOQDqVXxEaLCaJsfJYO4vCuq+c5UiZ1d00otX4kkJhJxUZ4QVAa/rLs8tU
	 KWNg4NSIOeioZ7sYfuYf4DOIuJVPu/PwWOgbcX+Jh3lEeFxNorRCHTxHVqyzBlVBQf
	 OWxHSDBWIKgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB8CE7AA8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311499359.5444.18430164133115523049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff29751d7efb395e76f69f3d36ed4c46ac5b5d87e48e26b92c0a0a9e01300ecc
Date: Fri, 14 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763114993
