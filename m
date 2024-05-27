Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A80D6FB0
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716781463; cv=none; b=n0afU2iU3qb2WNI+osGVq1mCu1LljUZmlaHi9kjU8M7AHdqo1zAaXQSyZ03/Y11TUtzDaIzLlFKvgrXb0Dz4KN/tkBNsHTawd3JLDCD/aJesHcLPedilEauq0+rPHFJhy+fzlcXUuwMhSnSk0nZIEcXKMLc8uy3CkS7zt6d1Pws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716781463; c=relaxed/simple;
	bh=ybRD3F20s51OBYQKyKSSbnzLGaCqWfxrRdwm21dKluE=;
	h=To:Subject:From:Message-Id:Date; b=YT6ovbmwdjE4jd4sk2EUt0/w12lMOmxkclHumzV+7rTO+kZho6IA8g1xVIKx6oGc9ZZFORX5NzQRxSO4YAIE7luIkNteFtHT5DQVOoWIbNm57xztsXqOlWXMJuDjs9KjNgBThKdvqT7otHjMR7NmV8SemDvHhwVMklOt5OxasuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j97Y2mds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j97Y2mds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD053C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716781462;
	bh=ybRD3F20s51OBYQKyKSSbnzLGaCqWfxrRdwm21dKluE=;
	h=To:Subject:From:Date:From;
	b=j97Y2mdssyVwh0vvpiSlJj2j/cOCY5zpKMvSUEkQAtrmFlu81LqsS87zAo6PQt4Kh
	 vKfTEXPuKY46MCMlZ2IqAAlFW14KN+z9w3Vdn4kS0ek3q5ixsUEfPrC/7agGqFUsJ5
	 nf9EEXIz0HhL3QfBv1geOw24w77rO5s3F39TpLWGQJr65cKfAEZSNPvJu9CSQtHGGH
	 v4N/dlPwnR0NJmMRoDT3sudCwfLliOs5tQaoDvuGnCNU3GSFmCogwPC2H0ps95ZyPR
	 Cbs//Y/6+SwkxuhTzw84N68YRk56np37lKGCYycnr0PFjzELYrYFzNDSBk7gJn+cNQ
	 g2ADu70+uHeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F06C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678146280.21514.6273785550009367762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ad34a02585dade2a7351f7ad1871e431389fa4eab604f4e105c662f4bd10c3
Date: Mon, 27 May 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716781462
