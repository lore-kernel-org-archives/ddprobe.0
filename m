Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD8E3EA68
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713511763; cv=none; b=geUlhK5q5r+BbcrYHrd5121Dnd+FTi7QwrRH5JkjdQYftmyvWl7HrVoaFgJ1gGK2vWqz9SfThECy+5MiKDkd4abB3bumsWM9wDe5gaEk7jqr5omueO4jCs63dLcWwgkKieNq0cbQTxSw9LfpnJWSOgR3G5H9Y7L77tAW+WdXwSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713511763; c=relaxed/simple;
	bh=z+4uLk97zImAMTtbh2sneKb6hoAwcUiAdiMduigKslk=;
	h=To:Subject:From:Message-Id:Date; b=iwyWeFn8YaUBy2H96Ikm/pPWr2njRdkUNUxIprWopm66EY7hllNlZ4+ikbDj3n3r0eMqi5GlYCuPUlDAbOSdXnyR0Ac9MupEDIJitP4fgOaSI4dpHVz+clYb1M8w2iDLLLIDkDlUob4GdxxtqBQU2Vqv3k0z998cvTu3CmBIGqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj0daZpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj0daZpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F3EC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713511762;
	bh=z+4uLk97zImAMTtbh2sneKb6hoAwcUiAdiMduigKslk=;
	h=To:Subject:From:Date:From;
	b=oj0daZpldTo8/cns7beJVguW9bl1+6UCsAxDPeiG4Ig9jg3L5funJE0CAiVTIKazK
	 aJx0nNL055+rfs0i2vLQQY9h6iQkWD6rojzBZPaYtO5cRHzotipO1e3lJBBEioWu1c
	 m8cl+2bm8dOiSq5sEFd5sUKZVcxTsEoZ5DWaDzfocKHsndGBZwFuo+Hw8pgVO754UD
	 dW3jhA0d6BRn2gNI4UrSnIQ/GhV2CcXJKjbSw9UyqjOJChQ4f9B8URrcYIo7yKw6+E
	 jQkxkrnIzjzXVbw7xoiT0gvYzdHb70/pvKHQHp675tNryOGPDNZTfDu7pTAp1VWGpE
	 bLjmgmjk4dcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA372C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351176275.24772.15526319040779163005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae05dcdd43b9a4d2f27412405a028d0481a2b5aa1f8b69d7f2c27d820b30cdd1
Date: Fri, 19 Apr 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713511762
