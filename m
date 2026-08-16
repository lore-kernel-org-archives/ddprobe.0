Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9C338AC68
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786842634; cv=none; b=YaoPXI5XurcYW/JeLQNA8IwovKWCsfWR70On57k74VNUAt5TvW2BZsFsFLvj7qGBrY4jhXcom0UMylVOSoLnh1C1npfD/BY1VQTOvVkPfdb0+ErHuzAIxbHLdI9EwPEAmaVYlwkuwQfKERZ5/40hPRyIXCgXOqsWwuPYNak0u04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786842634; c=relaxed/simple;
	bh=4LSdGpyHtKkbeurAjUpeiFUQ1qqXoyH9nkyzwNOGl84=;
	h=To:Subject:From:Message-Id:Date; b=skmo6dlhfpAoi1l5VU70uwB0uGHunX4/yw7u65iqvMSTeEPJf0xsYq+ynz//56z1pzgE6oD54hPp3h33dtfIbLBuu+B/SmZojzmfoT0Mf8+pNL3CR+lo2765uEMkwiS27meVm7EB9CR4hmD0PwQDH8yM/UOfLVd2tzQFBzV81V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCqFBwVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCqFBwVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D689CC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786842633;
	bh=4LSdGpyHtKkbeurAjUpeiFUQ1qqXoyH9nkyzwNOGl84=;
	h=To:Subject:From:Date:From;
	b=rCqFBwVDI5XIEpJHxw3seicpJl/qcTe3dF+m6yZBtnu1gWDDKwrfx8YGVx1VO43cq
	 zZb0Qf3slnTPV3361ID5K/QdCk09h2uP5q4YXvGjmGpfgnUxjy4DbZSOAUrx+zawY5
	 U3hZ5tlqoqM4Yq7Gphl1jgYvMkzv3ZjOfh0YCnQDKY2A/wYxdzfrxRll3XJq273cK+
	 Ku0X19Ol8sMajOsbQo3Rw2MOCgsw+FT4lZpmcrc27em1pwySCOsMARnZzhxuHgX9iI
	 xS/NMRajyV9hhLkOYm9R+ajq+Tg364q6LXwS2E4Lb0UjLAiB51s9wci3awWE519OaS
	 vPxYRVKPhAVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A64C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684263369.24743.15021408050299285272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6146bf30d79251ddb0dbcf8c8f598a84d4c2591d32f9cd6564554403ea8a7e
Date: Sun, 16 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786842633
