Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D7A140E34
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751647194; cv=none; b=LXtiWXRP3cMpnV4YeugrVKLDiMgISpXXgbyErmiR2C2d0bt2UfALVtp6LGP+7xHZxg5f3L+vKJmqWMSOn/RhtF0ULCa+/fPJveYsAZvCSUR6bfhKlT7t4BEB1CxCJdrE7fU3sk4/v6fDCjmNDLd+FQAE+HWrQx7MZqReeKtdqi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751647194; c=relaxed/simple;
	bh=nBafZZFLlE0Uj7Q7drL7qBOUoFEeUhHVV/xLKgH1L8E=;
	h=To:Subject:From:Message-Id:Date; b=mKQGBjK+IIV9gvCNdnFvB6R6JihDOeLu7J2FKr9uTtN/BakN0YYxoOfkQI6Lc9cSog4/eTDfUrnTEIXnCKuEnQXSOy6KegkDbtNiLmnHwCyUMb+7JjRzQp0+fGwrHe/rq0Mm2S3u/rtOUhs3IeqgNmiS/575kEnFP2kqrU4H3uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKcdwWI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKcdwWI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E3C4CEF2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751647193;
	bh=nBafZZFLlE0Uj7Q7drL7qBOUoFEeUhHVV/xLKgH1L8E=;
	h=To:Subject:From:Date:From;
	b=mKcdwWI8BlBNh5ZPYB82Onfm/1SlvuE3D9/rnb6PE3hyHI2TW6KQ1wRTbwyzItk/W
	 zY4BmdwGd9m4bSRKxZCRTCGsB3hjFpNN3ZJYEgF2dfoy7MEa7IueBgGauH5dN8njvI
	 JgvAwLLE0ob5gUXeh7T2DNvUaJAuVyi7j5VkNUtjPmZlOHK1/nUntdH1fM6z0de7dv
	 mxFP3Sumet3vjqr0kQlCF8h5oQ7NuliE/LNFwgNIevh5ix2WmeyabbPH9Siq17q4/O
	 aR5x67swZQ+41RYuOHwASCjL9lleAKzKmYabQdlbUhh9vBsIPOsH2G4O2zujWFHyvn
	 yc2Xb8AbVl3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7CC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164719358.15620.164387967045159434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915453b3dc09af5809cc99d2f71e3ce136048df06ec4367d590b09fe92db3789
Date: Fri, 04 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751647193
