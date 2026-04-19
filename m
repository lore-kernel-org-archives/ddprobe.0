Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F87523504B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776620254; cv=none; b=ityamF0G3A2Xv6BivoYzCn7guextwSLb/yE8TXPda7sB7ylj/AXo31VzCPd3ZKQGfIItUC+P9+qlAegNUraQoGvCQsmqMz/JU+hlKmSBlxFfIpdO3LUvzy8w5KBsTi5+YcyRwE+IekYoJA6HrIorr2rWWdSXnUz2LmW8X3HHXPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776620254; c=relaxed/simple;
	bh=HNAfYFx9a0DPR7IrGpu3nXBSIBch8/UaPIlDGWmDQAA=;
	h=To:Subject:From:Message-Id:Date; b=NO7N2hoAiFzT82/DrvHVF00ALwBxpx/I1iR1nWi+o7ijGOFM78ac5XFFoMCHwnSGFbNzORyZH51VOxQtexHxRxNUwIosu9k2IyD6Q6aaqSdstb8CpMP82TwynjOQ46puIh/X3HZuaXKQKmpJRcwqNqnuNL52/GSbBdlAatnTAxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3FbWUgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3FbWUgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2527C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776620253;
	bh=HNAfYFx9a0DPR7IrGpu3nXBSIBch8/UaPIlDGWmDQAA=;
	h=To:Subject:From:Date:From;
	b=S3FbWUgdfyXzRAP55bXT+eAgO1t5OOh8P21+elN7vB8d+XP9v8J9aFSISBsEVmZfc
	 xeKQmWwqnMeQ5L5dzw47uIYIIwp7kCIhykeB4wcu7noZ4ySfZMuQkr5DujYkn80g1C
	 BOUmxXTymLMV8lcnKBytS90XyHSplbAYcxRh5ITbWwJMbz43tMyQcWb0/r74kuPFDq
	 cZPNPayiWIcjMprPuQr9YuXaSCr+8vKdy5K/e+8CEDbtOfYPSAXCRYiY3Duepnrgio
	 PDASh6CdLSzY9k/DLR60QSFyH2dsGeCIjik7+edcaXiqb2uPuUS1wq3PzmQUaAGd96
	 p3wyctW/Ghc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0796EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662025368.1923.1628035444340035105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53c0f1ddfa498694e55057169f65596b9f8271e943b9fd318f7cb73c5ed3572
Date: Sun, 19 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776620253
