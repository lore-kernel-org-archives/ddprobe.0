Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDD81A2C3C
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726008354; cv=none; b=CNAaPw0z/twj8RbBJJu8UBRaATBEKT3gbDzoPsXXs+o6HyzUhEgp3Dh8cFv+eVnucdj/F58ho+Ol1Yqyvuhl/ev2Hlkt/Lib72aBfveZEFr06daHGTUVLzupsi7+V3QoJg176bFrzjngtaVGhGznrNvAQZHZ2H0g48vweuS+2vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726008354; c=relaxed/simple;
	bh=lVYQU+VVRhxr4ux1fopSpePuTGaoBRpd/wRuwwbO+wo=;
	h=To:Subject:From:Message-Id:Date; b=WnL+KMENCSCATcCc68tBYAeMrSWttCWeNRb8zlPVxewLgUl64u6gZ6NZB/3ce8uqZl18gBsAARtD//bgqkfWtGJk/BeLtcZdxaLSSp5ppRV5VDqjwtSnaFSNdssoEuAAeSKpgvRCbe7OtwpXAeMoYirC7Y1ME/xCv3AvkVWhw1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Teaal+g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Teaal+g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B86C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726008353;
	bh=lVYQU+VVRhxr4ux1fopSpePuTGaoBRpd/wRuwwbO+wo=;
	h=To:Subject:From:Date:From;
	b=Teaal+g6glBDZZerd6NAnyZjEF9wEsGQO8EkGMSDuOyD0RucAZ4xdkdOtcLqsFbOe
	 sOHA09jq8xEZqZ5gn5mqVJNgyZ7R0m6m0UqkVb6NRRyUKtv5FM4pmZq33qyW7i3fby
	 W0P0pg25zLgdITIf4EvE9OvJeQib/s5h2H1TOqEFlBgEJs3c0rztUJVC7/KRX5J7En
	 rJLPFWlu42A9/3vySCEkTGJCKyXG6GQOYazlFM8VUle5Lb2vd1IUh+1kxnFCgR7hNd
	 DcN/rN12xKGnEhv9V9flDHdAw/TRweIx1PPbHTXoXPHViWKRTYWryQECDoPyLRu3xA
	 KGdjlKY91/maA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE945ECE58B
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600835366.21963.4695593765909925243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64d30289eaa97de49643f62763a09f7c7c320df1aec9291c8880fe38baea367
Date: Tue, 10 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726008353
