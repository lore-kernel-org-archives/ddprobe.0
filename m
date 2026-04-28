Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8346D43C05F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777380454; cv=none; b=JJ/iM2/bTjz9WjgfZ/sjt2L/YDNSjmwPuLbdG/YOZBUro1r056clUzbcqhp5VQFlyuebGT9ThaSVs3CxUGROZnBfs33fDmmaRq8Cw2uPCzDewb3duJXMBA4bUF1WRRA4Yj6Dc+ThhnZuwMtLyPGEGlC6OVEt6+DzRT6Suexm+zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777380454; c=relaxed/simple;
	bh=YcSO7Im58zyQQJVnWfy3w8kYb0bBn72UUPga3muBh00=;
	h=To:Subject:From:Message-Id:Date; b=D1fTPKtESLp4sjwBapwM/+MTcPFJiVIo+7mmIoyI8z8GO7Lz4GC5W+ZLnaGf3yu8TAHBP6O+XWPk9ongC0/G+H3zOLJ/GCXkLrwbIeXB3AX24x+tRHoXN0uQmXufvW9ITIBETAPb3lhOYNgguQMRCI0zy7XmWBDdbRMkE+2IfG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP9K65Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP9K65Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83E5C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777380453;
	bh=YcSO7Im58zyQQJVnWfy3w8kYb0bBn72UUPga3muBh00=;
	h=To:Subject:From:Date:From;
	b=rP9K65QrMCDysC6UfvN2mkEI6nFuWvTQyXCzJRh7P1yD1YM0cY9kVETjKuuonMvip
	 all7a93ooDNm+kN8ZDRrfSwh25Dprun69adCjOhB9khFYMVXvHaHkDT3zuZHJguhjA
	 fQI5J3uVinv+GxkUgJrksn7L+wNeqFjvfDNf15fXhyl7Kz5oMODD0o3tfQZhYU4cvi
	 9yHWkwtc6MPTTCSM/x6g7xg/79DUs1EZ2OQ3Kr7cnAxMkmhbnQs1vS2gGx96IfZ9sW
	 YSyjtIRy2j2ySwjctfRbXQA2AOq6lKXhMaGldBE+r8LKH9z2msIcKbuuqkLodtqVuF
	 CzuoDqpeERaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C3FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738045368.2398.17190387324437058596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dbca49c9ba03600c80c554776fade7480a95eebcc7d2a73f059c6a006b8235
Date: Tue, 28 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777380453
