Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5C7368D50
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781863594; cv=none; b=gC84pODlfIK09veAbuQlXFhJEhwpPWCTs7nnEWXxuhlDmu0+/nrWLnJHuFjdAcxj1hJbJmy/43xKS8kmTLmbFs/Ryr8bik9RHLu6XtycRbmevd8kvfGzSu4Xk32CnQ7S/PZ3CJH063UAupG0nDbI4B9gdJ1p/1pqpF98I9I9U+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781863594; c=relaxed/simple;
	bh=je/XHHaD44mVnH0dOkBspDGFXdf16ccWr9thIvfc+WY=;
	h=To:Subject:From:Message-Id:Date; b=cDxBfsuGSTfCeDJX9to8WnSDftNDBhJ4XpZtesRtmnPCFr1yZ4RECgZQW/IHgfRaw9d0GKCmCqUS2R2AFHrYfER8/RrpCsp5U6A2HfrSofWghBWWXsmC7GE2wnR8SYqvjjibDUTCrNy+jCN5z5DHMvTnsvojkNQIAcYLe9V7a28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmAsqoCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmAsqoCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC03FC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781863593;
	bh=je/XHHaD44mVnH0dOkBspDGFXdf16ccWr9thIvfc+WY=;
	h=To:Subject:From:Date:From;
	b=cmAsqoCZUjCEKzl4GTIhqu/RMPsQdSo4HhRSIzKJZ0S1Tm3b6Jpfp08KeILoV6DLQ
	 o6+w1nGhtTXJb2tFWNfOndZS4sFFucnq2gLlhDSbGyX+lED2ZUfRlS0+E6X0kVvOJm
	 QWk1ndGdRL8iG+udXO70x8qGiqLklAv6ntKtLOxvy+jQY7QITx4mfxpuUI5fEyxWLf
	 g+THtAkri+Y5VxwzpECT57P7zUYxBxnfMDWk8pxvkinnkux9jfcsUH02hNNi/6Qu2e
	 Nzs2qkECSDyeJnoGBMmtol+FwLE7THqGIWn84v/g4luN9su7CB/YHZfyGaQMAsE8Pi
	 raMwluhSu81xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE91CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186359370.16345.8594916465293398200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fb2143189fdd886503ca122ae2d04d494f1ac363a06a3b1120d99d533c661f
Date: Fri, 19 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781863593
