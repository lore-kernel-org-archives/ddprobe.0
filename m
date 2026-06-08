Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A0A36A353
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780918474; cv=none; b=u1mUPrHiD+NdUvauf7BD5ZjAw+vLVpDQ9g+sx/x411ihyYoylceJFn8Q8o/pWfhBJLCwLn85XD4SDTIkxYzcoEL2owASDUFqZqEk10Cu8+IsNc+nEnBSJiZ9C3EytpcKVjGrmBR77KAVikhEUXBZ+idZMv5ph8WMfthwGQgUROA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780918474; c=relaxed/simple;
	bh=68NjybvZCdbsfCpPHtxRyJeQUA8EKI4sY2lkkcTgCpk=;
	h=To:Subject:From:Message-Id:Date; b=tteYRV2Zj5fBWNCmPlrA7Pu8e53yhUJsyk8htI5HIYVf5wtbZ5epV0uehgqfn008a8rYi0DCOjlu0vSNqtK4509OBWRkn2r0ctFNgABvUxnTv0Y9tbJiWirwv8bTby8p2VMOUSwtxi19oR2Iqjgz8BvVc/3OR/34U4X1CMpsEXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEcS/4/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEcS/4/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0488C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780918473;
	bh=68NjybvZCdbsfCpPHtxRyJeQUA8EKI4sY2lkkcTgCpk=;
	h=To:Subject:From:Date:From;
	b=WEcS/4/aBNxkLjSsPafq6Lfen+Ot/b47Fb/iRSTrNuv+ywDY4aTXntjLKc9jHDJVO
	 c9i5tZzWdlUH8bvQxcUPkueej5Td6lx6woUvO4gxw01HPLFBRGNo+2OQzcpGLMdBgP
	 clwqfC2M6Zt+GyCOGjgm+h0ze8K07luYJ8cFe6Nea612NwXQJYDTMXvtfKyROoz/vm
	 y78yv1cLa5r1XiVPb2Reg6OeIkP25nXJhG1PzXG1rE7dt7nSmSAXD5/Kn0gS3easIV
	 BN6ENE3DlRRnBuOkh/ro4g+Dcds/BwDSfNkUtHy4xY/DS0Ia5PIBnvKR17yCosUuk6
	 5tF0Y0ed3FPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9616CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091847368.7160.18242927508339989630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c4b16317ca40e197b2e9b77096fc117067874c90c4898fab329e261be13a39
Date: Mon, 08 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780918473
