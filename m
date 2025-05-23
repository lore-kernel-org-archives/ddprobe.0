Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0287DA8C
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747980594; cv=none; b=f+VmviHzXKh12QNe1l6Phzw0Iqz/HGch02sis93TUIC8iADXlpqG0JlfcYyl6vtwx883YB20fXd+DbC/6JrUE+NAnIgfmR82OaFGZOOABo73PwUV1+faDTniwgzq4Rs4iu53EskQJaPVK0fF5s9Unla/OqyFKjxKv3M8shN1RGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747980594; c=relaxed/simple;
	bh=G+g7h123aFhz5baCBus0AY0A5BvWI3IT/MDOhzUJ760=;
	h=To:Subject:From:Message-Id:Date; b=jAFXPjO5eBbD2nnKTthrx6YdQk/UiW6p48HPrI3i1xm4Q8VLTx20128YBEaFT+L4MqfBFYqL/OG4e72V8sAeBX7WnTc9uiEORjcKfOHhEq/awXr77NDADcTwDLXL13w0Ld+EDmU+mVKekSzCBulstlXB3bmEQ/Nx3PHZmm+aMCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcrjpXUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcrjpXUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747980593;
	bh=G+g7h123aFhz5baCBus0AY0A5BvWI3IT/MDOhzUJ760=;
	h=To:Subject:From:Date:From;
	b=KcrjpXUh1YtKcU+sl4TXft34+twhX53heVuSwdSQjeORYlpkC1isSxLJhc8AXfqE5
	 SJtBgY4v4fVELdkzGBy9xh1zJOX1vqmSs11GVDoU4iexouTDUcFVcyl+K2fxKnLHvE
	 1e3Vp3+QTTA+efqVXCcfUyck0KFS3Ks80o7POxwkgR0XeuTly0sN55qVTRU0+wZsTF
	 GeVxy3UbNSExbykNEEkiFd0gKkp6c/TFq+xCDdXKii+15bEVnxBgTXSrrrlqxE5epj
	 y9PM4CGUxw4wwXNqgjYM3qI1Fp7lfMzhSHrBLjLHMu4AcgKjY6HiUkmxsm6Ggxl3js
	 62cj1DTIJ7diQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542BC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798059358.26128.4734459065095947150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22000e589f579a99719f27a0a7b6d2e78e8ec262028f1b4670cf375fdb4a494
Date: Fri, 23 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747980593
