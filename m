Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8C518C002
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728342954; cv=none; b=ZvTAinJEtBlOv66R3RIoSXjR7nVxXsuTq/2mWBo4KHZbUIN3eBmfS1kUPsycMSjXnLbOcePpRiEk8HdotbV+Uq85Kh99L3gxFIndLX11xlA9Lq1Zk7I+Y0UnjYRk6WAHriCeDIL1qvd9e0PJI9a/yyFOdbVi8+BnV/mBxbVysvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728342954; c=relaxed/simple;
	bh=GmH2r79Z7u9/OQWahwLoiQEDfuAfCfj23GZnIBxOIew=;
	h=To:Subject:From:Message-Id:Date; b=VQKO+CG97vS0dV7ovv3uZcL5/0QK0SKeGZTb+wc5VJXn3k+h9UzjuQQZLK+vz3t1wrg3lu7R4lCwHjEm7odU/hay1Yc9nNfiexIj4UhPmZOzTFFEn4B2pjHkqKmQDYg0sMwuYZ9iFob2ODFYCMGZbc9ygorN4LGAjGdCABSxybM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvF79gdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvF79gdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396FC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728342953;
	bh=GmH2r79Z7u9/OQWahwLoiQEDfuAfCfj23GZnIBxOIew=;
	h=To:Subject:From:Date:From;
	b=bvF79gdOSlvLlQqnLhUWNOKF7kvrEuu53T1JOTNsB3wFYUHUByEg9CSOYKbA+XA3b
	 UTAkXlkI4qm6sD+yBL+JYeoE7Xpaqu0APa2gkKOfFcjfow4hAz2Cz9viv7UUcv9Txb
	 1XgM+7sCweWyjdfQ9pIVAOXKON9BXb4jhvGVC4ZS9bcwHq0qAFBGGkKzSHfnRBN0oH
	 njvvYYbCXX3PLE6dqJHoNd1fSAgDob2h3u6qQXprsQRfQYfm5EfIbUUyFLh5wZOYk+
	 uYcF+bPmlojbH9ZGPH5n/Dpdwp39nU/CgyJZf+rp2UEKRCK/U7eb7RKsjzYWvSKmxm
	 PnajMRySLevnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471BCED245
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834295360.32505.9769649204016107618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce7b9dee876b30137b7a22a3208f38e2481d872989fc0914b83caa32b5e3844
Date: Mon, 07 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728342953
