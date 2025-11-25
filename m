Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B68E1EA65
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764034374; cv=none; b=PPYB1hn+3RJIqa3t/2Fdv5fGfs1JfhrWAqrBe79B3VvWdxa3pN3/2Da96TOUEzq63i1w8OQ0DbukLBUD2mxbOkzrDcZLfJ3fEUDuwdO53LrE3dSHMsxvPRANB0Askuy63sRwwOzsMXTmKnlwOf/u6G2EjZWDYeyjKMSugFF2jeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764034374; c=relaxed/simple;
	bh=sHIG5yLGaLxRbXMBVmViYIT05R5+FsLiB/eTI+t76GI=;
	h=To:Subject:From:Message-Id:Date; b=p82R7S84UfAinTXhlrNmk/Cxk2Mxa8fiGViWxhJMOPJBLVxyi42Lim8Y7C9Mou/GLSOC78wTi+YvCWlcCISRAnfHDIvV1vhPlD6V6S4CIatSFxMFJKA0+xqK4pHqjHwGYDiUvX4uuDYafTNmAZhoT46NV9I+fqxRtnLLA4UB4Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY8Mh5Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY8Mh5Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA593C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764034373;
	bh=sHIG5yLGaLxRbXMBVmViYIT05R5+FsLiB/eTI+t76GI=;
	h=To:Subject:From:Date:From;
	b=JY8Mh5OmLZQe5fKfypmsx/Wky+JQB66etvNlb4ECf9n4vKRa8rel1Nyog7hQmEZTb
	 ruB40XmP8VNwZFXteWcVgRt+N1Bf1f7Q8wrKQ9CwEbde89lIwb6yLee1B5ftpKXthq
	 ns2P/znqzLsc8Xl03Fsl6w3LAGH9JaD0EX5LDKTQU1u3YjrnYxYA5FSKOji4o9rnOk
	 xnDW0rbu74C4weWZeadvihEbNsNA1vDDqZn7sepkll1xmLZW/FFCHfZdKd2B1mv/le
	 cOSWRbZaqTM7sLCoSx5HPSa25TjtP1WnXyOHTnLLNHFkxYfclO4wtjYt3jB0UGXVap
	 pS0Fc4RRLMmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93900CFD372
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403437359.7284.16770113674839455418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52db33e493ac5e87225632cf137730f5a76468d20c743996621a9e614376b3b9
Date: Tue, 25 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764034373
