Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9051B330D4C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788351034; cv=none; b=fO37JfxKEejhuntDBkQqkfjFJdWpRs+L8Je6Dkup0XFbZ6QvxvhPiTLPiuGK7Gj3MOKa7G24xmd+1SAGitiOAEVGxArRUKDbpyquqVe32NjutIojOhMH0If2rBWLNoDkNIQ6avn8BGIpecaRe8COPxE7iUw5tPrxKqCPqpuTQQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788351034; c=relaxed/simple;
	bh=b0V8mvbiNV+dJWmEX6KQiUMCmjW+I2cCufq6WZg0U8s=;
	h=To:Subject:From:Message-Id:Date; b=UZRbZhp0B1QMu1Y0cvWCxqc1k7ZHcLi53ek9uW4d4RidS/Cl1+WHKpToAhsovFcKJlEWfcTv+aJALvfeK9MEyIs9eA/EpBSAeNty2uueDIk4OngcnEkOk2C+l398i+y1h+rZl566POjaa0qW3NCb0V4ZGZnm7bb5S4aQ76GEI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=higQZ9+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="higQZ9+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF17C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788351033;
	bh=b0V8mvbiNV+dJWmEX6KQiUMCmjW+I2cCufq6WZg0U8s=;
	h=To:Subject:From:Date:From;
	b=higQZ9+P2CfEm1n8oTJr8qc9Ui3TiDFTlKdjUQDlys4VIAvR1AZXC09wLIWo7V7h6
	 7SxUdSNCWROcEfE/IWQC6W7CxcAHfbR3z7cZpzhUndHLKfsqm/qcmy7y1DeAtzhzNE
	 7mZG367iykJ3LGlPWaUheL/QCdmOZjEgE9uzen/Kk1xdhkYolAM7fr1gCrH+Nd73Rr
	 065Ar5YTl4iveG5INTT6DmNxCs3ak3BLVGTeL4MZbSCGpKSNl9JzyanqssXATohvWG
	 pEByJn7t96aqNsJc8X70gpBOL/0nNOi14UPl5UBVBgHXkvbuNr/zNzr+1DdCuWA5j1
	 +F+Bhzp6y7hbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8CFC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835103369.18275.16685038919585997021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5463c16c4f132f1b3a556636f78e18b0c43a32ebe5a8384406a65d9675c1759
Date: Wed, 02 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788351033
