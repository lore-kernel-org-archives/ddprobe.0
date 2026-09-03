Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E4A426405
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788435034; cv=none; b=ZhqnEX7TH8sdlXg9qfT3rVMQCjEz+J5FAcE1v8YJweDsA5Kh6EEXaIJ8dpodXsIKJrqRg+UH0YpkD+EQvb3SPaxAf/u7QGeLKGs/V+kxdDzNvZl/MhEDREUfkudolCUkiP0g1YIKfy80hEiRI9G+lAoa4cj7vpxtNdu2vKZGCcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788435034; c=relaxed/simple;
	bh=hN7MBNhS5DjFV3eU6UcHS79uswBVua7/0iBAbu7PSXQ=;
	h=To:Subject:From:Message-Id:Date; b=jsHlCfmePhNYUSOl2Ii0WDzwnXaJBQfPT831TtvRAQEHYs5zFKpZ5VM8aLuaoeuoCjPzhxrPlNPM6JUz+4dC4+LMIpnwZRI1fyqC0bIAhVCBgu9q6LqRH6qoRObs7V7M+iQCrMvtUSbQk6x2+AYBby1M4/2cSzohcClnYNgEztM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqQjXpLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqQjXpLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1311C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788435033;
	bh=hN7MBNhS5DjFV3eU6UcHS79uswBVua7/0iBAbu7PSXQ=;
	h=To:Subject:From:Date:From;
	b=sqQjXpLt2ATWWPMbTG3irV4/J4uj4rhq854gBm/zJvki4XpsOqpXgPs9DOSjp4qxl
	 DUORI5KEgmeehiokpgEqa6b9pADhnC7hMHefi4cJCesf5MnlWP7RUO2Jw1bKT4kdhs
	 d05BvT++PTEz2qjPH03KgvP/lmmyWI+EGMjiEBa6UsKGVzq15Sgy8oENaD0kZW8IYQ
	 KFeqDX04+mzkT0r7lHWvPwLBhhgc7CzWSMwSqy9cdeY61kS/4w8bARVlf1/saK2Awu
	 Qu8kRG+hR6rGrBiBw/RFp3HVcbCDVZJ1mKbHq4w03/vTS05YLOzwH5ZqnII9tBVoAR
	 XavnEyMlFkpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC55C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843503375.18046.3761520955104833316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fddc9b9ac7385303872d0d4fcc51b6a9e400b484d71dc8ef54a7d008bee02d
Date: Thu, 03 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788435033
