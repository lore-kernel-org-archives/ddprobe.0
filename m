Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737DD1F93E
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715187143; cv=none; b=TdvzMAhUnOOHp7b5OyB9K41aLyBfwU4OuZCXJd2U3soTw5apk+pa4Wrwfk8q8P4PNYJfbEhHOmnzV5rFGVDC2ABXqtWlOUmk5jjkRraH80XezE8PQHdkXgN5rKiCcbOK/J527S7dC/nba6bfcLhNIHdDAUDHBAntP6Bp4jPRocY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715187143; c=relaxed/simple;
	bh=tWv+AWJzMPCthe2Ith5+OCkZVHohzfw1Nj1YppTE6IY=;
	h=To:Subject:From:Message-Id:Date; b=Nq6h9UF9QD8Pqhxk3OWY7Cp/3CmGpmOYRaewzleT0wQCLpJCnnlezMH1xxztGV+0MQ/sd27U81xSv3r4GCbGMRHYHmTs1ZN54vObArpza5lMyv0r++yXUAyo0zdDSkoqSVcUBL1OPWRnKG9MrMZFzshiNjXarVnC6W9jXtxOrwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZJVHufc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZJVHufc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BFEC32783
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715187142;
	bh=tWv+AWJzMPCthe2Ith5+OCkZVHohzfw1Nj1YppTE6IY=;
	h=To:Subject:From:Date:From;
	b=bZJVHufcBeux0d4RUE4lKPuBAURLLZWll5EUGmLs1gIqUqI9pTLUjBzbQFQshgbDO
	 WwffZJPe4gm9Zlo9m9A1I/T8Rl4hrY/O24mW23IuCui9KUc1LnqlJpjDEX7wL5FIhu
	 2ESlaHUx8DzBrUJKLSehftSwmC0ejcVRxylmZctqtaLqDoF4NMd3ws+z7CI2AMhWXz
	 hYoNHwZUNkwBKKNUVwDzTFO0gO8nQPS1XYInkAvwvMx5o7SuUaZwEkG/vzgY4hPZyd
	 61LF8A43gDmknM7PXQNRpQEWoXWH0pZ2pjrgh9aH7s7qbpxLVXUGo1G7PtvQQp6AaH
	 it2IgtpSY2lsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C917EC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518714281.5120.17610480433547865650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1800b2721f169bc8b22890ee6947623b80527e8ea75014216d1aab8f77f0cf62
Date: Wed, 08 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715187142
