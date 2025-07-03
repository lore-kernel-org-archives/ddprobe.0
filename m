Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFD334CF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751568594; cv=none; b=W/64lR8QTFLfgL6q2a+cUGrAasWVnxn1u4s6M4gatc1p7HSgM4syqAWW4OMxBQ0Fv86WnDIx52ksB0FjiqJh7KfxWZx8v8dLKNombVqC2wJTjYZ+NEDoWGUalHEWEsHBU94ewb5WFmLgILwYAuxKB7K4KQbKWma/dO5mJjoKVlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751568594; c=relaxed/simple;
	bh=uX6R7sPn3vlHNdCZTIG20KLD4HgP2IUOdMxqR6+KLT0=;
	h=To:Subject:From:Message-Id:Date; b=PKce3UCUpwXXD8D+frDKSKwVumyjTNFeGTGxTCcbv/hQKVCe5q974A7s3OZPwmDeNS81ADWmVNpet7vT7RFC3W2iQ/c6k8G6fCzv2X9L0GKZVyHFpPoInwmDCx3aedhiSUWFpI+NtITokrNhadcyowuxN5h10RYEMk5kg+zRr0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8U4Ltxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8U4Ltxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD11C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751568593;
	bh=uX6R7sPn3vlHNdCZTIG20KLD4HgP2IUOdMxqR6+KLT0=;
	h=To:Subject:From:Date:From;
	b=L8U4LtxtcbswL/2l51IBzCz2CedlCK0kh0ovJBBZMyIjaMfDD8Wd/hmQF3rMWzChx
	 tV/gEtSsLBHDgcpEynVMJzweSHzS+t71y1ZCy1miLGJ8Iehs0SmRlbtJwhemDCsuKL
	 9syHYxb+J4bria6sTRzg+N5KQI65MCgBzUSxRiGiP3WJbKJ/oWe/b9aZm+tT1eHOxP
	 jppvmwCzBulY1YL6RTGHrCbGjG3kbrSAJrTAY+YTkB49DUw7LfylcQxb1F/xC9fXwW
	 jfGp7FEPo8TZGqD4KzXo6lsqrBjUd55b4VD4MkOujDEzbm5UnrobbZSOs7hi1sJkNB
	 debgJdDIhbMoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB46C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156859357.28642.16060270750499561759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda8a1a854473e8b16428c4619ce14ce32665924eed6c6407f2f8ba104156d13
Date: Thu, 03 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751568593
