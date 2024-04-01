Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC8F3FB1E
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711979297; cv=none; b=riiwcTRh9AhTcSFAepC/ROKkoSvOiKeuieKrAQ/v1dMC/3iYw6idn0OiqDBsUZMGZRTNCun1stxxFgg8mKRnJslSv+25uCtEaed/tVldDHiL/j4OQfmsNGZSGv5gZfnMFbTrrefc9Y5c34CvjCfjegc4XAdzWbRCAWd242VsqX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711979297; c=relaxed/simple;
	bh=rlJGvWfK5jJJWS1f6WKoMrKWabVyL+U3Q9fno+xyZQo=;
	h=To:Subject:From:Message-Id:Date; b=ZziGwma/edIkzmU0jTLDK3/R7y+wRRyBbUokwL1AZw7oA10AmbZ4WuCL2W27iskBDjbejzVCHRORtb8Yfcmb53USOLAAh0q9+MVkBZm6IR2FIGGlqM9tNAN6ceLDaYg0ms+Ei6nlWY/Ye1bDZHAD5Q5yAS90Eh4gaDebakC6YCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL+wML/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL+wML/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D4DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711979296;
	bh=rlJGvWfK5jJJWS1f6WKoMrKWabVyL+U3Q9fno+xyZQo=;
	h=To:Subject:From:Date:From;
	b=jL+wML/vuiJzEPzyIEkjqLHIlxW+uXL10eVpMW4M3jG5trlWzho/aokS6lqHcrIIL
	 cabVzIiRhKQNEMS3pLoTipEj2+nuaVrwWlAamj0hUB1uU5kU3yhqNVTd4ES/qw1XKJ
	 x9XcAPpuV6H4dDn0/dQsoVcFIiuJDukyFb2ee2WvXobqOffwBhK1CRIM7yQoLGdu2v
	 P9ZJvE0I0ph/gQDJrXs1UonbLWq0/rB/0pksXMOFoP8f5wJR2knV4LCjVcNj8z3Ln+
	 aPmYNS/gIqeQkUYHKuUZ9M+rqXsq0+gwN2dWWDchBHZrRx/55X66GgcneiFAkLsrh4
	 9SlXrqrfPRa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6598BCD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171197929640.18843.7777396993413047140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e404e6b45a85b3c861b8872be441f6db6882572c5033dbeaf6f3d2cf1879be2c
Date: Mon, 01 Apr 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711979296
