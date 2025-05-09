Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78B15E96
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746801594; cv=none; b=WggLx2HG1l10p0fBz+zPqmunsrK25L4xt7YIKfKHWK9KoMDSQ+qeUgIYB7XA6IZSFlB1csmWG3st33+fje2eYmeVGUicV8ur07YNtVjY/LEYuD5Rcq4AbUog/S+QR7ULXbBGgD7NQF2xXc3i8henasWmtMcC4TPzAZN0BiPC6rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746801594; c=relaxed/simple;
	bh=/kf5q0t2QxpcCP40LG90Vzc3s8ID68/Goqh2veOh9K4=;
	h=To:Subject:From:Message-Id:Date; b=S0OrXlO/ynKa4fNtTQTjxX8Hwa/Eb1hcYqSt5nWgQ1QyqbVbtTRfUTd/1LLmlg0yj+MYSIkKVBm7SWmcQGRdAE8jV47wzby2hpH1v6MKjphblKeOtZ3eFsDHRCJzdr6dTzTcGxHJV894xpoSsbrbktOMibyrgVFNy2KSsLfW7fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZZeGB7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZZeGB7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA7EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746801593;
	bh=/kf5q0t2QxpcCP40LG90Vzc3s8ID68/Goqh2veOh9K4=;
	h=To:Subject:From:Date:From;
	b=XZZeGB7foMBHKCtpnkysFd6fPc9ANtnGse9T/EkUAgx8xXFwQhoUUpMHCys4XCdaO
	 cA9ZsZduKxTg5Y5RjGOm7lBkn+UhoHHVAkHhzV6cI1Kf1LlMrHfwliJkS2nqZzXdyd
	 hFli7arepEBlaDQdE4B45s4j61GTCg1pw4tffiBVFlOxI5G5dJvu0wZptDDQK8mXeF
	 A5cs6NVqiNIiu7py9Sz+wlPp3xh6BIeAuVA3wxEVXmE4+F1mOTZ3ADdtcTfUTGX4At
	 SqIux22gyp7KjVOfReTB1getGSA/A6DHl0RoyDD17xlS0w8uBu5Q6WkXnaH2VLVIsK
	 lI79SRfzgYWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46DC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680159357.2832.7616341616689774204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fd20384b3c6f9b29e1fcf48a80f8fdbdad0e1c62aca08ddd2dd251149cfb35
Date: Fri, 09 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746801593
