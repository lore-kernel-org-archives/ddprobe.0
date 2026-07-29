Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD9C3D8902
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785365434; cv=none; b=Se2f5Ets9oRhR7sXAKHOcDqNTQEC33bmU+uAeMW1+KfE51nsbMRzdSU45/RQSaiB7M3Gs6YJO1Rt+40sIkZXWknfPVp8vV50pgMReG5PLQcgimb2EUq9pcJ2gdNCmLkZy6Y3nf8f0xY+3HxmYl4amxjS7wZlPj7jNX1n43Xs2YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785365434; c=relaxed/simple;
	bh=nPw+QJMHd08PFBHPtoyYrK1GkbjL7TYt/1S1y2lqCRQ=;
	h=To:Subject:From:Message-Id:Date; b=E7oeIZlet1vifqF9hN1H0PgiU4Oe1B7S38i/TqX23sp7WaAR5LgPZU7iyVvlrgpSK/XO/B81v4xlaXHBCfVgQ3s9qXXRGAxU/7lYwZDesLupENFjGtxdHMPyuYoVIOTVc7rXBLDLpidYRN0+y37mxDSXHKEpesWuzmI+b8+FX0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBzwcRT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBzwcRT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC93BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785365433;
	bh=nPw+QJMHd08PFBHPtoyYrK1GkbjL7TYt/1S1y2lqCRQ=;
	h=To:Subject:From:Date:From;
	b=uBzwcRT72CJTtd3hGGR4nYGnlNe0XLVtujBXb2jP8xx4yVbT6vdFJDpIwhVBqgNI0
	 Z/VCH5nnATM0p/Hw1EreuOoBPlhlerUXqql7ySSNQ7CCY4i2XY9Liol4koSYGccTzW
	 6tcYWUSuBJ3l4YS8IVL+xZpdHJpHzYLPsvw5UxXNYof0/jsmpw/jed8ChO3BdXCMGs
	 KjW4k+z+yg2Qdvn+fVENyND/Vl2tlwnIYsP94GXGF2Xr+F9VS3Gj9t9ee52HZHTuht
	 xt7Tr5dbzqNz9G5JkLU5CVtgY4VC9YWvpFM/TFEHh8AiZy0kW2v2GWaFyLMGrVpm9/
	 pNoMFHXoUW4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BEBC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536543368.4854.17382782252782568262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6b7df781efa9d866b3df1fd8375b0a3804fdafb84de107a218c321616b93a1
Date: Wed, 29 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785365433
