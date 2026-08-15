Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D15B219E8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786773034; cv=none; b=CH2UXHTK/5kcRIAsGohkY2aJMm+5AsDkrQbyXnBgzHrv9TokNhDj0JbGE5LrwhUHe393JGZUAd4mZ78ckZyRQgfnKr6Q5pHDNn8xjeEjkeOSVShUHgH8m2mHbn4xjjxay/zPx7PGr8kGKzG0/wkZNZPctsh+ARJ6YsUKl1ieRlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786773034; c=relaxed/simple;
	bh=TOBUT9XAZLfdiv+dUQfEGBrsBsJmCtiWuLo+drRjq0E=;
	h=To:Subject:From:Message-Id:Date; b=EfANqo5CtUB20t0bcS0rdusmT24mn/uhYW0Y5lM3ZmRdwAo1k/+tTXwbf3Ur96IHcaM38zkEsM/sVsm0+jYTEXy9bjpu2TgBaM2SgEvVH2uIQRbLFnAqcyzhcSr6XWcYdZ/xU1ogRjVxCd5SKn0pnCeKXyWfFhhMwm8lusyRYEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYajvy6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYajvy6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F0CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786773033;
	bh=TOBUT9XAZLfdiv+dUQfEGBrsBsJmCtiWuLo+drRjq0E=;
	h=To:Subject:From:Date:From;
	b=FYajvy6VJxI4Rpf6ESWJuyDhzki3MqO/kx2kf7+KIVVnsEDQC9c54pyw2O3WRIN2d
	 qwRqsvKFb2NmHDnKRwIsm21zk6QygiSqA66OX158WoPhcleb5E5zzPmy8rHf+PjmoX
	 zlP0Sd0te5BNl//okaAvGqAYUEVf6JvSl6FJ2GO5Wt7mZJngkWfG0GI1Z8OIhnv+7w
	 vcrXQrX3zMSg0Y+jXEjloLpOgk8o0cY0j8TZ62/CJrSWPwsHNzZtJHLX7AbGlYJutB
	 n3w78g5yEzmdObd9D2NIJlYc2xYiMJM/aQpD6iBs+uXx6MAoU9kq+oLT4C0+IHsL5G
	 7VtIF9qsbF88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EC8C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677303368.7466.17570011761906869402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2625294ec124787a270cd9e27d046a88937d5bc565d1fef6bc76a5ba4a8bc644
Date: Sat, 15 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786773033
