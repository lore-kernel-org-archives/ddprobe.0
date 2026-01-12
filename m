Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46759364046
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768239834; cv=none; b=QsZAhfRfbLlujtFSqjmS6doR7NLLEgcndb/gESvoG2zjfk3VRvm9ArfmGcGItIgUTx4icE+aU1dWTuNCPVZ04OrsEcQ/XSDNcLYvgTA9NTLfpETb9E7Lgj7qGa7/0i6U9IataoMEID64OO47e2Bj+tcn2R2R4KDzgKvyd+bjX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768239834; c=relaxed/simple;
	bh=oYBmqjBBpJNCTQSSgvGHZ/11rUzgAZHZfOuhQjj20RA=;
	h=To:Subject:From:Message-Id:Date; b=meVZS93gK+SzgmG2EHBW+xGudX2KF3CGAASrbml2s63HRWbAuO6/ThSYj/ILl3bpMFiPUTQIHBVNGsI7prsoZfKH/yedDhptMuAt6bQ4CZ4OGbOSsHIowmIDcEqjona2gckNbo1vAdAg68IJMz+mLq2nnYuLZGkvtEeRSKY5gCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsIUq0E2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsIUq0E2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BCC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768239833;
	bh=oYBmqjBBpJNCTQSSgvGHZ/11rUzgAZHZfOuhQjj20RA=;
	h=To:Subject:From:Date:From;
	b=hsIUq0E2zYoF+NEaACkKx5MnI/lpZxGaqob1EhLiyfQVEty9LKa+fiGpEN4D172ik
	 ucO9qMvmCCjx5Da2IRY+Rb410RhCEOmYxZ6APEP+NRajwtwxa7mmrw93eHzgbmt4yi
	 BRp36jnw2JzlSMOaNzkTCdpFilB1ncHtUvbPv8leBl3J5RLe+FpWxpf0IbypDzG6qz
	 Lbl5u/WAnVZS/Hh17tqWQdfxOMI8tJHvslCs1eryfc/mZaZ8IvcaERd5aIVDInv3SR
	 CXlCck651/dengr+jruo91JTEy06g+W1kEbDz49R5eWi2xI6gj8+hRBttctscn/yA2
	 mPRj2aaNctXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90776CF45B7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823983358.17170.13464649091284689927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5520079b0d97915c6d0e78012618dc8641a873997deb27a41630e9b34fbf12c7
Date: Mon, 12 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768239833
