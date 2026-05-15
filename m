Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241DD2F7478
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778808034; cv=none; b=WPNEAoNUb9va5fpOIXFKNiJ7EVgh0PLERn8vO4KMzmP0drB5ZL8uUGxAYWu2egnX12p/jgD2aVBnAtD9UY+AwqZ4xeVRJ3SG/SjVv3/1PVSE6h1kNK1W5hYvLJ/JaWlbt6JgB6rWFsvmBPvpCgYCGxe+ySFAAqpXbwvUoU3fx5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778808034; c=relaxed/simple;
	bh=3l6YOQN1xn68Mlw6nXcQqSfBYCDypQteATr/N8QuzxY=;
	h=To:Subject:From:Message-Id:Date; b=Nr2Wfc3bbeiWOx98mEmaLySagky3fDG0LG8aM4dz1JM0dJwLWJd2Eiu+IEp5Rfx5aSCDAuZt4NCR9Nz98my1X4LIxB6a3WgvKhaF42H7lAwGkwAIpN/yH1+PlpbN9k1xegF+CtdkAXLLBay9GxZn8M8NA9NPsJYB2+SPja7gSCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA2xoI63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA2xoI63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78C3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778808033;
	bh=3l6YOQN1xn68Mlw6nXcQqSfBYCDypQteATr/N8QuzxY=;
	h=To:Subject:From:Date:From;
	b=FA2xoI63vR1dYEK0cw7xd0I0LdpEguyv2npzbKrsmpUo/jLmKS4/TJObgMsrmo1Ue
	 mONem4C4GyQ3z9a8mdLKlAS9L21wtao2pvv8NYfcQhZuLtFXbqNeXqqoW1HW0/o9f4
	 8akeQ9w0SMHp7cKJR5ltoFlyrpKD244TdBSsgLYe2MxevRwDARznAHnQUzZLm7kegh
	 mRzBB0cu0DqxiEZ0nXJ4VCHHsDWQnaoAFWzv/51CQs8/k/RiC+0XiM1gAlMOTGN/8W
	 zLZ8KwMFE0dGrYQ9/AtUMAWbCNRYDn7xCh5QGrg40jLNL4c5rvW1O1b/LAzFSBTFCr
	 0rXEaMig5MRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C8CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880803368.11296.5938503806095849556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262b39b1232e1a54241e185c988cb2f8ce4d87be1f2fb9b50ee79b83040f8666
Date: Fri, 15 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778808033
