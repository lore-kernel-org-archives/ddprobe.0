Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2433290C3
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778237853; cv=none; b=sXV2SPLyVDuNixKE66rQklqPbNU+pR6/PF/WpRD2oDl1up47z+Ro4V10iPJowCNc3dFElCrsCuXJ5/VfCWu+tjbNyB6YbfFGunOIbvgMmudaToNrwYE+Uy2PJuzXspuNylfH4HYSfFs/vJrgYIwsIBjUdMZmNGwja1s7U35ml+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778237853; c=relaxed/simple;
	bh=ePDgFfc/B64N5gEFqUUJ6yfu4+1sHBq8TQgWFCDZmjo=;
	h=To:Subject:From:Message-Id:Date; b=iyB8qyELi0AIEzF1NmAclJX1y3G9ASp85x/0Vgg70C+nyaIY9csGIi2aHHao9u03Zt4TOgKEATkUoAf41XfKw3tealwAHFDFNtn2bOceUdLXo+YBz1bjM+dooaNb/jykJl2451mBI9CITXSZb1Qvigo+o0AeAueJqjM7cSWxsJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaMA0lC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaMA0lC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DC4C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778237853;
	bh=ePDgFfc/B64N5gEFqUUJ6yfu4+1sHBq8TQgWFCDZmjo=;
	h=To:Subject:From:Date:From;
	b=TaMA0lC2+LHdQpMYQZ7tYopO1vC8nACg/VzwUGzwgZIvT31RLgPXYjkxYfm5MDUEn
	 qojqJEC7Fsycc8DU0RI8SM9s+w+uNjIYOYQEdJscqgp7FP/PtieaccbGG07nzqaaOH
	 taGPmmhUYQfjqpmg3B0eyCbsCRsuOzW9RzGvrhM6CL/nvU63e39HTeyQoLDGVFLL7z
	 sVTihtH0pBmWCKSbdTtF3vNjEvqUmCq8yfhHVd4QtEyVhF2sWQ5f1V8xrNP/8sw5oF
	 XnzRu8tycB7QaablMjexQpms5I37Lg/lhfhImHPjzVB31KEpfmZl/18+uQotoI4saj
	 mASEjaJIssPrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0FCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823785369.3096.8337848774010996494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4684ae8770041c27461cdcf8a77b6fd842c03036800cefb7f9d30a568bf6627c
Date: Fri, 08 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778237853
