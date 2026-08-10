Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A13230C16E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786399234; cv=none; b=pWBVUqIeL13MN5u3CCTjT28y673LxtL4oUwkH9q6L+nDMG8cRUegr4PQK3wM4IeDYCiW4cVH/PjNs4jG5OWPn3b4nvs6rTF3ub7tHqcgjA6ExaS+cEhJHXDfY+1tw3E9MTFJWUAsVAIeNkYc/PWgyPw5wGujeLN3fnUrHt5PHbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786399234; c=relaxed/simple;
	bh=DjPKcVmTTyxAN3kRJFQl336+dzVtRwbuFC7WbT68mJQ=;
	h=To:Subject:From:Message-Id:Date; b=ruvKCB28L8Wpp5cg7PellubUkDM8aak7xvPlPCGHW5+SGIFmzw+UlhDm8ttr5qh3vayA2j947WqV6SxpaABtodq+8ShvWI5s6nfNVOEcK7WauPPRmVr3Z3qREWRvOKkYZ3LP/YDWN27BFYA7JrEzcUA7BrD0BEC1aDqI30QCZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFxGqkFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFxGqkFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA82BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786399233;
	bh=DjPKcVmTTyxAN3kRJFQl336+dzVtRwbuFC7WbT68mJQ=;
	h=To:Subject:From:Date:From;
	b=hFxGqkFH5seZZl4us7G57iRcpMqPCp0GGYdQyTxR6Sc9k9NAD6fKxWMmTcBlO3bhV
	 AdGKRHee6TAhp0syHxdSDzw8MI+IAK6PCPj9SOY4n0QY00WJ7JMPIdDwtGbiorzS5p
	 84Pt+G6jmdX4h+IZETNOBcOIEH8WVzNBMmnqayaNXW81noI0rQwuG1lgk/uCfGSCBv
	 iL73zVEWkweZm4kQ/Agm8G1R5AocPjNJEZGCuMRPULdE6TZ3tjsvta/qUVikxuTNhs
	 bYhuBoL5K1drSVjWw1Tg8BD0szDQtiBWr6EBxghiafKrZyrMVG7AMMwljtFRvANE4O
	 Mvc2z3AY1R+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8012C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639923368.28289.5804842047658704420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b87d558640408e0c4106037f12ad46a929a0759112bf4eda9ecce8fb9333e3
Date: Mon, 10 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786399233
