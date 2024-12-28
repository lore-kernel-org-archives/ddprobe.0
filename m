Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4077412C484
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735379754; cv=none; b=KT8rDfePqHREqPWQRByhu6L/B8rG9r5jnoEglDeogSdVx8sz4F0DCwseGUP95TtDX3FR+x5wx91kZNtoIe3v2lpFolMVxsgMDxquuFAivfsxfwmdMNdD3vuhJ2uwckpBEMIG5z0Blq0+nzCEIYvqdPE40CKGR9hBFLs8jo4ekYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735379754; c=relaxed/simple;
	bh=dt7WsrA8OEeAhyZX1ZJ0tzzVfOuLTnBI4lK7ub8g2Is=;
	h=To:Subject:From:Message-Id:Date; b=sJrZNrU8o6B+M9QgksfoFzywdk04NM/bWZke6qUPWmdptOno7ZnQPfUMMB+wKs906dnDrX0TjcCYtPtS1M0O7DHhOboSoCBLj7ujoiV56SQKgi6MK9hFzkEX+qkQOsQmwrDVWCfQtZavSiZzzH9LdPeH4YbFsm+KRF3zqoe59ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMcBnbb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMcBnbb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB69CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735379753;
	bh=dt7WsrA8OEeAhyZX1ZJ0tzzVfOuLTnBI4lK7ub8g2Is=;
	h=To:Subject:From:Date:From;
	b=rMcBnbb1j9Ep7fRv7gqSO2+/qohihPbUQQnNqZWQ4+N+6asOGNPv6ifPuLQszcwvg
	 BJWdK/7XDCXAb5zprjKr7huKXOf52+4lwtCIhiFpWUwGSkUS8ekdE7Vi1z2F2VXQiu
	 dW7/YTHMjDtp48UcWmHTRTsiKIvGpS8hS2zCXdyJ7y1jL18zOErEdpnXyhcVi4z04H
	 9Jp3k+/+vzTjqt4X/O65TFrnKZNfGSjxu9NM7j+eyUbcf56xtOUHUOf3SVS/zf9TEv
	 TXiaMo9uTPym0A8yv07tRZ/WhBOyMpgyXNrMKyue/v0815/x/g/1GO2/KSYyCm1Kum
	 00uHE90r+4MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D7E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537975358.23628.6194920037669234067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1892d4d880566d8210171cb473316830081770edf9cc3515c7614730fa05e7
Date: Sat, 28 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735379753
