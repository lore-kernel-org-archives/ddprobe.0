Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449B31DED4C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765801374; cv=none; b=RX/Cis5yAkCw3dU7Zx/+P4V2Pr+y2GOLIhS2Cf2ZK6DYTA+8eKjzhjNttiSEZ08wjiJlDGREUlJKE2pd6+5cCYO5FdncgmNeX+PS2oZLVXxi5UyxniUqaYmYOjA3zZ2eI2kjlkQec81hEkcBnAGM2uFslHYYR9XhZJLkxHUjJ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765801374; c=relaxed/simple;
	bh=rKtrBmH6O+Exo02YcYCax+QnnuB1x96FZtYuMMVo/EY=;
	h=To:Subject:From:Message-Id:Date; b=nkelXryx/neylKXwX/dSGuxqD2TstEmvwK3YUj2akQ2zy9/H70e6zbPMbbEvtWazjG+RpwbscNXtl8O9KMSX9ogj6Ph28xaG2CQ2x3XI1QHuquCAHxRXHto5FRLwDm6HMxg0Ijq78gY4OXXjxT4L2iqv3SW0T13Dmve80JPFWxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsN+nOVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsN+nOVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D3BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765801373;
	bh=rKtrBmH6O+Exo02YcYCax+QnnuB1x96FZtYuMMVo/EY=;
	h=To:Subject:From:Date:From;
	b=HsN+nOVdCQxmzNHV8hUHNz4AKT2qOem/xY8HQC3seSs4na867iHEPj1MhJH25xdDQ
	 WcEGKPy2hjOcAfea0o4CseTaR0cVJiCupPWMX/73lw1AxLMKaGJH5kFH8Scbwm7iRP
	 lVyuHoaSOynanxou6Us3kfNDsYE9Bf/llaFRrp8a9Xde4a4dVA55pCOYtovcLf/5BI
	 Q8OzP7RcD3FNRdPNbedIJ8J5NW/U32lt6mNqG7aUk8S/eeD763pyR3l6VLJmwQKKY/
	 o6ZutQ3cVU525q0tel98vMNW9Pt5cg8XkxtUuxpUXWvQt1EaJUPSKLxSz2Ap53COnL
	 MbrR01YMLesDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4A1D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580137363.14391.9972876651831592070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5510411b9fb9d2e517518e873a5058c3f0b6a1b8403a71f6a3bb3a3c03fc897
Date: Mon, 15 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765801373
