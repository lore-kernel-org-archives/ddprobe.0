Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D7E1D8DFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757582394; cv=none; b=rbPLDC8vGt9x11ukB3GTNEJt1aDYnEXClOmI6iQHOtZy7PwaP/MvTiDXDQBQdQzBtsH2BZgn2ZrrRk67fCmoemHz6ns7c8LTtRJZ9HWDsNSZORwRkPUBafO4CD21WeeWGDR+7E65pAbUzcbWnT3YPiWA5RaoJVO9Y/2XqpA97u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757582394; c=relaxed/simple;
	bh=2Ro4OYwPIgWJiSMmNtopXDd6Qc0HpdMR6KoNPBktpNI=;
	h=To:Subject:From:Message-Id:Date; b=BghVU7jUKgJXcWF7+tdglfJ9EDSuwwfNG+SJceoBJFAvNR5NwLyBqcyk//+T6LZ53VH2XXXIHQTudH+h2DiPmktH7Nh6tdLcI/Hfirxrh8iY724D4ufHrzgf227TarUBHo1g1ItX/V3SX3ruTRwtfIaY2jOyjtcfSqcYU0RnILo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKfZnS4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKfZnS4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F56DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757582393;
	bh=2Ro4OYwPIgWJiSMmNtopXDd6Qc0HpdMR6KoNPBktpNI=;
	h=To:Subject:From:Date:From;
	b=GKfZnS4lt7lQ5xyFlSUWLgZL1Hxo5e9hafL2xeNChPcwmcxQbLJmr0NfDNsjYO8Po
	 oKQZGROqI6ZbCzPEtdAY//WDMjbDqrf6W8r2LbIrbsuml46oA1t4MMCpojn44oSMYO
	 7f0RiH1O5Rxi47f/nHrfVqXeHuk71IrVTiJXZlOuyODyLxtk47Y7DtyrG3ofJA5wrW
	 a4zr4krnmbo9PfFiogYcvL4lyULAK/STFm7VmKVp3CCJIITRVinTojCA6BB7rZ7L4T
	 ALGqyygjmVNbvwcoa/cjA0cFmGcuTIRtUJztBjI+qanJMAXqurXzK2IyY3LN9l/0x0
	 A3aCN3YwZa47A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FCCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758239358.28627.2232151094588554158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb5a0d4e7d30ca779e631b5ce83ec5af734cbca9578e1bacc2d2d4a12a02f31
Date: Thu, 11 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757582393
