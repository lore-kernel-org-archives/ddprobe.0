Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB71366561
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776886054; cv=none; b=EpUBxxS3DOlrGON6BBQn+uev0K7mXe1rixt0DDvUSrN0TMs3SeopJ1uM3ZWDAgJl2TsdaiRglyxK22q3liEGGppdV7qDWJ+7MaiDncL+N4mApeW7iGqibY5bP2oII2/0t8Bvezl//5onMiuZK6nKs/VEI6UNeS1P7jM99C4u8Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776886054; c=relaxed/simple;
	bh=PVnfzuTs8GiQDYrBZ1mDvcba1FhaUvs1BrLtj4kFDp0=;
	h=To:Subject:From:Message-Id:Date; b=Q4/9P3UeCn08hK4dVRRJ7e6LT31XCtxkK281MFPwYLbhKNBi1e+TtI78DD7+v0o78+w518LlCbwpb1Nu+r3Yv2QIKqR8LPBv37WKkuBMY93sT1jDYphO85SQE3s6XrpUv9Lz/eWGwTTixkJrSP6FAmxAZO3CIgGqig0segFKz3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUDRwa5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUDRwa5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06F6C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776886053;
	bh=PVnfzuTs8GiQDYrBZ1mDvcba1FhaUvs1BrLtj4kFDp0=;
	h=To:Subject:From:Date:From;
	b=jUDRwa5jbTONWMIcw5jXmDxUO0DuruNjxsD5Gkv92b/8Hrwe0lwteU5KCaiPVQnWS
	 SRRXB4lJr565PrxnFh4XIhAj7I6kTOXfQWvjA2VgYg+ubcS82e4D/N68Y7QefDOihz
	 nSzAfPCtCIIVsSM6GUWSLhXYmK4db+IOMGoJ3YFMyBDFVtZTU9AYvYfVh6xIvL6hql
	 ZO6H8OA7HFvRgI4XHuTyWRHvWbCFxLSZ+62XIBs1zKZ6sbACDGzmg2paLewtjKXxBu
	 ng1ZVwrUMNty5FjnjRaRCzsHbdnzRobl0Fx2AZR0GPegc34G3OBz8T+ELVsqB9Tk22
	 abnKjtodenfpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C0FA1FE8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688605368.2755.13369683735988737442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cb690f1cddc9a9a2032b15de9ad6a1ff4178a446af62f29d64b7ba75320546
Date: Wed, 22 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776886053
