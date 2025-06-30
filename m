Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1B12E3AF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751306994; cv=none; b=VOGfOpPXr7iW8WOH2Oey+eUs2UwzwDE6SiWp95qAT0S2Mm76x826oigSiwq81LRVDvB8Oq9PxlHtIz3dq8WZQQIW+neubTFumfd7WDBCdzDG36fH8tBjvexXB2lmr86rSzAsfwUpYpopuw1fMqaSK7N3mdM0iyy0Y/Ld6y2iElA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751306994; c=relaxed/simple;
	bh=PEx8OxnkAnuABJnfSWYJxudDz5BqF2kjFbA5mi1lb2g=;
	h=To:Subject:From:Message-Id:Date; b=WdW1JmvFvSeb4sWYVRBEJzlgphw+m2xiuZxrPwRJ8jSWxPNo+Wt4jM1fDSY00SDU26tqHeCrGHPQ46PLG7NDmaATFQrpTpjMkm6P1n+z38q/d2Iu30CfZ7Kc3gTNgQrfLO4yZQfHxnsiXqqJPbqd2m51kbtYEeOAQ+uWp/wa9/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOyZRSYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOyZRSYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751306993;
	bh=PEx8OxnkAnuABJnfSWYJxudDz5BqF2kjFbA5mi1lb2g=;
	h=To:Subject:From:Date:From;
	b=ZOyZRSYXJhCi0VYLKyS8fBYvxu8+tsJy+ycbPGBkfRJYFxWRK+QDjASKq0mn399Jr
	 ld3DAaGxFDitonuS0V9jxKsrJ+TPyXhWoulYXrVtWGVO365c35O4+QTWGPIcQgvRjp
	 YzWWrGewxOETQff34aw3Jbc/YpJoJmA4THtGN46NVq+uoLamV7h6TubttCBM9n35YV
	 oCyVXCCl+TT0De0Eyzr8pkWtxP5gXWBsqBtZHTlhI5n9UjI3t2iF/yQatrMbYfw0Wk
	 oUfjpnyx3B+c5INWZjEcunyZ7vvTVbPm750LnReaApOXBcsfuPEZqvMfxcpOjRki1n
	 TJPVsXgfzv8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A3C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130699357.3535.4314689899305054422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167fb49f9ad4b20ad824f21f1aa21b5972de65a2985d143eb7f252a79c417599
Date: Mon, 30 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751306993
