Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C706175A68
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782859114; cv=none; b=CbuCwMSTv7haDp5o9rZwQb4sEj5lCoI1ZGQHKhhImk7mKakXkwH7n4xOpAsSl3Ly0l0cL+wXQMkYlNWMjbcxi5F8dXcbNmgKnk+HiQEMSaOX9S/3IXg9uH2cJ5FA4UyaP58orJyFLWKQy4Ysy/eNLEWEQ0h3WKKylUF/1ygDYNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782859114; c=relaxed/simple;
	bh=NmHTa8lyc6n9ofkiVs7CuJTwzuMGHuicK30pAcKwBpY=;
	h=To:Subject:From:Message-Id:Date; b=DhKsfkM3Js3mYZ/LDeWbJcsh5znOTlom6j5piFCpogE5pt6IZJi2e+ks9v5owRtUjWsgIlPsIg8bKSIwoQKR8fpZxSdKacIc7eFILeg0H4l4wUiEVaSEm8eUSKuObuNarq6HkqT0+QE6U60DuvrS/NDrW4IinsfYTAEiU8kvZbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SF/wfxkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SF/wfxkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8048C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782859113;
	bh=NmHTa8lyc6n9ofkiVs7CuJTwzuMGHuicK30pAcKwBpY=;
	h=To:Subject:From:Date:From;
	b=SF/wfxkzd2fc/ZbUokVJcMfCjUSRe0FHGRKmVYkiUQiyShdCFfqZ0tNrfO+LFRJ5Q
	 79tp6qEotWVzMfjcAPjb8xWnvsbU+CRNT5O3wPjCQelx6Q+EijhuyBi+XUW/WTQwML
	 VF4Bjclnljs6z+SPSjVNNjuqGN5pmQ9PSOwpXLmA+Sflz9prxd0qLZc3W44l8HFSEe
	 sQZxn3tYLlrJcWiyhshV1bJn2Bq3L4mbcvYO7WQIGKEepeDgWJdj02UMLgjjVQ3ohg
	 ntSxu42IvMEmphzjoELUeySA97JD8dVJoVus2vNCsUSUzdTztGkBidXRuBZRFsq81p
	 rQO0IJQEKsgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE827C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285911368.19942.56528948211399368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7e63fc57762cc1ea1781db0e537768cc294ab9df355ad815d2401f48616b94
Date: Tue, 30 Jun 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782859113
