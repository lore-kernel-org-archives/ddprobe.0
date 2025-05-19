Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3640D1C84B2
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747642195; cv=none; b=YzB0eABdss0fgPtJsm66n6nl+L2irVqZectCV++F5RyZOebPw6jd9zMVjeWg9qAygSb5Fu6jR8GRYKoc5ftQee2k1LYs7ziOcstVpyMOr4AooGnydRingdxeUaiFwA1e92Ma0jpo0DUe+d4RvvXEJxwiYM2610X/xROGYb1F11U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747642195; c=relaxed/simple;
	bh=yfoVI9WREWSpJNd0a5/Z6UxY4SEhFYYnzGIPlIbLRyw=;
	h=To:Subject:From:Message-Id:Date; b=Z3ZyvazyvW4+9HtRRXcCUvHyhSPEgDs7i+Yf/q5kUj68rttLT0dFIHPoKE7xeEbzlXse6dISV3R+i6EoKHyk245BkojH4pqueT226dUbldxtUMSIbn19diN4YWled8VNSKiHtYU/TOeNmfx1/wzZBwPKFVvpqDroq6t+50Ta1FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSKakjiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSKakjiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EADC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747642193;
	bh=yfoVI9WREWSpJNd0a5/Z6UxY4SEhFYYnzGIPlIbLRyw=;
	h=To:Subject:From:Date:From;
	b=rSKakjiD1DqBxFizSIfdCmO/QwRgGpTHgtaceBRhgTJ7KHv3yUepV+vFYPdMR6ksM
	 uFxhLKF1WrMVuvx510SmxVkcZZRAOden/33PBKu1XsWzs+/frxcX7uSaP77IEekWLD
	 um2yv84VQxJSzQjfF7HfDWPK2TxhMt9PeeJbo/7sxCOrjuTHQU8DuDAzmY7f7nEc0M
	 IGnmCUE0Rx8s3CyVCmEQ3HH95xLVoOiwU1ODH1vJ+VTVWIpwU3vAVKa6vkQNxjjMhS
	 2RBr9UCc4QG9KAR4zUu+6InG4BXwUo67DtCPvUiMmLp+DPtQtmGOgAXOjiLYHvCVlu
	 YpLdDZ55WRcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA2C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764219357.15795.6875493051833480154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6cebc2bb35c352baf75aa709efdb9629194cc447ccd9165204064579119c6b
Date: Mon, 19 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747642193
