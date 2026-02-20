Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428371C8634
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771551894; cv=none; b=hGDJA4PCVr/pf7+oaz4bgNuG5jajASMVZM9GSjON5nn4ulRSgIqyM0sDQnISjTP3TUyrb5J++jjVxdx5hXQzyRMkwBLrMXqe7viGQVnFAJBVN72t77DeT5uTTcaG59XMn4Ga+XNfyz1X8TbcHgpT/83Lv3OKcIX3Uw50JMa18OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771551894; c=relaxed/simple;
	bh=fqTXpOotluIWRyDPsBKwCiQRRCHEGlCvlI9ZGBkNBaA=;
	h=To:Subject:From:Message-Id:Date; b=tntpOG+Xzi9iXkZNJLPReTnMmomwYzTG50MPNjYBL6uYCmVvbpVSqcD9h6jZw9Mki8mWxRaQ8a4j4oY3MmKjiQxcf2bxY2rc06+rFqb2N/ozo77TpWdYoNCl1WBRmrChzCLMhSsep5FHdQk4kUVKaQUEdPkNi8nPB8/BFPKygnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfHYBlSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfHYBlSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DD6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771551893;
	bh=fqTXpOotluIWRyDPsBKwCiQRRCHEGlCvlI9ZGBkNBaA=;
	h=To:Subject:From:Date:From;
	b=FfHYBlSVUuyyD2eRULrh0StEjj7wpeXI76yTkYL9FHoKJPgZ9idOkeqUyK0YB2t2U
	 QSoIk4I6471o5q9L14kJ59dPoW7nYQS+YQ8MmzGo5zVRXEoIyIYavkahLppkJPMYHm
	 uD/Qf0+h9z9F8G2mGapsw7wKVYdkX8CWR3GMnNNR6SrvrJenkx90GZYEiamzaMVSkc
	 UjFBI1C4Aj/DjNg2BqtwcQmW1mg/Dv8dXFCZcJyIKYo+VW0c6Lkm8YM4Nsq07IqAtq
	 +qd/f74zGhGy91Fe6k6JL0RxEpuy4bOuoaPo0xECs+DBRvzTimhSNk4RTnHWNrGpk+
	 8TRzeGpRSgvZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E7FC531EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155189360.25859.8469389541266394476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8643085d30b6d7465a346f8221e18a7d08cfad6cd607703c5a5e61275d406cd6
Date: Fri, 20 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771551893
