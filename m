Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5501D3ACA51
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791318634; cv=none; b=VFHLPRrArED+07wgsFEfydRC3Fvo81EXRLZlOhj5me7ilzgbRkrWh8A8maxSsZu8vH44haFHYRfSGdhgqxhDr5WcP3nZAHQ2QQMAaQVapEYOTdia4c4fq/bCjvm0qo8zrgjfv57iiPNZxz1hIL1yGpNpPqIU9bFXnJpPujnsKsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791318634; c=relaxed/simple;
	bh=cfSVKx5uZ+7dK1aBS0BJn7jW7ngyNnpimO7ObDk9OdY=;
	h=To:Subject:From:Message-Id:Date; b=MeqIpYvarV+uBW6VZ95/jHVewhedGMzLBquZRa2KHAtBfkYoRucl7S5DlAF6cC5ZmWKdh4x6zTLcNEq1F3aZX7fTdC+6I/VNsDpxNYLFXmZNl3c6UmUVEZIMz0x/ySq7hvB+vI6zdu7b3phhnQjNvf9RL9+75UNzeixql0UClNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW6ejA0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW6ejA0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC61C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791318633;
	bh=cfSVKx5uZ+7dK1aBS0BJn7jW7ngyNnpimO7ObDk9OdY=;
	h=To:Subject:From:Date:From;
	b=oW6ejA0YTLQv8vETPt62wYQDJpNJVb/LA8ZsxFLho2fhWLMhMUCh5AkeKPnTeXvmj
	 yWgArlYPQ9y7z6uYVMdaHcghc9FTg2pBKSRvSRyVfCeEU8o2K6XIqmHqCnCI5zSiM1
	 U1e+sRCHbYrj9ZEtGF9PSfxH/nJkas8pOYx1J7AT+mGlCcbK5iVaoFxu8yFZNeXKT6
	 /jClPXXXFqIAZCi1clLSHisUXIg3p93kMDtO/d6w+fZAETxELjZimxOA1PPU8SFvt/
	 X7fjCAWFwbnSZr31LvUMhGyvBySgVomAAzf7s8vL2s1CfSSI2wwUkc8w17Dk6ng6Xd
	 bq5EAN8n5xy6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE8CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131863368.9757.6771230633465294844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef137eec2958207a118031623e1ac952c8bf7a023cb1cfad735a7be4bc7f1f39
Date: Tue, 06 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791318633
