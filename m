Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E122218AB0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756028394; cv=none; b=t+reFArwUCs9UETZi0nQkgu1HVPlWGCIlVQZbsTq6SZFEE/jfGCA9mZiqQQGbH02oQaE+KE8cnpD8s8OM+LxcWULjU8CyfG47IR3axdj8afjzHyI7jlaGlm8DOALss1oXQnpFEsd7ffjNLXrWfNSG4ktYqtZwjPBxVEGF/yxzTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756028394; c=relaxed/simple;
	bh=hrC+Fck1NQE87raf/9oYTDb0QDZsKvbSxeuMH+P32VE=;
	h=To:Subject:From:Message-Id:Date; b=jNSMB/TfyWSGWEjcbpkwh+q/SZESTwPVtgg/XDIbkrwlQgHEArdMlGM8sHTcVg00o5yWZT8d3FIucmT/+ExeIHjKFUjfjorqlKWPwwWqgIyg5xOaKs9CZhpyq2QfRzpLFpzMswg2YJMpW4s/r7NrOxy862WnRqM819maDqyUuOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boqOQzG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boqOQzG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A8EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756028393;
	bh=hrC+Fck1NQE87raf/9oYTDb0QDZsKvbSxeuMH+P32VE=;
	h=To:Subject:From:Date:From;
	b=boqOQzG1psD/3qDM1uesNKNlCsrPYY5Kfxr/0jgkieirG+e1B+NQ7ukakM7RZQVpj
	 T3ZX3immLEIqFhNhIgMcCRBE/gTF4vE4iQQlriUMZNZevIwn7O5qrSwe0KHI2CDjDL
	 G8ytrvbZpNzgbltOIOF+W2EzqIGaNfDnBNZoPsMMuPvQflifCvP+mGX8PwrX3Jf/72
	 CwFZhJPNLl3nal6kDsQ0Az5b+fYWcqhL0emrGGAlKnjcf+JAvybHKSc+a+EUMDqf4r
	 AXRjX/X2cAZpL6xEex3dZtImqY1toXibh6PLbVcvLBvr7rTWL4Q9XiUEUEqnkzpBEA
	 7KquJKYZ2V4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E293CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602839357.12625.11181756374897457890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ab3e0a831bb8a2f230a64d57f21e604d42ed72f7f75d519f30fd160b06e455
Date: Sun, 24 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756028393
