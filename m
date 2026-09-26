Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9D0386554
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790444434; cv=none; b=c/Za5GKhvI88cXUoKOuq1io9PRLHg0yITO6xZisI8ZTtQq2Tdwpmly6IUH93cSJthhxjctDc5xyrWqJi+ctJxZQb/ZhNVI8VxIEfTxtzzDraPCrDjcJEjoLKa9Lmuu7E+7AeowvnZ7Q35iwfM6LJJbPDmAa/c9G+hYqC4Z9tmoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790444434; c=relaxed/simple;
	bh=dVxhmYzh9EEu+mFCkz2bXj346JbvqjD+l/EEgvgz1I4=;
	h=To:Subject:From:Message-Id:Date; b=cT43HZbpJJyOmDvorxGsBGCZ0qdVZqz7ZDdcLLlPQ3g5t1cdt5VzskWEjC3VwJ0IOdqOsKFGXlFqZlKA3MocAN/5TkvPBPWAzsmfrvPhzK85S492a5gSkCXiUgEwTwODFcH+K3F9gqcO4iTxDIEOkyT0AMsC0B4angcsFPyxmTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+IVdyfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+IVdyfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD7EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790444433;
	bh=dVxhmYzh9EEu+mFCkz2bXj346JbvqjD+l/EEgvgz1I4=;
	h=To:Subject:From:Date:From;
	b=G+IVdyfbuUnxmsfKn7N9mx3AJxxPxubLNRY1qyfKR7mIMKuDkJTBYPDTTT+HjTiCh
	 DMhk8gt38qhRS7WF5QgTjAP2Gqzsz4phmU9xOilTjCc+vHiGiMRpRlWljGuhQ/gWkP
	 6PdJ3b32gkcQ0zExtfk0Czjz2kR6LVVYQA8oOBt7r6Ocm6P0MMEMnmBlj2KnOk/iQm
	 00EdehHobdAUEGskqe92AUX8pzyRdn+LuKg/fOxl5G1YF5w0Eh1mlTOspJaxuGSA4D
	 /3DuRB8/xx6OJ22GE3EdChRJRCVnKQMqcEss9ZtLO9ihsYpq1NLs2Rj8OSXMFErRoE
	 H6LdTnRMTea6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A903CC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044443368.31572.5982101547066949556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a585b05df9da3a336cafec70356bc0a147ec30648d1e3df95fd677ca7b030e
Date: Sat, 26 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790444433
