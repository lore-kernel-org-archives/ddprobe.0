Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D1642C4FC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792381834; cv=none; b=chB2zl1qvbe8bot7dZQa/s/atX5NZW1tI/gSfYk8xOpb0Rfygg3sCouyCbtrDbjpWfEE/nbDfMfgsWHqYiXYO5anII/jA8RWcHFsM3VZqYvx9sNVUGUrHn96RSDm9gfqPbcsucmf0mrMx81tpCBU4ewO6FiekgusUF13HCIKMBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792381834; c=relaxed/simple;
	bh=PqOl9McKSbZLFVm03cZMVjPI+/1AxAgxDyWQp0mmghc=;
	h=To:Subject:From:Message-Id:Date; b=jZWe/wYYI9tQC55pO0zFZo3XTko5En6VFDEI1nLbE8Um4pfxtWdqsvYROav8X5zwq1xAH+7dZknWzlLY7x4mOFXS5lWOoWVCLsqIc0UGf7y8nEWucAEw1Oym/R49310B5mZENkQ4SzOJtCNUkO9tMCgHZ0FkYvVYRWe/PAZkIrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQQfq+ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQQfq+ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDEFC2BD00
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792381833;
	bh=PqOl9McKSbZLFVm03cZMVjPI+/1AxAgxDyWQp0mmghc=;
	h=To:Subject:From:Date:From;
	b=vQQfq+ey1s2tA9LY8py0BJ9rvUp7C/7IQVg1iGQz+ofUadLnhklP0F6QUekRUabJR
	 0RSWGMyg9v1+PyYYd06gfnpboooaJCYHB6UnmT8KA76pQSc9WOmSjDTOcDf0vGQAvY
	 feqoqWXoFFGFPKdRFBGMRtL1sM/MNokFo3+BF/6ElGibjnRvF7tpS5b7H0jN+XMny7
	 cagjnNeMKO3scjw6EsNGPjGGrcE6UnukRLMiWeUDWY0PVXED04bNCbHBULzjWRsVyP
	 n0Jy+4goGt1JcoQr4rJAPsBGWCvYgcI7iKW8ZmKcC6A6EmEosT4PA3hCUYJ4ePXrPA
	 ABu3PtjoRQITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC401CCA46C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238183369.1233.7074404857285819461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa756775e9048fc7e9ae1f22c410268496867f531b388dd2707effdeeb92f2f
Date: Mon, 19 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792381833
