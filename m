Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985D2FD697
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764654774; cv=none; b=aL7gqFvzvfDLlyT3xRzZ8AZYbIxGlWAYN0qchbsiVEfDtw8gcrMMPzSAY+SSRbUZIpoGil7fBxtpncVN7nqDmnxw/v/r8RRLIBOGIleagMukVzz5w3pM3MEreVCcy1yhBdOHpthcrx1/PA1NWDsndbosPyxxEMHg15oYpxVAWRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764654774; c=relaxed/simple;
	bh=INSE4iOgbHZdvvNDHPhEF+USR76Vh5UDftrwBPM9BLY=;
	h=To:Subject:From:Message-Id:Date; b=tFCB+Bqi2dCuK43VnmPcYyVHAMQgWaxouxbkoJG9cucnPqm8ldhRjfyQaJVFj2la0pqBiU6nnr++Iz2EEGqOxjrD31+38+g2VPyIXwytDK2E9yDiL0YrserWSgamtXtNBA6ZVUcXaW30bpnjG3ldGGSjfOITCs6ICGag8kKy1YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbBqLwMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbBqLwMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F37C113D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764654773;
	bh=INSE4iOgbHZdvvNDHPhEF+USR76Vh5UDftrwBPM9BLY=;
	h=To:Subject:From:Date:From;
	b=nbBqLwMSIm6CWNdUuhhRffhlM7lCalavyGLUeNqcD6Gesf6P7oAH7jrL+26XaYFz8
	 ka2dlWrRCvz+t29OEfnMDYl01TJLokUzXGptlTSorHMYHsMYkkjk6bsLtlq6W5HGGX
	 Pjq+kdGC33moaMY1kpIFY1MrYhWJ5btyAD4hI0eR0P+wzM8gNFST3AbynCkhPoQAUO
	 WfvI1DZL7U6Hgyn5g88tSf2eB5j3dbxIgcJ68THcqfD4FNdBzv26bffIAzm0ypXvzk
	 b63OcszihjZz3+gWuTdUTYYnTEl1dduj93epK3R7N5TBiP+B18MvKmQxd7tI3LrSlr
	 vWaUvc4xyVghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C71CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465477358.10259.4775335055151411477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ef09369fe7b7f05a7c03ff39a6fdba5532c897cdecc77a856c06cfc8d17248
Date: Tue, 02 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764654773
