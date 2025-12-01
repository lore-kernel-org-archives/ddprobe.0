Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29394303A0B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585174; cv=none; b=CfaQH8JUsmGDdfu4wWoGanEZhm3MLZ3yR+EuFGnkPr9nh6VNj+7BwuCJJcn9dck2n44M1teNLLg6c1mfiOqvza4yuAvQlMELPyyItASpIKU3SiSjE1q5k4PvhAoz4OHvKZWnfX6iVshx0M2slOqQKzG04iwtv8qceDcGWuXhPo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585174; c=relaxed/simple;
	bh=y6s0dKRDWB12zw7Ie0T9ROldHi+ocYraguJuy9N/p2o=;
	h=To:Subject:From:Message-Id:Date; b=R6GCTAzqgVLIf/iynG5UkRKxCe21QlDErZaXfVBGd1Tbt495EEBG8GLd4xIx19HWffUg7n+XvhMdziqcc22tLJyDxnjSJmGIiSxOE3ASmCojzMMDKfAGmTasF/nN6IsKAF+BI6wGmX4xECOnMXXudCFfPPXRKQ1hVRLWY+tTfFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApGCMkAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApGCMkAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA778C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764585173;
	bh=y6s0dKRDWB12zw7Ie0T9ROldHi+ocYraguJuy9N/p2o=;
	h=To:Subject:From:Date:From;
	b=ApGCMkAbXloocNNrHZ+cWZwHbCLGdX7qzn7NqSdxvoUCB6Kz84pf3iMVxMCpR8GwW
	 WcSXcd68tpkn7+FwS3oHKKVjcUmykh7j5/6odCy3zmeNXTwmc/6MNioOYm+GvuLdHC
	 nNw/BCtDs8u5nSkRamsqSNWlUkrJa1KhFo5fKjjI9UYEachPldBCJlaOhY8XkPrVMW
	 JDraqsLmCHFmk3GLZt8M/lhxk1vNK5N/TFLTkVgCVS8FIjQtx9f6ROuDujU7mYsLuC
	 70Bg/iR2Tdyby2ux+5RuRc9zNWye/fqXqL3fvchxumyP8opbQ2aDrht6GoXd6PYlSb
	 JNefr1GpGYVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95131D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458517359.615.7843913686276601516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a72320b79e15847fbe00ac6ff3dc0f0947cb5d3289696de9e95287db6215e1
Date: Mon, 01 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764585173
