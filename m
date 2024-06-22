Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C312913
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719042143; cv=none; b=Mbl4n/wU1SjrFQMtNqK3q7pO3JsOFjoqXrAfy6EZXSaZp7/laomBH9NYdgronPbSWN4+00rYNumLCDkOsl3nD88CvbiKpceMK8PTSlrdKIVl0ZVb5lqagKJAOtB4/9NaLYphI8Uaxu2Dbs2eSi0G0LguZf3lY1yQSRerncZ/zJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719042143; c=relaxed/simple;
	bh=kZwF26EhFjerxmlLDqGQH6GzcmJvmZtUwQXNv2sT1ic=;
	h=To:Subject:From:Message-Id:Date; b=uHCuYBhaZc/EAfS4exuo2974zr7v7jL9YdfiPke19hDuYn4I68Rv4iuyn0+/Qhv7R9/Axe+WKQaILbRV2Z738nMKDnMNN2MS2eyWoVFEeLnGW+eCX2IOfnzb5+oXwlEGKMtiGwd6Jnk+RfcCPzclNij7d8kSjCd2NDilpYTowic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKttcovI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKttcovI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7276C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719042142;
	bh=kZwF26EhFjerxmlLDqGQH6GzcmJvmZtUwQXNv2sT1ic=;
	h=To:Subject:From:Date:From;
	b=TKttcovIQ1XtqslJ1cJiC0yiDbMCJvP8wqcC2AQtvWrC1Bvn3ZxLcQWoykN4SJuu6
	 vhTH+g24Vnv46HT59qiqqF7b0HAgCp88OIATQrC0Y48Z37NLEjDcZ9y3S9T09X3w6d
	 A8ekpj1t69jMXg6bbJFi/+s6KOD7Ojcf8kGgPnthXVjATzM/fV2FTCq31NxWmwxhf/
	 Ucehoo5K2F8gQzqYnZN4lAdGDEAVQh9NMWk9kTVZV0SDGBq5xzarNPWUGh4KVZjunm
	 qRcKpf/oXNZxMZTIdZHektjg2D8EmDwfHGWt5GCDK+BRFq05CqX0vfHCH2rwURDsaa
	 5gau7lM0TlY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B2EC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904214282.26246.184144430072378971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f285ef1a5b74e27275b3aa7c997a5c55b9e9529418be003f305342805906fe74
Date: Sat, 22 Jun 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719042142
