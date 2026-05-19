Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D627370D5C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779170434; cv=none; b=mAajKDr0jM+3QSRpXvEA5wv7JelbcASm8MD/InbS1PTig1nsa5xaWRQXHIX8ggyIlqrm+R+Ov8B2FDvmjN3lUvWzmgwJatjgDPrAOVOPOCuRIYN9fJlvF/KYqN3Y7sZvzdLpeBDr4YwaiqKbrEEs4kRSYws/rk89Iri5D5FMsGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779170434; c=relaxed/simple;
	bh=wVRT9CbWupOQojOqAVlKTTDSfrbmFu+bHCG3zpzjmhE=;
	h=To:Subject:From:Message-Id:Date; b=YUy38a7KN5g/cgCIAFpzOxjxhczoDVD5E8xyKzKVf3bpZOKYZlUMCDONYO1WWuKyG8Z2bFENBxo2+J5ytKtOWZoJzHtfhNnN1nfUpdGs6gpAxTHz4hXfQfDp0Gg4XwF3LjLyR5K/p3WqYuTRkFPKj11eT15/eOYebTMXEgP2HSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qkl7mEJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qkl7mEJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B5FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779170433;
	bh=wVRT9CbWupOQojOqAVlKTTDSfrbmFu+bHCG3zpzjmhE=;
	h=To:Subject:From:Date:From;
	b=Qkl7mEJIccDZbgHe06Bj5lW1ICsTjWwr405NMUPb0eh6kwfY+Tl7wcIjciF7Mqe5A
	 f3CJVPeC+M/Knqt6daIWvsiADp+yRzwrnAAhOjfeGT5+owyoRTGnzDAwx2ztkHT3Xu
	 0lLaLmybSsZFtQieAEFIXYNaRSo+HV5J65sMME7ZpmmSeDh61Oi0TEO2nn1fgetT21
	 PPiamrDgEYqLcB7ayWj0ggfuAAw/7+f5ZTWM80CMm6pN5xQqFlLyNjCCG3AlXQW3jf
	 JrBYrMXHrD+DJGCdbZ7Yi8/S+ChOE6ZBDJaIcxbqy/ooC4YlrT3R/NMR3VeBiuumNg
	 moeRTTH66sYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B18CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917043374.6236.12762689891643958172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ae5186a2378965fb38b86ff003a6e9c2cf958d8f437ad7c8bcd328ac8b2412
Date: Tue, 19 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779170433
