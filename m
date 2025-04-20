Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519D22905
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745185194; cv=none; b=BVKdIHg7Is4udlxSmMgM6N2nzHrhRB9IQK+99Or7upISjWHuxjerKeWVeRCub6aSZlWHeQIMhnlYEye4LInZLmj3jOCaCu84zOEsCnJR3l5wteqdLUN4eFzjYbbsCDEdo/am/nvewhoAIrLRd7Q+PLIyS+1GXzZzg/JBoBfaG1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745185194; c=relaxed/simple;
	bh=Zx/wFq/FH7FXpHDW5KN4GszeS0NOtdSsctd+bSHIC1c=;
	h=To:Subject:From:Message-Id:Date; b=me3hzwkJVm+sKbxCZKcz+CgcpsEXgMkASoN93EJ+Mte6pmUnW2fJc4MMom5SxRgyUXiNdDdRRMrzUXc6ZsOSLUqyGu614Xz9KwzNB8oM7UbIYyYhPNvKoGGjnb0fhY9hfKuX2/ahRjDgFvR94UlAd5eap6LaMkdzRh0yviEAsqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU/pO1sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU/pO1sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25C3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745185193;
	bh=Zx/wFq/FH7FXpHDW5KN4GszeS0NOtdSsctd+bSHIC1c=;
	h=To:Subject:From:Date:From;
	b=bU/pO1sc/cAn6H9AYYIFhFuB1FbCCNB9PtNvMvUI8bl6aLs0GhSjaoARMlYGqjXZR
	 SxQUGCCt2lwcYjEgX0pQPpddcb48twg58kDJgTA7JwOl9Rrhi7pM0qUCHwwyZkacqL
	 oazXzHXeK382QrUgZaxIt7QgsHF6lqGPAgK6u60PRnkPJnBqvCuggaSsAiPyW04yqU
	 h+Hr9irqfpC9b7xXNOnMRJujXAA79PR6lz+sYGVhW9v1ANe7gpzxkcXrDu7V3w7BS7
	 2t0DiC9IUU9puAjiP0mFzp/LjG+ddrEQQjhVAN6SqjTVPvwW35YyNv6eFGxJU/0P9f
	 d1fLOG/i4FAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E408C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518519363.31578.16493568152197580976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18500d48127ab292573bc2f8d579ff9e8ecb02313086fe06a565bb0f230ab902
Date: Sun, 20 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745185193
