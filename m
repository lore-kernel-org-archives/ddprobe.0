Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E042D9EE2
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766463834; cv=none; b=ovHN29NQ5dSgnnsBAp7sFlXhf+EAtC7h9yPQlmcDTMXNt8zo4nA74+dtSEFnc4V1nIFnErk5WxlUPNrVGB0BpOvxKpP1sTqabOAtQlrFiUCgzYA17AUcWsOT6+aetwgO7/mJzYqBxK12ZwUPsKI58aSjU0enmv7d7owGcqt/DEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766463834; c=relaxed/simple;
	bh=decRSDRuSZ1kXU97U3q39wUnP9sT0+7U984HS/+vMts=;
	h=To:Subject:From:Message-Id:Date; b=XTus2areXgXNxCbw14S2JgW16QWPh3admA3yuknut3h8cAd9YpXEIfhem8OfuYzCeroYpWPHmjQE8ddVjlDJ2KxH+WeBz2KKFAJNu0QhEe0jnM9Se70bDftN3udAnuV4rt2qFeGLqJTUb+3F5dmJwr6jg+QSczRjM36b7JTpl20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYKfpR68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYKfpR68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D35C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766463833;
	bh=decRSDRuSZ1kXU97U3q39wUnP9sT0+7U984HS/+vMts=;
	h=To:Subject:From:Date:From;
	b=CYKfpR68tR+0ZyoO79N3+DSHNt9rNZfwMIz56V+NrDDxVN179+EOtg3nBVi8OmKgn
	 wy+stoI7YjD2ZMWPb9t4xNvrjWvLHaqSI5nvDuQh70U9PQXlxUcDy3VdU46QZoDjiF
	 gWZasnWFTcCJXDNgK9tMEzQLoOp6TVP/Cq2lPXZr1KxCU7ocdURT8ypZM2hmcjWrDA
	 UoDWAsR6t0yuNTbkN8ttGw6EkBWvSo2BhhMnb3aJZWDFCdGh22wZ62ux22vHVPYsuU
	 /ePRx5cbSatFVLzkEHE7xRL4PVaJm8ZjJW57wtGJOByEpV42s23EA3p4Pz64hPheRQ
	 fbvGT3zn0GlEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A7DE6B271
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646383359.21008.11985693351724522995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe63d92377d50a62def2dea3d3cc59e057e4f1a7e62c976447459a6549f99ba
Date: Tue, 23 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766463833
