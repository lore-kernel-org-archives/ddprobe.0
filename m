Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0F45C18
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742063394; cv=none; b=Vv16thWRW/Nvjwz8Fb008c+QPhK65EbyarbbMnj+W6jRRWdmawNDWLtAcOgNLvFgn39rinQ7lM96WrqhGE+E3RPHu1UbBS+ICKHkvd/id9yiKnNP2WiioSiR/xXlqJF7IzdLPs6lzgcHbrHVaN9YUiubSRBbYTIMfN7yl1I2hnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742063394; c=relaxed/simple;
	bh=rga0cy9wtTZrOYAhAZf26c7Xs21DkcjS9Ow5rsZuGSM=;
	h=To:Subject:From:Message-Id:Date; b=PMovD5em+IUZn5eS6qfUr4n/XCuPT0NH76UcvlVpk47h71IoU72Hdkq8EUiPJtTU3cghqKBzjwk/73b10RpN13Ex+w5Y5LjGMjdSDDP0vzZmKiTeFl9bPXD7p+0uJiLNOx+xx6uq2zvhTlv9Vpi36d8I2F0B6IQjJ0/5CMSHtmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt3K8buV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt3K8buV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70C0C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742063393;
	bh=rga0cy9wtTZrOYAhAZf26c7Xs21DkcjS9Ow5rsZuGSM=;
	h=To:Subject:From:Date:From;
	b=Bt3K8buVmB8dmJO6bBzMnG8au9uXrWpWD9ifxrGXFv9wn6vDoQ0iDh2wLgQLJyjfh
	 dM/TTvKIRE5aqPeA2dznZ6LKFYy3E1LejteL7iNPyAex2ziqI9VJZwy8ihE9/NPKOD
	 qH+iKeeiZPHu1rHWxlub8n1KHKT/154vTgn6xXQUvEapFkXVPu5O3B69384F2Yq3zJ
	 UzZC9mYJB38Ft7xL0WrcNx+nbxr/QcFk/qLmP+fAY6m8eUu7TSVtoqf4exY7ADohJb
	 3o3oHMu3BD2CR27MnrH41PCd0dF5erqDpeolaeQYn8/z+aQWSdEbzbQcRWHtr3+uJ6
	 XRnvGs9w1akKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A049EC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206339364.16629.5585107291167984624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6100da5b4893cde4ecfd59bf58b894b80f24fc4a45404df132dca6907c0e8a09
Date: Sat, 15 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742063393
