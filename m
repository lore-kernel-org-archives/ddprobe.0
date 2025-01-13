Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9E224022B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736790954; cv=none; b=ABrV13835xKniBL2TfLC+Zee9BgVQKgF4IPEWf2PegeaRhKNNLKzJrpm7xM/HwIknpJr9dhKrPdO5K+kbH0Wm9a9NqPJguWXSelmNozz5tZiEJh62/efGL3wj9N/IlGJ5wOj44Dc0Uk5JXFMRhY+Pm4SOaGybhlttiHRrglLDGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736790954; c=relaxed/simple;
	bh=QZAFrcApGv1WponDCKygx4clm57NKNFBJwjz0Co/6sM=;
	h=To:Subject:From:Message-Id:Date; b=HR8OzTO/gV6HBCfgEPDwQBNshZE00eOVFYqH/Elk29CYzJByLUJCLzIkD3uNdOXvi4rf13HjzkKywnAQndMOMKdThy0cQjSI/YoFjx8efVQkfyyJCky5wInMTadfdb3l42y5NPVkr0X0XBv8YUgpg0yk+ZsuThaVu0OoACJ6bpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdjrUYIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdjrUYIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B074AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736790953;
	bh=QZAFrcApGv1WponDCKygx4clm57NKNFBJwjz0Co/6sM=;
	h=To:Subject:From:Date:From;
	b=MdjrUYIPlsDFd4zAbBxrgt72tzzbCQNnKzoG8yQeI06LyE8fGkpBfWLQuxTfB2VHH
	 nMrhzD/0u97zlSTH1M0BcAMXyd+nv4AAwSEPWd8dnbiNCdwY6hmBFDAWjferM2KW3o
	 dAQsWpUCBEFtkXsMxAu/muJIbJTEx9a6SBEbDmy0dJ8O9Vb5CtgzGFuVOppTcT+ick
	 OzdHJRE1dCX75Ms/ERY+sHEBnRr/BbY6stqh2cZ4gnA3m3SSmAjxgFuPgBWrSxkSHX
	 bb46eDKtU9PKlgItCRPn8zgipGnj/5suWgB/nUntKGD9hjB/y9Z/j5EGMGwEkOfRvG
	 VrOX76y+BesRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C37BC02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679095363.29707.15390775755127216792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd22dc2e6f069d4d02d4b88d5794e5946697c6d96a1b8e241484d284e749935e
Date: Mon, 13 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736790953
