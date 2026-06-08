Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430FC17B418
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780959874; cv=none; b=FeC3CqxZn6jRmumSYtlAXWdBUV39t0hGdKEKdvJJEOwSzSdBB7EtJark94aoLL2oPTycLsbKC8C8b73Dr7HGTS/Oi/2ibW0aU31R82JgiM3++mQ5DhOdgVHawFXd7x7c+VyxU42druvUgJWI7ngTcIu/xQ8WohDsaGuhuXM6sQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780959874; c=relaxed/simple;
	bh=ywazYjja+7HVw0UCThtAu7RAo/N+nF7E8cjfB5d0fmw=;
	h=To:Subject:From:Message-Id:Date; b=Alx6e9y3FsRVnZIAyUGjyxkigZqUQNQx5t00XzIs9JePQuU0TPf54vZgQRu/ItxmHtlX8A/KR3PXovf2Al16hPGKJ8b4xFvCU4+WRfLXPGeR/fHZyyIObtbzqIaxcjh/+X9b5Tz+Clq57EMUJHP93fQR4hvoAy5tYXNM98s5J8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWGG4F3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWGG4F3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EB3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780959873;
	bh=ywazYjja+7HVw0UCThtAu7RAo/N+nF7E8cjfB5d0fmw=;
	h=To:Subject:From:Date:From;
	b=oWGG4F3cwJex49yd6Gw2cQw58vhbj0oYVUMtM82uSiz5cOuGd6nsvLDEHljQQvrV6
	 tiwJSbgzZDo5xHGs1LJ/jOp12b2ay7vg7DCCw/wDR2Zof5LjkibAax1g22YEQ8bedM
	 vPQNRNYPIBn8Pk8IONw3y95p9/nFKmBfWOQ+7vEZ43wDgiXKMRBQZA0ekl/7I/ucGt
	 +CDpfInH+VL99IxHMez4/GEiOL8SvK/tGVTS2gpJVqgU9P26jTWfME96VWohW+OmGb
	 fR2EN2k9hqde+9BPQVsnSoSnuQ4gelycpwzzzffjSQ2rJHbOdw+x1aItd8oB6CO4RH
	 m5SP3ZblNMkDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6236CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095987370.23815.15401127114697779940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dba75a29b2ca55db2686fca143bd4b1becd6ec0780f01ff5e78a91ad5c27ea6
Date: Mon, 08 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780959873
