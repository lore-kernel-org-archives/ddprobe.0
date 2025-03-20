Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663312CDAE
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742432394; cv=none; b=ocObFY5K3ZkE1+ZHeMEXBGUIxqtBKO0gCyfYUf4+XSJOJM8cVPzFuQ9YIGGTQVfZ51ks2/yB1SQty6cGz+WimhFrRUssmXKB5kmqm+b6VkOVg/nLfEj6GzCr8BY+S1EAn1RWGlupEWZkW+fK8tspf/Ua9YOcecGHz8aXjr0goxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742432394; c=relaxed/simple;
	bh=bZ27aLVBKXqyZe6Xn47BsN0BtPy3Ov1dFVJ8ApH0YgE=;
	h=To:Subject:From:Message-Id:Date; b=T3rh1VRzOhigS53sm32e3zrCZY0Vw1JXZPat500ZKNMIkJY6p5N6YW6LMyjgda00A5y6sN4IP2Aml8OCpY4bIs3IzLTr6J80CAZDW3cUab8cWuJuHxCb8RTprpEnnhaboG3vn4WK1c1YDIY0rcRW3IYPb5Y3w6ULQxogav6paGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbS63QlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbS63QlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AA5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742432393;
	bh=bZ27aLVBKXqyZe6Xn47BsN0BtPy3Ov1dFVJ8ApH0YgE=;
	h=To:Subject:From:Date:From;
	b=ZbS63QlCCEKtp1j8IF86Ygv+d90CP8uk2Ds+qKKVOh1jR7bY4pDVxChKsY1rs7w4u
	 sEqrqk0MFKcK0lBeYiZmYB0xCMREXF+cEUt+vHbhiLaA0boQ44yZFSZyYxWCs1TlEe
	 LYbcM/u4WuwreQ4m7rzakfn7aYobw2dnyVMP7lD2jYWsH1JWfvZAfBLSlk0cIw5WbP
	 3MrF3JSzAPuijd/ZTEanAQ5oLqRwBTHygdjTFWJNgjx6WMIwrl7I5G9ZaGghCuHfMb
	 hViCOH2z7Vh+gZ2aGG3IH2GBcCBqJ20hjca2ztzsTr/6ms0ZepO7vCaDrXLd7ev43M
	 G7VUJ8ZSxUXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA25C35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243239361.1894.10959803743674604096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d092351bba14bf5af943e0ded050d9d8c0e54f570aef9c9e962bb7d4ec69dd0c
Date: Thu, 20 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742432393
