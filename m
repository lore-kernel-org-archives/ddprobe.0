Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEAB3A1D14
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777324054; cv=none; b=dnFEe0opVcPpsA5uig+O5Fd5arDddGzmKb3M/4xrMKfzu1Mf1XOEn3ZhWNizVtbmw2xUko5dC8NZCtUDMKdUiGr6f6ltxgNOqaxNt5lz277Rn0A48IKbK9mOKQVxLV+N3YXjVzrpk8TCAKq5WabNr5RSioJiKITyZBEAxfELov4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777324054; c=relaxed/simple;
	bh=Pzg9QcBsxqfnX6xGMVsVZI9XonEHVFaYxlUvX8UgcwA=;
	h=To:Subject:From:Message-Id:Date; b=szAmJ7S4D0eY8woYQ3iuSzpwgH+1f4i31e5p1RN07L99GEpgK67On6t9UbLYjOqsms97hEGpRncfEzH5R/urkQSRn1U1Bfv/w6VQ14nImS4tBFFo89rGrP55X4zQty0B4LNd/9q6zQ6Bw5R4xmhkr+OMRCweo1Sf3j1RzPU719I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Lc9pr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Lc9pr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD45CC2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777324053;
	bh=Pzg9QcBsxqfnX6xGMVsVZI9XonEHVFaYxlUvX8UgcwA=;
	h=To:Subject:From:Date:From;
	b=u4Lc9pr9RTaht56G4gVERcjjpFuL5ZOgY0VHDymirz/zksIIDSApulgS3x4vZlXlN
	 bKTb2tFH55PRRWeGrlitvfpZVWb7znfEIirjRwJdjRBaer7H38vZRw6uWTg1xizrwA
	 RKC8aPBeCOkKu1OQI19tTHxcdfLKhQH8RVUJphjbDGISnj+pPCUKETZmglkvEDrm4h
	 FR3sA6tYTJdxqxfRiO7vZS7KcML6kNb1yUTd3gXFfhyAAUoHfF9WwHAjzPdmAgdmEJ
	 nrecv/H2kBCqcjlWCjP8SXtlechG6M86HXdw/NpiUC2Ujw+phCjwd7l8u3vSiiAs54
	 O3hSPDZbe3UtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE97FF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732405369.27135.7745187352635347788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03acd9375547d61b8579e56a1a94e6bea2b463d1716acbe89b3184d3e99d38ea
Date: Mon, 27 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777324053
