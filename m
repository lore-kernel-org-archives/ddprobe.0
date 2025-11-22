Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BFF635
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763781714; cv=none; b=tz6hJGbYy/tnMNgWFR95nnjAO6QZXitR6+Mnl/Qk10uQQtNenZ0sN9jlWL4mr3Z/I4HVNgDp0k/8CtrBPPa60iBe9fHz8pPvtcpne9Pgai/4H9zPIISxyuTV0nX4YH3XaoG7HV0+jTH3I8bfzmnf0sQUBRzYBeWaLvkz6bqRfYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763781714; c=relaxed/simple;
	bh=rs7Y6ZImG/QRkbkXyIt1rP8cxafrLggfDHgG307wbjU=;
	h=To:Subject:From:Message-Id:Date; b=nmFrjKoz3iJVTgw76FCQmG1OGfSlb70yDEkti5AH3VHD6tGEFJje2ofB+pyHFARu3oF2LebZWObj7fV4tKNPdllbAYNyOcvoPMlRBgMmHE0BVtp2y5wyXTwBYEjNQjdE7+ExFdAGyyZ/I2SS7P4iB4GeUZ8M2vhTBjZ3MxKVUiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qePuspXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qePuspXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763781713;
	bh=rs7Y6ZImG/QRkbkXyIt1rP8cxafrLggfDHgG307wbjU=;
	h=To:Subject:From:Date:From;
	b=qePuspXS4OZteluLidlJDXw3DK0db3pQWoFMv3o/JWO6U07rna9NAXJ9tTg6UL40+
	 3VUaDEbTU8LGHAF1GHkvI0i2/dYGD/NfLBCbxtNiutDxR0ET+bVOqS5DX1f9KC0VL3
	 dScOmXEk/tbdbW4dVGwcv8Yk6mnYzbjmcjnWcqzjuks0wcZmecM4QiXyE8bzyj7Sw9
	 YCbDbitCqvieSaF/hgVdeBkV9yM7Gm0h5szi914bOHVnIBEWVEQC4tpmTotI1qmpN+
	 TL+NQIsF6L+HSKMztdu39OcfeQLLisF08Q2yrU1MXB3dMuSPapWKDJU5jvUwqnEGTe
	 RjOuCGGkiHKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A5CFC518
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378171359.7188.1285001822575750632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942efa9bc24c7b12de0b7e429637010ea3c7a3b4393728ce9df204b70adef6ae
Date: Sat, 22 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763781713
