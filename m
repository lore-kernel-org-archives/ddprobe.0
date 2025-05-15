Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F85212E7F
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747353594; cv=none; b=GGugfUXfprSIIVqHSKSKtXnpyRR2Sa9H8b3xMVb/B9Ji8gUqN5iGuEVUZTISWCSBsmFiAgJzj+MnE0y3uT7KKB7St71FzNgP0eB159WeMwWEGX1skdAF62TNKC0r/c4vJQFOToFAohLX/bP1EmP52M+Fy6QVE0VQb7NnA2UIBZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747353594; c=relaxed/simple;
	bh=p69yn9C6s3SeLW5ME380Innd6CoaZ2IGx4lRK64bCJs=;
	h=To:Subject:From:Message-Id:Date; b=bZLBTeBEVCOqCGOBzdM5W7VRVA4FzfMFtB1h7XU4o3NZOq4Vx5auNJTgXVHvq5NKIE5Cn4O/RKT0kMjnlxrj2MrVtMWBW0+RM90yk+t2CrFhExVMzvmVUyzarzY3XDbGHhs1YzoGvLPgaeeG2ao0ofalObJl/t4qvURuYTHLwok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLphq4A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLphq4A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747353593;
	bh=p69yn9C6s3SeLW5ME380Innd6CoaZ2IGx4lRK64bCJs=;
	h=To:Subject:From:Date:From;
	b=SLphq4A7unZFI4PPx5IUQRyQrSPFJTK/H4H3mzt+Sgw6iFDojKZxyv7Im0ghGPAm2
	 TwmxDFHdkjjF0i5bDyPUrIh7hLUdvyFaqEv6hy1KjyMl+sSANAvrMCscDl/0VCQtl2
	 yuaxppwdnE8BENlIIKYmCR4KZpqNryRluJrzie5h1NGPMgB1iZtdh5wxJfmEIezB6C
	 WdWPG3k8P1fkgtF6voUdSlTOvLwykNGcdTXdffus2wnylNncOLMQdrZdPraSZqSDqV
	 4vDM4fBFAb2Sd8Apzwd79JmLMg3C/uC37WNcGN5K5EldsowX9wVofQsvMiPzVzT8KQ
	 1mnVrUziqRh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F954C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735359358.17314.5934108946201846885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100db517aacf757d54f3bd0f775c571f3e1e5377196fc2f28234ce3dfe81920b
Date: Thu, 15 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747353593
