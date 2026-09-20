Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0115B3CC7EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789875035; cv=none; b=jNLFjjZ7UrjqK0MQeG92GayDTCV0uQIBPBi3vFjfDwB7yxAH/JFEe197kZivmob9Q/W1XST5vVQuL6ahHmSX9ZWQtLNCXHrW7HaXYit355TzxElnZ4Kd0dNfMWh2g10ln0qsZQq2XWLpbFS2H+nylc0gEpRRZUVnPFU+aSgwgUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789875035; c=relaxed/simple;
	bh=DPqvnxoY5nD412Tcay4uT8PcQBGl2kgDOUEE9vkM2lE=;
	h=To:Subject:From:Message-Id:Date; b=UCcVyijnpzZRS3DJHjW6yhYV4wtecx7iLfSYdrEKP5GAzX5+kd0doH11VQAMFpguMtKfXzmjs4ubTjaOcLmrat09ZAU8fzC8K04/0DZuzMjF9YU3j3e90OpcaDcq4+pSYfG0hSGrFrRSQZyo/TifPWqtXLkyvvzctdxBBcbqjfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Xwu0t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Xwu0t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD17EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789875033;
	bh=DPqvnxoY5nD412Tcay4uT8PcQBGl2kgDOUEE9vkM2lE=;
	h=To:Subject:From:Date:From;
	b=W0Xwu0t1PPn9o4mp3qlpB/W2hoaC+ELcOEcZDblrRb6Coq3rBxGUCioyzOMK9zZdB
	 4owZOMPkd9pKJn3y4PmpFUaozr5JXcAfmYAAkOmksYJ3XYNpcLa8dsrqrW/gk43jZQ
	 UOqzGO0brZ1P7nGjhqr4rSa4KfFePR2BMkvIIAHoAcPjG7XLPFPMGEEDCoppxmZa8D
	 I6Kjz1ZQluuS4xOci2R8FMnOmTB0gN5Q5u9H9LQhnKEMBAn/UuqIs5FGcns1aLt2Nq
	 odLECwsgMrmiZj+EjKiCLyOZrsYjDSUXKPYrVpEmrVdqzjYpMwvuRRNt8Hv+MG+1Zt
	 RqguePBSxSOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9CC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987503368.13660.1096206883197882233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08bc5f057beb0e15ae1d506c411c705c9e426adab73191beae66830d01738100
Date: Sun, 20 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789875033
