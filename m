Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502912EB0F
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790306434; cv=none; b=DWKfGDlRQshHIQdj6sKZVKqcu0bcDOGlcv8v1vq8DYLdH5RqaxsOJuq2e0o3CqOpm2fmoFGWi8v9xbFXWcwm7X9HG/1Dz6Qpd6VvQ68jV6i3vRooY8llEYVM0EDEaRr5tnwdKHtpspaehIq+XNhZSDJzt0QU+E/8EpWJ7/14n3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790306434; c=relaxed/simple;
	bh=nFSTnfziiEhA20vXZnRvCKlH+G5p2MoYWumjP/dvQAU=;
	h=To:Subject:From:Message-Id:Date; b=kc6lK9Pm9+pn8oATJAk9xdtEBnHgi/9H76atAMQk3CP9NTkr+myErMsu7F6ZivrKF2B9WctaEHlgfTu6yc190PimEDGhhwwl6ABY0MNrtan3hRmh7oMIlO20BL3iOjdA/W3ZJyZHzAlxkZyZBluyMqKzjkryzDHtdXZTGkjdaLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vj0RSCPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj0RSCPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADFAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790306433;
	bh=nFSTnfziiEhA20vXZnRvCKlH+G5p2MoYWumjP/dvQAU=;
	h=To:Subject:From:Date:From;
	b=Vj0RSCPQOxNsv+VG9FtCIMXDZp46xZItiup2SjvHddy6lZRonG5fjvWlBtKS8Z+aO
	 Pr2NuJ6+8sXRj7yqo5Uxvc/xUXTKFoa9tqZuZGQpLXLtqHjArdtGjVYWY8X2OpQDZx
	 7+JNFD35//6riM8D3mGJPKb8cGSrvxyik1/xs/c362Nu1sqQmx0iDy7cUJOd7Fy9Na
	 z6AEoGWGn1ba3KDsWgEKT1+H5y+BkyVRiVPoQfRW7DgqRbf5PquEaKY7T6BXd4wzzp
	 ZBuBJHz4f0ThHfK8spNNj9yKG6vDBxFxqFhp7koVKf81e0JvRnIHvoXfW19YwEUwYN
	 ZLkB8gCtkDQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D30C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030643369.9938.3306433920181151658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12c251f09c850a928cbb4796fd0720dc43a9e1bac7324c02c9b53cf6aaa2ade
Date: Fri, 25 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790306433
