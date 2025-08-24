Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08B0B640
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755995993; cv=none; b=Nqmkj5c2ujYvW09ZqOHmONQFFjvArAvQ3f782kTxW1U8pxceyeZ4E2uC1FEDpl9cKVr8QQGSlLMfGAFx9ZcUzVemWiLHHDGhf4sy3ss0W4/m+GKov9V4qGaXc2KsbUUO8VcgUJ3sBIv0ya3R8xq+kOSnQ32Eqjga7Se1zaR7YTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755995993; c=relaxed/simple;
	bh=B7mca5Z3FrRI3GxmUV4RW8iTLQoTNNvfpCdoG0bBCEI=;
	h=To:Subject:From:Message-Id:Date; b=EB4G1E7UodjAiJ45OtEuLDhK/Luhy+EGxhJH/hdSBU0IH18sldeBMpslWzhD4wROmDyXFUqNC7/fDFlUfJuGf5Ch6xDwNL7yerfCzHdlPRqvihS4gUsyFQx00KQ8IDwBxNxrV1wR61JKfjeCSfPQJdAPhcL4B7Uo+bfVlRq5vUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzbPr4wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzbPr4wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CCCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755995993;
	bh=B7mca5Z3FrRI3GxmUV4RW8iTLQoTNNvfpCdoG0bBCEI=;
	h=To:Subject:From:Date:From;
	b=tzbPr4wRaF5IoRL8dc5D7tr48yRFTxo6vTQm0FfrC/9xWHkhAKyPGze7Fdmq8mLow
	 roXqMBwpjCP9eFEI5Q/gZSqGptXDUEZKz5Sucw6vvZzTPu2FNxd/pb0V7hYgzHtfRY
	 S45GAs8KzvbOW7DIrDPI7SZhaUftIGSgFenqsrRIJNUKrxdl/38Czq5GpTGMA0Z4Rf
	 iHeFWrMn86n80lOX8M2qrZnDbY3lrvg17Lf4tEC/zkJU6GIcmrjHbFZt6UxSRFwIK+
	 4Xdu3LvKwkGXbuIrcfBGrkhyzBlrhj6Uhhj2pKdlTl/IICZDXNM7zFxLcx/wh/zaPH
	 YPo8ql54McZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92986CA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599599357.31342.523925805752844124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54357f79d7fc2f42967710ccee21b9e1e358338988812143b063104f7e0cf03
Date: Sun, 24 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755995993
