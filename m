Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDA9625
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760054994; cv=none; b=f22b83LBhZ2hUBvZ1NQ4FQv378c/tTLO1rt08UC5EHwu//aVrmxCo/IeSyWuX7axY6Ca8lcr4d9E/AcVzj1KnS/NI/MXI5n+NEzRzP/Ci5hhrn/nJe0jEWrKbjEVtNHlr0h5bgwtmUFWLw9wDUao1Kz1GUYUXYtBATUX2t858sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760054994; c=relaxed/simple;
	bh=bOujtBBklYClAVAcks7VWcYZj6I8dCnvYFQJl484i3g=;
	h=To:Subject:From:Message-Id:Date; b=eL54/b+dQEVQiYlJNVzR+2Gn4x3ZYYnUZdKCsCbQbuw8BDtrDDxM8QiGD5ASFBEthdq79LJzCz4pvaqVjPd1SPxcbhsfSXj4bcTxF/VRpcACyHzdBWWQ+R7cOhFi1Nd30m0VZYa83sQ2X3MCbEdtSvg6nWGavuJfjjUAqFQJ4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQLhbQST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQLhbQST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760054993;
	bh=bOujtBBklYClAVAcks7VWcYZj6I8dCnvYFQJl484i3g=;
	h=To:Subject:From:Date:From;
	b=cQLhbQST2ILnPJ4XaB1+lKzEVGzb1I7UOvh+VJBTdnCbANw9pPaBNcZSp/sr2HSOI
	 4BEtAEnkusovvBB9XpIGi9dXelbE+x2Qi9584yhn/hMLG3xM9b5yeBJOGbM3e6j3Qx
	 Uog/4kqJ5g6+OwzZyOKULonTHd20OGcwIdNsTTwy2eckp6SLYyRAg5VzspzaENiLN8
	 SIkxLPvohMIs3tqXdI8Yj6anaGdQ0AoUxAw2Xz/pV5WHOGvB6SbDZjH94yM4DsTU0h
	 QkK5KqnQSLQZUumDJgnj4XHnLfLVFJmo+OVeOpwvTipjyW1jgXaabHNk30lBBfxdHE
	 r0VHVDuQKFwbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92828CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005499357.18398.9835018848848229099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5210d3b5b9f209d17c64d570365660b6834e91e8ed56c349beeca42f19700c71
Date: Fri, 10 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760054993
