Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505E31096F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738004754; cv=none; b=ZEDGqYVlkbP49uB/mTD/U48FC8hmqgdGIkAKnoyJoQ36/t8C1/XAM6ehtHSTGxjMg+/3W00J+F3EkaZtqh1rcpov9reek0fEY65FlUtuNLg6xz/SBtvTbPyIK+7jehuz332gVG/FP9iJctj/613Vcmtli7qd3QSNdi4KAlbgBfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738004754; c=relaxed/simple;
	bh=LTdq7gwmqkc8Lsk0ElyWh0oU8ckByuYrHdhfOpJgiOs=;
	h=To:Subject:From:Message-Id:Date; b=Nl/HMm4hRvaez1zbZsBokNPScSh669TTJyvPmz/TRdfi6A/mme1BeffsO3Ld+VzrP8XPg5ZEyhk71T8284E15+PSfLc3cp+TBFwmB83noOb9Uy+zU/mWWE6KuiMuQsdgzDGFy5sNsBfNwDsEyrtF2vDn9qBVwDv/Uai3sYuMjmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWIE1bEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWIE1bEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2627C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738004753;
	bh=LTdq7gwmqkc8Lsk0ElyWh0oU8ckByuYrHdhfOpJgiOs=;
	h=To:Subject:From:Date:From;
	b=CWIE1bEVzUtrae2ZbC2oaMfxJBz+wDTq1dYK1rMk+MP8TE+OAeZ2nIC6y+0OSsUNZ
	 guK+c5fyXEvSNu75UQIq98wMFi88xnT65B7CXlEm7NM/D9/tbcD6m2hSvGWfa48K/n
	 wIcHfnciGFqOS2pyCiZcSb3AcnbM5bJQA67eqM/302qOGTpF3ohFj8Z7tg+nVwyk8C
	 3DIgdT5kzi3U5Kquy52uBpAiDqayNtiMwodpRGW6lHWm9l+y2q+sUrdH8zOmw2iqQx
	 P/4HCGHZgk60hc1VH818YvLPYs7QMrPSo9BMGdMwEx2bpZ4qk/R4528RMcS9JEk/3m
	 vbPTPiIu4niUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73DAC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800475363.22376.12253292674647230855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d709100d28c755ff14af3149ce4ff4f735380bab02fce98a8964e7c5c3461618
Date: Mon, 27 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738004753
