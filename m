Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88F39B95D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783616914; cv=none; b=JzF1ZMcTtwfMOt+no6JEJAzQiOYDkHE4h54JfRVyH18vBRZu1j5nf1zBmT32EjlIwx+jMUg49eHU3qnRPRRAYxbXGgSaPNZJS/lzjjEMVh5OryTGfBy47tD34J7ZE1qDAm9fzRmQxhIomrae+46Ft6uEMYo8XrfRLakq5JHAh4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783616914; c=relaxed/simple;
	bh=qoEF3V0rQ+cmOZOG3Mixk9AhZj1i84k6dbL0F5E+3dI=;
	h=To:Subject:From:Message-Id:Date; b=FhdpWjGT/PMGs+fzh1o+1Lj5vUrAOrgG7pqhQSwGRA/NOMF+mADC9y0mn3Mtl2rBU+3FUQFxcBrFEfliharB5t3m7x0/kWFctxDUZdkv1zpVm1xGsV/SnvwQZcc0TxnFLBdtIq3uvs6Qer/ATOgVzfkaPvo/y7IyA+JbQhnanYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=disb8Z24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="disb8Z24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAA6C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783616913;
	bh=qoEF3V0rQ+cmOZOG3Mixk9AhZj1i84k6dbL0F5E+3dI=;
	h=To:Subject:From:Date:From;
	b=disb8Z24yztSvNZ6R1TLQvhhCihOmU+rF65Y1QCs9WiaoXQ5CfdV9TUVuhfmMLwRU
	 2SDPQqSe0sT7z6tpmIKqm8HUHPmGvXrnkZsQP3yVdPK79OHjoOuEVI0PgiE2ThR+lY
	 jQAijK6ZGIKXIpLEUZSHMSDkYc7QFZAYllspFYRD7YpL3oeo95U8YdwhZAGyz/wyMV
	 BbpyLkhFMer/uaPB9hUPtSRgNgUuA8do3ZFBRkYbRd3G0XYVMJQ3Z7NXIgLLH0Yagj
	 WDJ3p+O+emOUSIZBh2NxFdLi58/zZr0VbFlLeE1eDwvEkd0Apnxkw3wxivXy4rwlnD
	 PseoNoHlPQIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361691367.12237.7294961877781329806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f0ecb411d79cc154fc1b9026a8630dce914725d46f8c665c06e21f5d17a606
Date: Thu, 09 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783616913
