Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242ED424679
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789123834; cv=none; b=qV3pWx0hjZM7qdhcAJNHTvek5t6WvkFOcBwjU9Fvs0oKy2mvkrzBuKVadED3u2AzPJUa4B6WtMvmAat80N1ugVFSCqgFpA4SmqmZbeLjJgsiHRd86O3P4MTge12KFONNewa3cprPaDk8J+/rWul7lKyOdFhOjxF/6TG0aYI+Rgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789123834; c=relaxed/simple;
	bh=nQWeceyhjoKQ5wtOQ8HjlBcoylQI0LJR84+6TPNeOz0=;
	h=To:Subject:From:Message-Id:Date; b=eBvmR8F/Xez6oDvHfLCbWm99ukMwfpI+yMpVx0Auy571eEu/UAT4xH3hLkGGwjMfoj9tprieODh6cPWtxEuj4KvjrRhL395i36wpZe3xI8T6pudUFI7dUN4g/5iMmjaUp/mYI/bck5shiRXzpkDz9voT7XlOEVgkIoRQypxkKB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjbMcPoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjbMcPoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789123833;
	bh=nQWeceyhjoKQ5wtOQ8HjlBcoylQI0LJR84+6TPNeOz0=;
	h=To:Subject:From:Date:From;
	b=fjbMcPoTVA7NP/LRcLc40Gqp74X6qFuomsTf8W6FWr3G8Rbgl1lGvbtWyHzyf9QkP
	 YaTy3LZk/kYDgrq0KVcIlApe1r09/eKdDfRN7aa6D0NYBYsiBOcUhCANNeF4xJBFSO
	 2Z7oqijdGiMQdIBKmf0RwwWEUZy8/en3Afpd6gHgyQG7Pr/paq+RvbhKEbvE+0MKno
	 R9EpozcgH01LhzxNLzATaKCzegbVmDl7J4DAD7i83sj544fz6GycQPw8S8RGIuf4O+
	 RJAVFSQalm5wr2j5A9m2+Gzmz740xcgaBzhKETLn9iZsIPnUTJ4Xp34VL5hmZ50fG/
	 OwnQbMw6Pp5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7CC88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912383368.21103.15225469351037574400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e6b1bda8362ce6dc1f7235591f669db3fb737f65c02f167a7ee9a63d7fcbef
Date: Fri, 11 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789123833
