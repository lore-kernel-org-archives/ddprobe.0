Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58925A2C3
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756760394; cv=none; b=ZYhRFWseV+sSXG82aTsfzD26IX1b/y1X6d/FGm0eJFVLHPuFl4PAG0enCB4Lmk9DlAKVPQ2EvqqMvD7OxjvJbUHEARudJ9woZzLrK+t1ifmXDlaab8j49QhBS4tbim5RHw0LcdZ28JCV9dMc9m1CGWqx5dBdoptJM0LFiT0NnPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756760394; c=relaxed/simple;
	bh=n9vyQ0Dkxa9nnBy/Dh+yvmKDEmqKYjQ7SgT5Giz3pDc=;
	h=To:Subject:From:Message-Id:Date; b=Mu363C1DKXoiH2QfMQpLoOtY/qEzCFlzihpj+jLs2lqr5lWYXq4urQ3Lfom2rtR1ieKSlRhPnTNzN2/cPs9KH0M1no4azuPNHV1lLM7mAw2TUytR6C+0zU9ZRjjaH3ZGloVlHFKkQHbvUmy2Y7vG/zoBhHNCmO3nug8clw6XbD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3xmYXq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3xmYXq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756760393;
	bh=n9vyQ0Dkxa9nnBy/Dh+yvmKDEmqKYjQ7SgT5Giz3pDc=;
	h=To:Subject:From:Date:From;
	b=I3xmYXq7F4TkxXYpwHQMLGxIlQbgDW8rAPgow/lCiPQBuzZuKpsZc5RhJh9xAprlN
	 KHkB4/T8uyEK503amhNXa7URGK7rqIvGy/Q9jHxg/UE6yx/0mvnpnUWUW93VPqiKko
	 T6EaBXIaYUJnYBlWug4MsNsmeUMTUm9lYhZx5MIQ6hNjKrda8+mChCFFrvShQLSwL6
	 DOMjgPJYYPzFLLZhvYeRj4Qsrlyrj7A+EKRiILImfHYkQ/wOpAvLg2pc0i2n8/Pw09
	 1/LDfDwjtIuITNlbW//ubj5aXWRFjuEJGeeLjoutTm5ks5WJO2km+Sxr340iCrToCL
	 ra+TaNQGPYp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043FCA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676039358.14751.6351677532957775113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172f7905781f7c8f171f49e8efd4ed39bd706d3041ef215695df070bae9f6f60
Date: Mon, 01 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756760393
