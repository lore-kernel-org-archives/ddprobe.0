Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30534A9D4D
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789556435; cv=none; b=eAULGxgtCs5+7bCdbOBvXIIMYH+XDjeKl1siMjkxZJcVPc2jGXahVcmESsFojd94vPPY/LzI+08Ld3VFpVqmH6se1fcy6jBIvqEK/L8QcKTr2hnP39Q/P7T/zRRTVvrf1M/RuGcCPDJ0UB899EFyEAPxSwTOCX0i5lH6imJBQgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789556435; c=relaxed/simple;
	bh=uI1wCptMDC57ImHV4vItNnUwKTZoNEga6LW/bERx3Vk=;
	h=To:Subject:From:Message-Id:Date; b=dNvv1ob2v29rab5O9wqA5V/DhYPwCziFOUiX5lyq2Af6oWw9xJWsv6ZlQKZu/1+MGzMboXZl+MHHMFnGtmOOuAxyzB+MqDD12OKlx1rHcdogYQ42ft2E/ydVX1rHFOhY1AjQu/nbGkBZnHEm0qfREQk2bVEXiZOv/7UgsZD5CQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUB+qP64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUB+qP64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AA4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789556433;
	bh=uI1wCptMDC57ImHV4vItNnUwKTZoNEga6LW/bERx3Vk=;
	h=To:Subject:From:Date:From;
	b=oUB+qP64FlJ8EItivgHqySMLggBCGqXFtiFTkzYzAkkjJQfB2e+kKBUKjq1CC89ZI
	 Cnj6FxVlcwzwi40ZBw7NkOtIVIvTcPsOz6CdrgAmYqOLBUbt+PpW/Q5dL/JSQ4bd40
	 UaOnCz9oluIkZpZX32Y1qZdZn+edRX9mCCEEtPqM8e3wswCnYwSXSXOIB1GApXB01u
	 AN/W2+UzbR+WzqUcAbBywW3d2OEvcJywDj6mBFbNUy4RtHUeX8YGkWLDw0gP00ysx7
	 bUrPcOQdFJypacpUP+u+dqRKZEXR2IAAbwcGkJrSCCKxmjeRVKA809mGr6HuHvn8Xl
	 ABdmaSHGxc7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E2FC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955643372.11961.13119045918748215469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f856966b0a05f86cb740a1b587064085f7798bbbacf2944da5f26d1745d2442
Date: Wed, 16 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789556433
