Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289BB198E8C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753471794; cv=none; b=rDf/kMv8+RVTm1jEJEAZ9n5W8FdwRv63OnJxCzrymhSw47edSaa3oXhgYknQ8/5pTOQCQOWGcoWYgZuESE3Bu1m1aMMboZ12ohe1GF7NLRPAczhGBEMPpmv4OQOOdb6mYi6w1RTkhGJoOu7S65AvgPqeIgm6SlKyHa8vqY5D5uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753471794; c=relaxed/simple;
	bh=wSMeuyXGeE+yJPV6zWMTx5cTJoOfAHwQsgEzIbbdnAY=;
	h=To:Subject:From:Message-Id:Date; b=CbpA4Ennjq78pvKOhYGhP96dbPiTEmgkaYtQ91B5vJndS9KchVs4mqSIbOIHcyxrxAj4XtWHqe7I0W3LSMZhCrMuB11oWmRcIgb9cSaS9oEnqkxj+Wz/ZtsLUhiQaAE60WUX9LvgF+9hu4ZQ0duFK+DhZa7Bc2DPdYSyU9TC4UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luoKCP5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luoKCP5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753471793;
	bh=wSMeuyXGeE+yJPV6zWMTx5cTJoOfAHwQsgEzIbbdnAY=;
	h=To:Subject:From:Date:From;
	b=luoKCP5qmleOIyRxGCe36XfxLNmX31RCkPRadZ68UO4N48R/CGT6moF3PxWrftgup
	 ToR4NtHbQpl953fC5lKmtVjgV/+rfMgt2cmTfgiivVbzUxtaaiCih23CPD4gKTQm2w
	 552Z3Xym1fXqtT8qSR82cHj5kq+LLU/+D9UijhwWnvHZTGiDUwqwY0iJXIg9cE0YLx
	 uPz5tZJCkgc6Qd2lflQCfr/PCQBTCqb6T0Q/awmtAX4kjQ80NBAJ4UUe3ssmBdT4GX
	 KXzXqqfMleRj6RRBgMs9WoT2JVn18BemFcmSVtRcNK2p67Pw3ffaPI4dKIl6UBRaUP
	 7BXv1BP93VCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90026C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347179358.9180.9709736528046319096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8338e87d6123ba8ca67c47ebd12a146b8b9b08bb02364f80f79d7c575916bde3
Date: Fri, 25 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753471793
