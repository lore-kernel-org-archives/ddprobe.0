Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ACB29A300
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758877194; cv=none; b=e0uYRup/9pBtsvcj/5K97+DRtxBLK1w13D65H+uT1HYQliRzR9JS8dXTjSJmbhUgwx00KrOV53WcNENmf94tkq4urfk2yBprYRvMUvOGIzSGOCqgu9Lgmfbkf+HbWicxBroIQpOYr061340lOOQp0e9X7lPNdvHKInKS7HEp0QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758877194; c=relaxed/simple;
	bh=ihD+Ur7XV9W5PxkoCheoY5gBI6JID67NfK0YiEjEQf4=;
	h=To:Subject:From:Message-Id:Date; b=ffy+OELr0dIeRk1cm1+a+6WEZf9dTAszddkM4zO2Q51tDYyhtIcjp4VgUJp65w0nsrSOpwFaAfn8JfPBgLj17J6JzOEiVGUh7wZUD9NN6yQnQaPtvkG3T8n7HN+owpYNgPYE6K6aK6d48lxi1B02cEhmq+7m7S3mwhTVlGUk0cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkB4z177; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkB4z177"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A77C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758877193;
	bh=ihD+Ur7XV9W5PxkoCheoY5gBI6JID67NfK0YiEjEQf4=;
	h=To:Subject:From:Date:From;
	b=bkB4z177oNemLVk7PQjOcFiykBp6DGHqLG20CpKtNkkggGj8DmydxpInz9/TcUmb7
	 nFc9ZTmACU0ae/U3YxruwD+zQn6GHka1EbGKe9ym4gL6RwPygo1Ea2t5m0qFaQ3duX
	 2SpOQ/RKPdjOqym6wg5s/6LM9pGQYncY6TAtKMr8vtdWqYqfES1WCmJLp8QfNto694
	 kp+d84+0d//b7+i2HFP+lMrKU4TjuyGzCE/Co4Xq4vl9RpNvxwASfzc5pAE1imcP5b
	 53gXbfxczpyu58nv2/3OQr1H4lLWyBGZSrwXVdh7DnP4/JzImpBi/36WXV+vOJ6XFn
	 soywNJgIGbYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE6CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887719358.26980.13205613265735649022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71c1d6beaec59392dae4740af8dac5ba8dcecdea2ad8d75fca844f64d6c8131
Date: Fri, 26 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758877193
