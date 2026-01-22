Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24FC32D45C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769081033; cv=none; b=hYXY3wF5Uq9zp94yi0kR/zZlyKwXxPkcwzRxlNUqd0LU5YplNgir12iT40fhOdiVClzaH3dv6bIErUqbiNm47XFbaD/34uCG3KglVQjyrYS+4oH2ztgsrAPT8C5FB1WBbJP7XiUCYW0a1vhVl00GtKaXq+U1syeeZ5QR5kyoZ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769081033; c=relaxed/simple;
	bh=sUZGF8/n8E79ohUmMFCbCrI6cW4/+fmoKj1ocE4BM30=;
	h=To:Subject:From:Message-Id:Date; b=YjAjR7b6uEfM9rPhI/QDHMgjeiycL4brayRtRVCoosAc6RJWyGhf1utrEaofpfeDXIkMPJTEpXxn8DzhbFr9lph2HPjRYOUM7ywZXoO2TEDhRVG1g9reDjmTr/udbPcIqyKUt/GDkh3vqcRcDWczMZZGHhfrHyqvJ5DvHJVEexo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zfz7a17X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zfz7a17X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769081033;
	bh=sUZGF8/n8E79ohUmMFCbCrI6cW4/+fmoKj1ocE4BM30=;
	h=To:Subject:From:Date:From;
	b=Zfz7a17X0Ie1HqBvNMXNLOsCDVPAo8ywvuShAQI/7WT42EdUBcYbB1vK2awxhBUMo
	 M4bXFF4BNjd4LrgRTjAlxVfZnwLJC8XZtOjSy4i0ZR0miT+fLQ6rJ3Ekzwzb0jqEur
	 JkPvVueANXF59tJlEtSoKirPOFHyjLVqNImJ+Xak/t3Om/J1d6Rqj+XSzHSq1mRDOO
	 wgcIhpD2hVtRBqa0S79+YNMxHmHx90YDYwHGWPXfwRFhsSIvtrC4HFNpGmHedZBx4K
	 gA4nY7gd+rytqbLpk7geaVVB60WWNpuOWCLIMuNiStbTBkzOUioc8kfUCGPXUFmp71
	 Qqqhlx3EJEXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90203C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908103358.6268.6665501204751864615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f8a886f7d05e276ef041030a684dc712d1f3be82add04f817b744c9b0860e
Date: Thu, 22 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769081033
