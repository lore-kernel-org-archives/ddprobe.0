Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DADD1D554
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747744194; cv=none; b=YhZbItCCbP7cOosT50aX+YWq2AwIfYLbfVHL2/N4n/lE5ALEkvvmeha29uaigtJPMQX9ibSjB8T2ltPyuoA9ixkIAS/tdGiHYi6I+1jhQ+QguTUdu53ITzm4HMhUjm1TN+N5BsjWtDyBEuosZTZ77bWhdWXws9DMiNYgZCV0GC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747744194; c=relaxed/simple;
	bh=SZ2CcPzndAb8j5OPSfS+3fgeEr+6YGmBV63tJlcbVeQ=;
	h=To:Subject:From:Message-Id:Date; b=PX8IRuiJOMGq/5ZrTfDUsb3Yf1P3yI0peph3ojmJ0m6JVBj1DAooPio/Yb4eOebUTu3R+KuLYmJRhhJBYvQHQZbkkCOyJISbqJpZJXiNP+en6mfR6PQaohme9MimqdDapcIH4VbIQi4lB9Z69xrOZjk76CD+XZVDwVOocyGi55Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K365Yb53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K365Yb53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D856C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747744193;
	bh=SZ2CcPzndAb8j5OPSfS+3fgeEr+6YGmBV63tJlcbVeQ=;
	h=To:Subject:From:Date:From;
	b=K365Yb53hVx1ZAXen8UrH1rbBm/tma8/SRKhGJlHD8OgkGLbUVniXxdx55eViY2/P
	 ubCsxPgpboTBjhzLQlk4dCFhiNiQH+EX8OtCd8z52JUS72eEDXrgH7uyRAffASkZI0
	 GxMI6nsAV3ybaaNwb4FkDlw8MQvlz09przmLvYiJXr+uL0ez3nHlPH5UooJdlO7Ijt
	 dEYk/0rZyQK+kABz+KOAvz5KLtmgNYKP3X/kQupUA180zWyExRhLataUNlT3m0Nwkm
	 6or8oB5sDOZ+kxr81vuWgoOS7jReKbYM0pWcY//TJFWy8pHOvDgE/9j4IvY2UC9q5j
	 50jtfxNvsju/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E109C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774419357.22168.11348187045331275264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f588d49760a706f09dd0795fd1913f3291d85861054d45c39361d12fdb4b72
Date: Tue, 20 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747744193
