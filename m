Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDCB3016F2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784958034; cv=none; b=icI6eo1xnOJGxi63zV+uypuklmzZYRoSBE4zLSOS2fgSXIleJM+FwarKX0L94EospmamhmYpoGQIzTUx1qqsbf2gvmwidrOGYNM4aE09+scmM0fL+Nw8XrCdd+qFQuJdlUdXDrVFgS096f+0UiH6HqYYoNtXuj5LFOFKFBMHt+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784958034; c=relaxed/simple;
	bh=vvNtC0PoPkB8kAlgl3tMtEGGid2/iH8RBnX4yWUUFkw=;
	h=To:Subject:From:Message-Id:Date; b=LlXoPtP3v2NP6O4TW0aWGWOGlOTQHBvskJt6JotRZGjuLE+dWRyAx1IuAJtE603F10njCuI5peJN81X3vHhQQEb4ehJVLq3fptO5ugq1ts8zL4c3wyVYKkks3LMOyChHwycQlOPwN1ocegM2k4ESUkS9NH0DqDL29SLMl69dW0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVgATJFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVgATJFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEF5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784958033;
	bh=vvNtC0PoPkB8kAlgl3tMtEGGid2/iH8RBnX4yWUUFkw=;
	h=To:Subject:From:Date:From;
	b=rVgATJFmEkbQ7ydWC+Oor9mSqPvXpDpvNRpRwtf+wnxU6unfUkv92lbTn9DsJ2n8q
	 XJ8+blqe7V9obAlQMIcrSCatGWfCLEXnmj9WVNsw8FN2pXna2iJs4Pz9n51banB6yO
	 6wRGIjmd+62HpH5H6KczkOxZja1E3hrO30eWq4a9ZQhiIxRLGGnMTzdIgzQgycdDEW
	 wRIwoYJnIx0ouJzspgJFsM1lgAR0zuLn8JmGg8D8rNOIWHoYlUPzmXR2miZJy63Dmt
	 HHSi8UMb5psPmNvwI1cpotnMKQVUxB91nTojVQrV7b5Le077OqRMtlkm1gXZT6eDRq
	 mNzwaKOhot+Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC6EC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495803368.9446.16150721321623558885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cd2ed2a0c0332d63bca57753f17661d28785bc1b63051d7e7f9e93b932c843
Date: Sat, 25 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784958033
