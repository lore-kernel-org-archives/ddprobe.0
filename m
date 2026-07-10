Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9020C00C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783706314; cv=none; b=ib1/PxXrTzn2j3cTfoEuJ7FSF2T2qHvXyZ7mkB7ZwbRKhwxv9+UxnbIsE7psZr0vmJLLDMPFEDD9clAUiWxnd8oc+iHMn8Fi5WxDb/EJCEesAaLjKC6AqFKCuMH0BE/ssmxNAArp1YwWQA14RjOx9fvvHc2fdlP4CpqnmpyHtaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783706314; c=relaxed/simple;
	bh=MStDu+JnAr29yZUlXgdA+hpqGhM14jUj6nx17zmXAg4=;
	h=To:Subject:From:Message-Id:Date; b=cjaFhpGkYdk9NcpeHLUKcNXiPF25477tMUi9d4tVXnwM+MT41oQT6WGAlKDTAT14vDYDkUIn1DrZA7P8kXajb8sQOCfmnqcuNSlDTh4lh0zYbEA7kl+PooYakpu+EGklhnFQmidZJZZY67xUREj9Uk9jIGK8EUUiPvdlHIYV+Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+QS3Yme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+QS3Yme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDFCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783706313;
	bh=MStDu+JnAr29yZUlXgdA+hpqGhM14jUj6nx17zmXAg4=;
	h=To:Subject:From:Date:From;
	b=W+QS3Ymefm84YJ3dlKV/WSx1EwrOw6ay8WqmvlBdCAqTfRPiWErEry+k2ZGUfCLGw
	 wi03vx0F4KVVTjwh3nCJaEJjRhms7lY9Y2hQVre/v7BYJrYpEW0i1OXfYMn2LsBwJQ
	 kdDGkEuURxhmH3D4ZQzB4aG5gibJoaGr7f4ARxYgvaZCL/rPbAW8//AAvk+tMPZY+e
	 yOuRflzHMd5T4RyG+mRsJw+2Ds6DXju8SMCXzb9xk9Z5SUBbqYmyu/HT2mfiviABhu
	 3GNzWzpplBeLOM+qZgIvy6LgYhLlgRfDZCXdy1pnZVEw8TE5JmobZJOBzXxBe8xP3E
	 urMOlM6PocT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9303C44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370631368.17031.1086608320968017701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ec669ce19a8309994f35af1ce7df5f30f79aeb26f6b63a9664e6f24b4da937
Date: Fri, 10 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783706313
