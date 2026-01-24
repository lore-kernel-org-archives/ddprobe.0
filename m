Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267FE55C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769267034; cv=none; b=gg3pVyT0gUC0+LK7AmU11mQj6JISujgq93cQY/989vvi1Iejz/6ZHhZvfaha+uoVrHoE4452vIHhGDI0jNN9DHH5ZnLKRI23AVyJnE+1UVzpSNTCp9YwjMmJe6djqG7LMDDRHZm2okRegG9JjrMIiWwotj+RjtfLYgJA9II/+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769267034; c=relaxed/simple;
	bh=IMAW7DBgA7slgI+hkIrkpQ02VNOd/Jj/+aEzsmpDCCM=;
	h=To:Subject:From:Message-Id:Date; b=TS9Ic7Uux7gBTvtL6LbDGy62DOLp0eDQgQdrTpY7Td95bhhxQkIJc9RLP0fib8/aGp+xUcWmcNO0YXTz1aFuhPr99EKkzpxyql4jBKFsnVYtnBWKB1wlF++nDCIirIfNBVwTyeF8hf/8RmwIAvwTp0kvfeLAvR0X7ORaTpkVUDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0YAQieM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0YAQieM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E7EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769267033;
	bh=IMAW7DBgA7slgI+hkIrkpQ02VNOd/Jj/+aEzsmpDCCM=;
	h=To:Subject:From:Date:From;
	b=Q0YAQieMB9U3PJ9VIq7cXzEVlFAi3Kg6FpIhbRR8dzn60KvgY4LFttYmu0iD/nf86
	 tRHnkJABD755dc8x2EvlwnSy7SALbWaz85ngr/DWFDX/wvdZBeholIgtEMxeUcErn/
	 TTLKOK8YyanU7589ZgZmz1Fl3SUBPB6EqD164orAkn4NDr6fITSEnkIwruBbqSVa5x
	 CRpSapTI9XREgxorW5VfbPtrY/3ANXWyEDfvyAhb/Fqfe36wo1LVXMj7jBreC3QEOp
	 rIVZzCMx9frfX0IY2QcFLB0tNO8hzA6sC9ycKnJdQistvZtKXFW38LU700C8Kn6I6V
	 v8eWEnbHkLKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEC9D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926703360.26861.447468205081244657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b3d55c8a76ab86c9ee5fd24db5b425ed6ef22c0ef9fa34bfb3887ba2ac8104
Date: Sat, 24 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769267033
