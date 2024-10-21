Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209362CA9
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729548354; cv=none; b=qDkV+am0CdgoHwoR1IS3AZrIISwi2Tau/f3iglHhjXL3hUBvV1QR95g8yzuBSJGtw8PHa8/IxtPDEI+emipFyiI7KY1MvsK1pMiPx1NjLHFciDkJk2qjYm13kwlzcygkt15+Fohoy/02iBktDkeBwRKBrseFWt+A8wu0ds1Dc4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729548354; c=relaxed/simple;
	bh=gi/eXT9abypW+qUbqaNoJ4hMDt+9/70qy0SOJJVWNEY=;
	h=To:Subject:From:Message-Id:Date; b=QAm5hfT9NKqyTj1Cc1xCwl7udufzuVA9LBy7xRqZ6YbUd7X+aHCSSIjrzwntIEJfSc/PR/c+5A5hhTQcNz0Mub1nZdeQEq1ZFOZic0Qo+0b22oQaV0LZIrRRS+TO5be9oHK0O955NJXKjiOvMTOZ5L3TVc9ojGvKlbQFb4WtXok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOsrjP+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOsrjP+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729548353;
	bh=gi/eXT9abypW+qUbqaNoJ4hMDt+9/70qy0SOJJVWNEY=;
	h=To:Subject:From:Date:From;
	b=rOsrjP+Pv9UawgcmxwbChkBF7rPlsbxmLWD+kfkHWhQ+/YNiiBLVmUd9axOidpr/Y
	 ihhQPZcP/ELCmOo/0tFVo43obRHDIwRAcn8RJoh4vADPfyREJEDBJWFbN0KiRC81kk
	 v/Et67rkAJnXPB+SgUIdG7YucQ6/81a3UBBAVznQRr4WBUEU0jykzPWf2LSqo/5x8c
	 NiZ698OxA7Gsw+9WYf1XsitFobbincJztvXTJzAgqQNtiU8C3eWw29OZzTqsbnL5kD
	 kU4D87preHnxgKWckSn04/KvBkcIbS5MwkZAqFTo1gtV2AXUfOOfYdE6tdQqRmxf0m
	 rXVvEJaopYucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94749D17142
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954835358.8931.10358493968253258777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c293641027b3ed5bb5075d81dc31e02938576af1b9c8c1836cc0c31f57f02f13
Date: Mon, 21 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729548353
