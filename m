Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496F610D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743901194; cv=none; b=IUie4HmLEnrEpl/bRXBA5TGaPDbv6aL6k3beuZKaedIRiFEYKO7OaLCuWGU94Ln5b0TZOHDsYPjz4AOojmUHpkxi0Kt4b1GS9JkkCk2jb2aBfcwjqQ4LDo47E/8RloZOmmdKU9E4RE0ysyB9BlJ9QRgDe57nbGbsLhO4/Uf0FTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743901194; c=relaxed/simple;
	bh=CQjgKuT6SiiuHO4nmxykvWeNb/p6+A5qAryWoMx9FSo=;
	h=To:Subject:From:Message-Id:Date; b=CwBJmqs/vAMXPohTA7T/wWtBVCSKZMW2T5fa9klFI6FHD9fAzxzlnHedojMtbaXdyxc/SmTJdgOoxAIyYwyq9s19imz8PtyFfj5rVoGvcHOZWOiQxFYfKPGOfQ7ahJYBM2FlyATUHWa1tce6t4Vvm9cun6d6PoL8RbKDx5UY3DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf1SGhrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf1SGhrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2FDC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743901193;
	bh=CQjgKuT6SiiuHO4nmxykvWeNb/p6+A5qAryWoMx9FSo=;
	h=To:Subject:From:Date:From;
	b=hf1SGhrUPHC+jVxH4A3xnrG7ANiQ+h1aX47R3VkzsH5UXQ+P8AKhNHej6bfF6t8HT
	 Ad9IEvnE/fkMcvMw2whmIfjcJTVtFxmo/GihVN7SVyOKf3qn+hSFH2cyPtF12bhfa5
	 L+hZ3hHHZEowjYw+rNmUc9rvV8jHS1UYqyvNDOmod5lDH5St/rFI+iJUfl5Uev7EVT
	 WfL5nbXQyjnJErDBWaMIWIeIzHtf5DbXB9f5TjjAPJkNawVhjVb70Sjm84c2U/+9oZ
	 jcRiEZU8+0hDV/q0EgTbouX877BEqVDHs4yf55iWEkgTjpKuGwSY3pd/jIKgUlPYmo
	 1wg5PTK6s1L+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C38C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390119359.32516.14154831340175176954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e641e4cb18ec586a123e8f6f5bc790fc10222ca19ddee9992c28bde1515b2
Date: Sun, 06 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743901193
