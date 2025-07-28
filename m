Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2519E96D
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753699794; cv=none; b=VvdVWREkS559cku4wPmSw/sWUlDlqaSZ7sPWZFZutDK25V1VjxJpKs9xGSk7OsqentuNP679K4N3SNoXT/JeXmxlI20OBTGesfg+t5JKwFDkfTzmavEief2WyaX2ku1epCEOGMO+8svvmgYO2Mc0Cmtqs+SmS+IoSOMSZ7jSjrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753699794; c=relaxed/simple;
	bh=s8MkQXvOzPLcbeiJgnbjXX5sT7VRdQY4BviV8iCSyiU=;
	h=To:Subject:From:Message-Id:Date; b=r+xZbSxhbI/KaRJhy69nIoxKmo4e9oCMj+VJ9IBXlPpZZPru+IHp1HNdmUSvuP+oT1h6ScXYk8Qr4zk0bMFfYiPZQw0LQ/kFdS6Uya9SK8YB4OCxcnvCbMwiBa2y8wysgKJiKhVUd1UIz9QQ8rGkw9xGsuCEoRvAEhaTMRd/RQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb8fNEGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb8fNEGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2924C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753699793;
	bh=s8MkQXvOzPLcbeiJgnbjXX5sT7VRdQY4BviV8iCSyiU=;
	h=To:Subject:From:Date:From;
	b=Cb8fNEGZXeUYf1HBKQ0tFJL5CVnemL609F3jJiReUxAr0gLF0TCUlF6o2EfHlalij
	 eEdauRpcBJS505gtgLdCXAH+jUjuqGBw1dcVySs0c2uLY5I0vU8bTuOPffVDi6/r6a
	 HX/7UMZYOep3cuOkeU+kDSWo2o87GPdPFAECDblVYR/iFyZFfYT8IpQG86Pc7e5o4a
	 4DXci9GLv03hI2cwZPT7yZsr7K9kfg/40nT2EBu4W1c5u2MeUySutMOF/1lt3988TR
	 wlAp2IvnvL3BPcGTL7sR+ZufpHry6gyxpC2rFgt9S0TE0z1xhmGmh1Oov7mehTTrGd
	 AOOdXHIartBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1EC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369979358.9738.8331004916561444868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee8c0e51e9010f500a5061880320c189d218b40146f6b06765ee4398fe1607b
Date: Mon, 28 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753699793
