Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D71020311
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735957554; cv=none; b=sdS+a206rPWLZ8eU4g+Um0hYzokekOhb3ojws9Vbnvy6W0MVP37xGWu4Rr16R7fdQhIsx01jxKNOSb05XQh6JQlIyqjqEuIyiaqj/H51VvL8Ch1spOtJLM2BvtiICwSdNlLo2eOtlq09v4Mu3C4ab1DQNPWHLPBOJN71a6urW1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735957554; c=relaxed/simple;
	bh=H7cozrZFfODMEnyw+//MpqNxZ1mPbIjIzC+9qYz+mhw=;
	h=To:Subject:From:Message-Id:Date; b=mPWdfldVtK5W2et1zgh9/DDZhBkEitM4WsEiOeIzOeVzFJQOqxVAQ/7RY80ljJpA0c4tJ5y0A3fM4cxFy+7DGcEMSVNa+1OIGThEgZTWHcoAHOJYAvMFL8OMRBwuU+lApIJzaW5IJnwMwZ1DflxeYLT0XgCf1DOLBWscVB09YYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh7jZsHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh7jZsHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A09C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735957553;
	bh=H7cozrZFfODMEnyw+//MpqNxZ1mPbIjIzC+9qYz+mhw=;
	h=To:Subject:From:Date:From;
	b=mh7jZsHcbuOsfjrXWtTkuzyFWrrYdjsh7t17tuACBNGqV3UEJRFm+dDSJV8t0rFZj
	 1kVZ0BgLBVfVpMb0b+0fJvN+RZFBqNPeXj9IAB0NzYKLHyBHdUHm0QLyqKASCkKZCg
	 W7nsmUv2YY9BaTPOs+ui0UU4PwcFe6zgRb1ZzevQWvlgPI1ZAu61OyEiYj0xAG5Ty6
	 dB5uAQO2HyiQrUsYQveWFgP6x8IaslHlyQfiXQBG0sCucnBljhwPSoNZrhDprQmlYr
	 zlG6QtQSo3RyKZ5cBP9S2U9z0rIzZoJgkWfG4ooeb+Phisl+Kedm5D7Xj0NlHyK4Oo
	 EufTtH2LNEkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A8E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595755359.28575.13728024267929656381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91081766f4257fdb113aed13e64a1b2e9939e3ad6ee8bbf17bbb0be85ffd7502
Date: Sat, 04 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735957553
