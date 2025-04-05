Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB62A1CA
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743850794; cv=none; b=d4wjzNfF+c4WXToswAbPnmilTOujQKOaiQYkhI4397N3u4n9u2PLrehVitv/Lm1TCQIjSd08qcgofUr1ioBA9gQNVONQplk95MPjkkxF1jxWqsZG1JsQuhixg//5pGqDHhca+QoNPhjPQ3ckGZVXoGjNhrMALLJXIerp5Vrr1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743850794; c=relaxed/simple;
	bh=g6xQEvsGam4xrZJr/dMv5N4SZ0eCDxMCro5n6PTXyrM=;
	h=To:Subject:From:Message-Id:Date; b=aJdY2mAKSPXy1j3Ea8RcXX7iJqO7NVcMgYF/5GYS4gHRkHNwLpeOPTORJ9XG1cSH83yg+gdELMW+NHSrfazXTY8DWc6qSLEiLa7BG7JnqU/fN3HkzbegtUqNyDZQvLtHuGYlit8j1WCAWNWSJspvLdf9uXS6dgGNnszxuIVw8Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5nKZcWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5nKZcWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D0C4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743850793;
	bh=g6xQEvsGam4xrZJr/dMv5N4SZ0eCDxMCro5n6PTXyrM=;
	h=To:Subject:From:Date:From;
	b=T5nKZcWdmxIvEbskcPOoXxIJDfCtKLjS6ZYV8JWpRXom+u1eQWGWseK/dn5c2SWCu
	 R2jLa8F6BFfZ+nKSFiRTi5dGI6SsT1k76p+t8HqX9THoDP2bKuT0Ia6Tdx5BXEWZmn
	 FPSBLbpZhw2KKMBMnDTzTxRb7G3Z+cpCR5ScdOzxre8d6Avty33FcKERkOZF4Wv4Em
	 62k6ExBiQ3b2FmRAG5s7EBYugTr8vb3CsotEAXSVJcr6SzV6MdXjwEfsyJ+42mJ81s
	 lmJmgs5cXLa3LVqJq3ZlFdyHDTPgRl13Yx2JsKErYgfO+06pEL+p21kvyN5i6YyaZ4
	 1zZWjzu1CQ+EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C95C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385079359.23202.5070670351434279179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2732f8e503fe5773dd265d6f19b96781d5512e1a9f08c6a7ce45bb8a659286f1
Date: Sat, 05 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743850793
