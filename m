Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE93F7A8A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782728914; cv=none; b=JhTxKcdsa9lS6Sd8t5xhFPc/2HAnnumj0Vesubq759UsCmWPJPD6hu9RNctsT/A4U2O7+rQiPTcoeNnchIdmaKcQ6ZBWzAEowTDVwPrTiJ+1RwFzVUmncZ+Z84sx8uJzJTCV4Vp4/NJ3d9BqsMV2bJUGtQZsKpREmNfyesBZC+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782728914; c=relaxed/simple;
	bh=wGZIHFYlhtd6wLYk3XdAc+23/imj01gyAJuL4QXhF0Y=;
	h=To:Subject:From:Message-Id:Date; b=qP24frzb8Ge1IqQNKcTv7B7WOr1cYFwaSVJuF6og3m6dc/6y9u1GOBYsGSkMr4ZkZr2SQkt0dSzAVle+LGkr+y+4s7Z8vNhLEBp8/xGTQP0u/D8YcX48nZ+WfE7+hQJ0cMUReFfiepUn+DAWKPdB5pSxD9iNYiXEyE35FzVEzeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLSzVEIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLSzVEIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A7C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782728913;
	bh=wGZIHFYlhtd6wLYk3XdAc+23/imj01gyAJuL4QXhF0Y=;
	h=To:Subject:From:Date:From;
	b=eLSzVEIKy7ASro1uTUJH0oEFF45qaq7LSdIxyoJE7rlVuTsnt+4mBr1+RHXBHawlN
	 zt+/PQ4oefZL6DJOxetKwtpxldOMJ6Z/BgDKwSNu/pt0fEbpJeqeFeaoEgFktOB/fO
	 8HA3f4fgL6FdQgu11qjDEAgTVij0ERIORieWQxa2fYKQDEQyEcuH31Y9rYpjnZ3b9e
	 5CZrdPiB7tvJ5XUlOEosPiuC6pkfctJVVrWWtF7e4ovmr/tT/QJ+BYmxzDt1hb0cAj
	 KUaOuqiKDCMIFNtIPSrJ4y3Ar2itFFLZwYX7Cb5I/ShCqhFRtdQ8e0GyWQ0HkOnpNr
	 UGhLAk/KjZfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C1EC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272891373.30607.5588416496627967967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b562f5d2d1706cbf02a1b4247d1b5a137db2ac42be9ac31994069c790fc81fd
Date: Mon, 29 Jun 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782728913
