Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472FD1419A4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792144834; cv=none; b=rFOxedPc4a8fIQgwXoHT7QvaGaFK+EjAZdo3A6sVI4+bPVEO81krmrLv1IWbjwFrLaEst7NTABaF5sNF/NBy/uflQ2OS8yuBbti/egAltGzR6iVK4HE7EZ2vLnROwfep1VazNFmR+z5aO9D6CzBrb8/5ybycH9BE/hQwVh4FP+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792144834; c=relaxed/simple;
	bh=dnEo/xqHJ08+VcxyBQPq1IzP7mLapbxLSLgogLUi5Cg=;
	h=To:Subject:From:Message-Id:Date; b=lUKcWEzbWVI5mb7MyYCjM25RDlYuL+sb+xdeZrhFcu8tyeNCSNXHCq3QNIsGgdbi4c3jC98oc9gTwgf6gvasVZFz7qujEus0pJfQFs4X6WbAH52BVak0i2zMakPRT1SjGz4uazVs23vF65R+0RlREMnMF+AMGYZq7lk+fH5WIqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3sCegdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3sCegdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DE1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792144833;
	bh=dnEo/xqHJ08+VcxyBQPq1IzP7mLapbxLSLgogLUi5Cg=;
	h=To:Subject:From:Date:From;
	b=n3sCegddnQWx8PPIoO+X/h48SEGwcEtRpDsfpGq9qYRia8YFUQD+i5uKL4m/xJbAY
	 qJvR/eO3faOlwl9+yt+G4ZJjnhzzRgZp7z/vqwmbJb4166BsK9AGBNqQHvFQdJfmw+
	 bQBAMiXrs/F3a9TXFFWm5RAurajo3gQrIjIjCbvJQSgGB+VgZp4pNVhOFtEgYZgjpI
	 JEtIm6PaAUA2kXp8x6GU51c+h62Ks+0sPzSIKMhYHsDheAEhd5flNuOYMO8qSwnq0i
	 tX4R18DsBIUQN3xpQdcQq4LFH3+KOKzcJCEhRPqmXvKmCmSvRSBEplhlZCjPNBrBBq
	 dijy2S/pWLTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0562CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214483371.24963.9504240315105557007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d6b9c6ce5edfe87424c6ee5f551139950f679dc5fffb54e2fcfd9e46308fd8
Date: Fri, 16 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792144833
