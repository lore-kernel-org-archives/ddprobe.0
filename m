Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7B2EA468
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783957114; cv=none; b=kdFhqR3QuIhjK42DpCjw6Xh3RVeLFes6ZYERTGOlPMyNTvb71piUnaNIgDu7dJ2I9UIqB7spqS8nrOsLyWMhLYL+hKcAIGhm7SYH4x85oMC9Y18o/PY+hcIzNPWUbIwuYn6DjqIs8STGP47FTclq2umyBRJo8GsoWeGIVA3YezA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783957114; c=relaxed/simple;
	bh=Pu0hU45R37iXuX1cXlE9A4+XAkBTZedISqk7ziWVsfU=;
	h=To:Subject:From:Message-Id:Date; b=T/Pyt1kz2DHSkxcwMwdNF97S2352SthoEKuTz5kqUVoPt35cd5RSbUyWQ2nY/RYn/opOtwzUfPBkVB6f57PbVlZmReVcTSU0pYHwMUexspoFYm1coILKcTRc6B2B+eRBhQshX8wkh+GJaapynvjVoSgsEmoFyunqrrYHOC24l5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlkQ3q8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlkQ3q8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9794C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783957113;
	bh=Pu0hU45R37iXuX1cXlE9A4+XAkBTZedISqk7ziWVsfU=;
	h=To:Subject:From:Date:From;
	b=DlkQ3q8mjfUryuyJeZZX8UdGjztjd66QrBVdcJi66Z3B4otpMzpc3o1a/MTWrN89U
	 7zmSyLMQ0T6WbhunbBMkhNuVAQFjjLNFshDQbnIUGRKiNP44mLhCvLlXQx+5K//tTP
	 Z8n7RdMAGOaY4knwwiUS4mtx+zzF99l+arHA83X23b3maKzp6r9QAYET2lK3kD5Xmr
	 bHp46vPhaW6TydMB3w3lpBGqkcdlMmWtMXzgxbCyTq+X1B0Fd9Md6+XwThSfdeWISO
	 jv352AIwYnQWsi1ZXZSU82A0L5Y2f8HV+H0e5Mhiz6QqBzE/zMKl9HjPyPG/o/MbN7
	 AMJzzooczLY6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8453C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395711368.18772.18340700679324230609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7843744df6d3140dee9f4ef4943fa8f50c8c47cf428592e46da4e000c300ee
Date: Mon, 13 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783957113
