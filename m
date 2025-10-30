Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4415428BA95
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761788394; cv=none; b=pZPOGB94hDKScpXX5nHjBAb6vnGwQruEyFyA4cPgobT139EzE+uiRt9T+A6qN+DCb2xlMMgVU97rBOXTD3EjeaK6EmFBKYd2KLRB0JCZ+U7NgfKxwOWM405e+4IPVKsdNzun/mkIDRTqhH4t/3xQAkIwiXSHX1oYlKDRSpB20ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761788394; c=relaxed/simple;
	bh=3qbMp7dzvVCtOKkBAiNvtBSQoauTdbS6dfqLj7FyIZg=;
	h=To:Subject:From:Message-Id:Date; b=TuVOsM7gj45EFyUxqaYY30M4vjIBJSStwn2wD64h/mj4EHyosjTJL6J8NZ9510CDQZu7MRVh3TuYlHNktZH0rbsPvPqHPX00fnjZqUSZAwPh557pBPU/1ZPH4bIxc+h5hnYrDnIP5YMuqnWEm4dEiP7UwzL2e8gvD7eInncUUk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGid2MLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGid2MLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FDC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761788393;
	bh=3qbMp7dzvVCtOKkBAiNvtBSQoauTdbS6dfqLj7FyIZg=;
	h=To:Subject:From:Date:From;
	b=JGid2MLRJxz+1Sz9Xmj8+gFMbl5Cs5yA1R6P3442ZqBwtOXzVXpSNZFLaMBzO7yIA
	 E/MYtRzVoX7aKROsQ6DNQMMd09URjU/xOdhT7E3P+D09+Wu8Dj87rlJ6WPiW5VeTqN
	 JoxNuDAYoGRKxowP7+pz9Lu8fzn1Uaaa2BDcPSoxbZKSiOG/nO44bBxWzXI9OmsgxV
	 j1e7elV3fQznWR8bAAiSP3Zp3DqzhRHufJ9dDtl+mH878VzyqvIZuDqV+TjgpuzMv+
	 L5OQMBPB2EL2aHSBl1Si2iLR70Be6czeCeRRcZpghqL4CnwOAkK4lAUIl7Iwj58uwF
	 HMDSo8nHLc3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90408CCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178839358.10060.10002590662155578533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3689c0e424b0dee866d3eddc971421c2b5ed67b128482d8f0428e78eb8665c
Date: Thu, 30 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761788393
