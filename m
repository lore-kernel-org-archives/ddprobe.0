Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB39460
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721573154; cv=none; b=rfzvX0/O3QLy6npDaZOufsWcKOqIjzFeTsskw6eodjp/JfWO2EoY6XgIZX5O1/93qbl1arQy5OnM5ZIt8Zj/b0w7M44d9strfgkPUd1mW2vag3kPfwNeDj0cZymL80nwV4FIgaVjUAk3B2/OyMjDAZTcPq1CBG9Yoqs3l0qu7+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721573154; c=relaxed/simple;
	bh=IFYZu/L3xEKJM6dCn2Q5HPkzoZruzcsH7NBhSiN5GtI=;
	h=To:Subject:From:Message-Id:Date; b=niOwCrgE14ysrKXt8wSyOI/wu8o4hdUbjW0i9t+7fdt2/7XE7PHmTzYv89LlW0nt2vlKjWHZPb4azfs3s+ITe4/glU6YcmCz0eqFyrQIfyDIULbyOoNBmv5kUfnPcfBk8effvE7L53lA1KekiRctyrpWNBCslRyhNizOhRq2G3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8IBHcmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8IBHcmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721573153;
	bh=IFYZu/L3xEKJM6dCn2Q5HPkzoZruzcsH7NBhSiN5GtI=;
	h=To:Subject:From:Date:From;
	b=t8IBHcmil0c5hAGO0ab2twjqpba9uyRj55EIecqmaeIZ8NdRwens4qzh1GDlPE4Gt
	 HXtdjGJvxL2O4zBKxpDIrZm4F3oo+0V6d45bueXkkeqToxLJFdMTl+RJHGeFwKLhik
	 /uaOoEAZkJkKHzd0Jfqc18AAf4uACv72RMFWd3uu0K+SUgAOsIJKDNaXBSoY2Lgzhx
	 0LY08RGq/kReUGaAUWXqyzFkWl2KTqoHRl6sJKO5g9C2g8lz6cW5Ok6nnn6oyiv59B
	 PI7QxyKIhxzuBk8aJxqjR4v/EKWTHOR3n9Gh/oqg/gHnXSX0MzIUKuQ0idQ99EtkxK
	 R23u7xKhxiaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98802C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157315359.20691.7323703099139292285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2819846e6c42f347cf5c6ac0a60a49c6ec4720d4f194928a22f6528dad6f40ce
Date: Sun, 21 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721573153
