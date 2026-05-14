Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49ED3016F5
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778768434; cv=none; b=IitfOh8kCoc3PSQXv9G/NFcWzKnui6SwMXyyChrYOLMFBYHO9jYbr8Wj+WwKkw6D1DUyb9IQtbqYBLy2VrLwvVDjpls6AMldlqK4r8fxV9CBOYb6dhWitWly9yhDPzR9He+WUfsTP7p+DZKYHnmOLp3hh/rW61lo9abm2H9ZLL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778768434; c=relaxed/simple;
	bh=LBD191QyuMxQVAhGnT+araQMQdv2XxP1sc43vAvTLX4=;
	h=To:Subject:From:Message-Id:Date; b=SZ/o8YAvwbdgfBqb6wgcHmF7mz2DlBRty211McXb1fjJHS74o34nfZVuYo2qEJOPiISPhpZhfllx5tBYuPAXZcbelHYKrDsawHNqHIKEJCeYcVdrCZoghwGFIC7ojxvZTaymRRtZIFgzWXVK14qK9z/qPq4QbtsaCjpX+/W0l8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJAJS6vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJAJS6vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFDEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778768433;
	bh=LBD191QyuMxQVAhGnT+araQMQdv2XxP1sc43vAvTLX4=;
	h=To:Subject:From:Date:From;
	b=JJAJS6vbPxm8RXvOgeJ30RULfjIg+KzJBUVi+5ZQQs31TjON7dUCBqqJWnR+adhU5
	 K/mu3jGSs4EKhNKOG1284V776SfytRx2QQ70YVuQJsqYuIi+V7vf5iU+8F5YxQnc5I
	 S9NyHSwRKEb7usdrICUdQaXdDNniUgkoYPQmQKy6/OqLQI5Y3IQ3wlraUKfbuUdZ8i
	 EqTtlISGBZ9Nh9Pzh3LIPKdOZjY5ETaRY9cUsdNisPAao2MVVd5mJhIcWWQORzQ3va
	 D1sNkzeNEnZoFX4Tc4/377n4tMs/0lYXUkLIXDgTEYuBIpQp+mCBKK5pQdDdsBEEzn
	 KYxOj/KnEenxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC9CCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876843376.24587.5925941776597299286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1813118f768e5d6c905022861a10752a1dc1f43bcee103842a1a1bfc2e56dad2
Date: Thu, 14 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778768433
