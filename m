Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2117C1D5150
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750999794; cv=none; b=VnAlAJbFf8S3ZlAVMFv0I44RD1CLFNgZbZKVMxMTmnnkBrYJT32kCAvjeCUkJRk+/tlDgEfMqkyiY4tsXIigvMN5TVtgHdP6MeJZAw+/s7nHqX1aTx1j1VL550EyfNzCliKUgPcxluSeCUcFwq5T52mBjGP7L2ZCVxqCrrEY7Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750999794; c=relaxed/simple;
	bh=Ex0ei9hAojSaQ3vSrtxuvmcYFkAV/qqxkrcQsKV57Js=;
	h=To:Subject:From:Message-Id:Date; b=Bge9CRY+bOnjT0nIaTSr4Sce2gwvOd6s8h8RRpxfEto0ttDS0PhxztzfPX0ls9QSXGXxpzKOh8VUMwph3UR5TsKbkZGZBtGTwy+wnLwbV3c9lGDXHIGrjpgKf0TpZeTe+BqhCKAaCSTGatKlvvj9ypbA7x7Y9OJ/AjB8mxmvTAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBqrALCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBqrALCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750999793;
	bh=Ex0ei9hAojSaQ3vSrtxuvmcYFkAV/qqxkrcQsKV57Js=;
	h=To:Subject:From:Date:From;
	b=YBqrALCXm6PlVtbbG4gBaJjzmUyrB5ED20z+ddmu7VmXKxBh6ZunzQiE/GpOi6TnS
	 7gAXeQd1LLLsqICYv9xskwo3NRAKOTT4nl0IonpD1z2m2bhZKymlKg/kstsrh3n9LI
	 7kT+TDoRtx/ZOYFYAACxnb8kiaCdJzlCMsjAWhOXvY96onhnqivxuLhk0KgMBya1AL
	 zWDJ4gzvVbm9jaWobTrD58c5C8ijCMQbNgTf7YD0koRoq3d/jRbfYbtMN1iMa6/cmX
	 Phq2JYxl+yrlEjVQEEUNexpVs7Gred+iaK2W8nVBchWIvFiAhipY3Kk8SjSbBLByjo
	 sMcd07RflfFgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B03C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099979360.26676.7604510698098454697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84faca432895e9b5e78c81d9d629e73da73e6e09697b914b919d791590fc680
Date: Fri, 27 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750999793
