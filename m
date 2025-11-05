Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AE9219A67
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762301393; cv=none; b=R7fGMEZr75QfNh/UsBAaFwSBYTom9ag8p+cRKl+Lu2Llx50dU7ZgnKjg0F8DGTI/nmTa4/wl46g/5Vae0ImjtAO9bBUECMbTRFOrspUxY9AB9qgBmwCyGozbHJSnMR+VlC2JbWgScZlIYHdaXOuOrIGcX3EXosRS2ZsBhTng4s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762301393; c=relaxed/simple;
	bh=IvsQ+jFP/tBptrHpKFZBYi75KgcUbJFTn8Jibm7UXrI=;
	h=To:Subject:From:Message-Id:Date; b=mEHnQ/AdGnfGBwUvg2s8UdofUYOLyQNXki2Ng7YZwIFALkRnybffVMhPm/MAF6PmGMj54k3/zBoRORo+i0SgpE+za5GRy181RiQWdb1Nc4tDE2QO21X159NypIKHUM+wU3jiwekRg3ucZqh8f4K3AXkQG+N0mJuIdzgDnDWKB/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLVFDSTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLVFDSTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D84C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762301393;
	bh=IvsQ+jFP/tBptrHpKFZBYi75KgcUbJFTn8Jibm7UXrI=;
	h=To:Subject:From:Date:From;
	b=XLVFDSTKSEFE/Lh8Vbrfo8n5qzJHVHm8GLpQmY9TCXeJknl0a6A+JiyeDHpRGjF+T
	 U2mvgYYARzkI0+f2YfvPFSrgdK3uCAg3roPqRuhPgG0Qnpn3zTsJ1yihmwjy69dHiA
	 sWyWP63OMzQGh4RzYwj7TlV9WafdgKUClLkZLiU1sVPP1NyAGKgaF82jFh3NaI/PO6
	 TU9cOcSSByPJwuGRU5hJ26/QNA+H/BIKvADFSa/xP9vLacgrr4qYG6LwGhG8Vn+S8t
	 YMC6coO8RghFFujMgxL2CKJfeUyW6KhMHImDz4SwvER9AKVHE1PIe/B3c+6nopjXZR
	 d7lPI4Q1wHf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E22CCFA13
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230139358.2373.3777036815529243190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a167b5f202973c080dcfc806386570091e2f04effe76c7abbbca91ac3137ea95
Date: Wed, 05 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762301393
