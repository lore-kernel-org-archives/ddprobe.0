Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1C663C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718078903; cv=none; b=AjSSg7vmcwJ45VpbkQU7+xlpz42KT9c6UxqRIrsrqnMGmH8bJNgXRYi9kx7rx4NY2SK06wPc6GvATWfyXyQ0ttpiqlcLLYauG13WsW0Td4pQP475Bp9h4ZJpxyqnHIFfC+M7VO9rFmvHXcZpqzWpzBb0tgj+kZaYiplbK24yhZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718078903; c=relaxed/simple;
	bh=yCP7h1sE9XoOqx+RequiYj7Cb+dv3vlHhKYdtnpUw70=;
	h=To:Subject:From:Message-Id:Date; b=bQP2vprF7fPXsNVpnBSVDOZfbGmom/UK6bGAiPlAV0Tfyvf47xwBc/UTaGDyN2NBSb1F3wvfBmLqgGUhZTfwyn7uKs4IMNrxIWPD7B+E+GBBc2VVY42zrEvyBT8KGet4ldW6um78uGBLH7DAq5aWiwpoYhnwhz6XWFjt8hNZC08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et/ebLHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et/ebLHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4892C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718078902;
	bh=yCP7h1sE9XoOqx+RequiYj7Cb+dv3vlHhKYdtnpUw70=;
	h=To:Subject:From:Date:From;
	b=Et/ebLHqRMjGSw0RhTQktnf5gWTptIYRsMZj4d5ClIqQ8GVLsDm4IGX2x2eVDiMqz
	 bnakkV5zUJKb9H0pwwvhwi2rC66zVuIFMaRnWxuLihbHAGCBIp4fz4hF/ZMTFu7X6/
	 ES1lkfa+zytCQgP0SqurdcgBow3jBhOjF7Hw6DAv7I6ebhF6YF174VxJFFqHnwdTDp
	 0f3xf2VvM6kd73HmXmpduaqQxtuXXQOCpGtcJ8kSDM6Bip65rHMFx07ia7wg9AIOAB
	 XfDn5tpztguyDR2Bx5PghHkFgd7tsnPT/fU/QAm/Yv58l4f07n2FdGmObOI/s8dMrt
	 ajQJX0/d521hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD26C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807890279.510.3277586845704846257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ae4e9d8e4f395f7c1b09472415f9cfb392ed5a23438b7151c0d2629ff8ce80
Date: Tue, 11 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718078902
