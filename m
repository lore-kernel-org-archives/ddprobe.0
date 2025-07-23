Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC34285CAA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753283394; cv=none; b=EM4wVCrmx80TpHkgP9K7mUgHE8TsfOUh3O4fY6MAnzbY8o0gxSE0XWONdxtI87kHgz7mR9KitLS1TkruwBqA9cvZ5DA1d5/hptO5Z5oG6T6SboIPBlyVKcAhHglDAVMRedeAySJ9C3ZefMBAJoAhUb6b39jhAX9W86qy4Zcp+gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753283394; c=relaxed/simple;
	bh=dNli//ywnfF0GEt5zTRPw6meCNB2QtIxVstuFxgNQEI=;
	h=To:Subject:From:Message-Id:Date; b=rI2AXGRTfC5n5AEk5udOvpyFmE1W4jKFr/jKgp/OlJPFwISRKOz3RpvZiSG8M9CUsGHtUcKC0hrrzlQ5TiVJcr4U3zRDVGet1Lboy20vvQJ02hoymtnc9ugXwwu1/ImwnuokML/WvkCI9jWlVUm7BytlHYtbMjntevSxotEyzRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvLZKGtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvLZKGtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7CEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753283393;
	bh=dNli//ywnfF0GEt5zTRPw6meCNB2QtIxVstuFxgNQEI=;
	h=To:Subject:From:Date:From;
	b=RvLZKGtuoBZacftG+bvEq4WWsm0umGUaZEit8675ChLtdKzLBoV/uiZY6T3psMHbt
	 OLMJJTXcMXRpy92FQ2W1z2YLajyQlwSjSwu4wwZHYXm86d9qPOun+HGtyhK5CW2nDU
	 4wTMc0Gw3VAQYAH6ubnZdQzaQIDNjTp7yht4dGwn8KqdtPZ9olnHgJNnBZbyg1yBb2
	 p/KQVy0O0hDZXhQkiSMBF0QDY6jr++DN+x53LrrFYuZrWRKywghHBDw9F1sibhGooF
	 xMiUTF8fjpplbq0pjkaCCVpEfuWNt4axHi4LsJUfFrb8SHLEQY605LOnQP20myuagT
	 +3N1AVcbuGLnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D2C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328339358.3717.7558263693503119169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad6c2c13cd901001394d7558e543a4f1f298d5b2b2d9a5c14dd378d2fa1b80a
Date: Wed, 23 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753283393
