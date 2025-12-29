Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4227E277C96
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767002034; cv=none; b=EHfqSDAzsEE9SFeaHeoGNWO/M2zgVjkVhjtGJre13eeaOpxv9BZmM85GJ8P+Bx1loB+40d0gX77EWAsqC/hb2eZ0/pncABps5B2ZkAZXEvGi+hacdHafBSluhay1VnRefxaL3Jg57qjB9xug0BMbh/ew5dw6uKILGQrHl+72Q5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767002034; c=relaxed/simple;
	bh=eoCwFTQEoQe1EPi4W7QAgy1m2wxgq5Yss6ZvV5WLS0c=;
	h=To:Subject:From:Message-Id:Date; b=hTK3A2gIiO/JeH8iq9CTsy5VAhrBgI/iKz29heLexGB8uQiroif2hSm5d+SmAuxgWs11g4r4J21WEkE8f3a/hMCucVxW7Lottw2VTcmzzkh1ol9jgMWVCUm7OtiuCei0gcb93A6gPNXJ7Ry6wVEz6XQZnLQxbAlJk5hfh6zAFFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLRdo99U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLRdo99U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E4CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767002033;
	bh=eoCwFTQEoQe1EPi4W7QAgy1m2wxgq5Yss6ZvV5WLS0c=;
	h=To:Subject:From:Date:From;
	b=tLRdo99UdfttXKcwlm/I0C28xmigA5s7Tg8OOlM5M+MHCWn7nzV64AWFSrO51tNYM
	 rO03xY65+JuBvP/ioUg6W3u/ftoFmMxd9BQ3VvDCD5X+CR0WcHImO03EnQmdv7QcSH
	 LjgEMZoBdjyOm9/n4RmpeZl71C3MuVszWXRlCGgTfrAyzvvRn3AHPBrfAFsfBbzQpj
	 IaXz7MbPsqz4kxlS8H2V1h1Zd8C42zCQIoGMaGBQlGJSrpOg+WqTkzS684tbzac9lJ
	 990DwOjDvRn6aNWA/P9FNl6wH6D9mns2gbJZ2iM+pFttiFvvPM6oximnOS1kU4VjAC
	 z6EzqLbF198LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E3BD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700203362.18721.15893249071214016592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f855761494ce8ca650948447f2a05c951fe0bf154c3ece3e87c3a8fd045119
Date: Mon, 29 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767002033
