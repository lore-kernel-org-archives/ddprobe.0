Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562AD17C79
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715209343; cv=none; b=ecchWSF+KolzPG4TprmG13tGxfbcgNAKW2dB+fjxbW4hXWACisoHUQ7nB5eFPxgAMGx1yN+OaKCMMcuT+YHQovrBxGiWhfPhNJRsdEZOmr1Od9kbBKrLaUQjH957VomjgR6MGflawFU97by2vbOX4hWXGvaQIOBoDTxB2O1E7rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715209343; c=relaxed/simple;
	bh=Me5Nl78PXOdihJjKQxMEIGSXFOLYYrDsEkyhz4RDADI=;
	h=To:Subject:From:Message-Id:Date; b=mFpFfRBAQWR0bXlsVqTNqT0BqRG89TsHh5tTMFyf9AeO6je++qUaOuX8mBPeuCajDwUy/2dOY6iEd/L5H7gQaPSZGR7CLRiYzGRFgAhe3x4ST48XkFuGoepJLm/fg9G672Pefh26ryIEkZNtu/wwmdloRWek6EQWH64qc6C3Wq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFsHzXCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFsHzXCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC288C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715209342;
	bh=Me5Nl78PXOdihJjKQxMEIGSXFOLYYrDsEkyhz4RDADI=;
	h=To:Subject:From:Date:From;
	b=rFsHzXCAeC3He2LUkk6G1eyGvm0FYoEy4jlVl/lrxiCtDNTwDs8QBEL+X1hv7D601
	 /9NCihFM7R8BiznqNTGjv7s1t7gGInjGx/RgnRwpfzaLcimPnFi5y3Z1HodfhqEbmH
	 ovC0F9kRmf6QTscUuKb/sogbhCe1Z22kTqBaPfhcfD3G0xAup/fmhPEwUDbS8vORIO
	 PKK5cUsB7rqnFdRJzFLhKEsL/DKAd+kK4q0gNUoFfLk1iqYHl44dAtM5kgf47wcv3m
	 wns+Z9/jZ0+WuP355diYDfpYMnOiieNaawntysxdVOzBFw6nV49t9drgHxKPk6R8Gw
	 lQUYB4KG40wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FABC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520934279.7765.5864358415203039475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362fc314fbf47b9b05e6e46317880404abc81836d481b7cc9eeafdd189b1ad7a
Date: Wed, 08 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715209342
