Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7907817F3
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715589143; cv=none; b=sFWMDjYH/rZ99vIIs7/x8DAtKB9uterny8Pv3Dfd/kWqMt0tUtFftLE7XUDS+MnqO3c8xwU1fi8EsfqN/WyYPtvi4vXMewy5LH2ya7rCSRAnowVjf6jvFfVxwHNCkTRmRXmOxj+31n+6Jk8cEiftsaiIh8XosTjoF2qfmM3najE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715589143; c=relaxed/simple;
	bh=QITCjMTo66COM63cDj4/actE12q54sswyNeYieBx714=;
	h=To:Subject:From:Message-Id:Date; b=u4uOZX2XxvNnpVn2Dg0s3mFA9yqZH8KsoDPvn7YAhHsSt0fQ80qtN7eVIVcSj9FHpPsqxhZf/Q2wtqDuKV6B0wiWXI9GhzuKDhFB0NmYOOJLtdt+kEC9nMMVwprLBeKjvTIPI7iInOHRB+nwRyDGh8wgWOrFUmnuR5FFKHyhjZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdFDgZ48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdFDgZ48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02361C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715589143;
	bh=QITCjMTo66COM63cDj4/actE12q54sswyNeYieBx714=;
	h=To:Subject:From:Date:From;
	b=NdFDgZ481+xkIMx+IrUkhaqJcdG82FsuPoqR9fcztZT/Rp1QNyga6v4hTmTQweXT7
	 GVZSVJIgp82w9OFWV5ZSjuWNKmUkjAq5OYpKSA0FPhdkOOXvLXzuBzwlIYzLrqzFii
	 TRVhUTpgy/CESohV7TSvU5dYTSTYU7fkQo0qRgzsFPkfVGcZ7EcrNF9/QejC7nWQS3
	 BNBbYz1VfjVCJHFiOWQE6BRJ3jFveE0lKYiz5jJxcF5VTeR1FUQPq2FX1JqkI3x1+N
	 BFJfAUDis2COHq0yr0ObSwyMIpqy4we1y+U7+HQR5I+tcA/jicGelq3/paHo1WeHBE
	 FOk2DpKYkBLUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0128C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558914283.29825.16552932036672832798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88523534a48455cfdedd40cf3f7278a4c49cc1d295a3a394ecd253ef969d7f5e
Date: Mon, 13 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715589142
