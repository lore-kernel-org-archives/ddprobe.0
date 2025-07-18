Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28222149C6F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752874194; cv=none; b=r+UM9IRu5mdhD89Evt1SuL8Vf17lvr5pCU++V089XkANmN+0fcT74pbv0JNZSAUpWvqwUAbdzLNnMqcKx+U/ls0aqXF6thaK7QIYvpiVDIj4Uu8oz3lv2qB76gBpXxMaflhYvTbI0UVrsDATsYJBz7Kba4e8igtWGtNgpLad+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752874194; c=relaxed/simple;
	bh=oJZO9JlHLKjN1iVzW2P3ZkyPNx7+cQgoX9e7fSSKF1o=;
	h=To:Subject:From:Message-Id:Date; b=oSVFTJR/ibtpyNIjWbr9lI+jACsRZjgvRY0eLdp8X86ajrUOtRC7U0mcOJu9sxj+rZvmoROw6zlM9VN/OoEZgCorvG23QqmHXLOUjhrDij220zIr9MXId1R5GgXBcbKbzRPdcpxVRsakQ1sqTosYLhySnqPjCup/Ugoi2rZPKtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJCgtITy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJCgtITy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F551C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752874193;
	bh=oJZO9JlHLKjN1iVzW2P3ZkyPNx7+cQgoX9e7fSSKF1o=;
	h=To:Subject:From:Date:From;
	b=SJCgtITycVP8+QMiQNDYIjppru6AgsN7dbHWZYf4yPzBkfCoQr6wssP+GcMoO2vLL
	 WZk8qK0++rpls4GLjnU+O2IPgF9Vto2AFJD0x7lh9kc+MrZ5Uh8XMUHLP0iRZOYiFM
	 w/93QoIUl96RkOXzqM0h9cOcr93pIJBThMhmmLm+77g7cSCGQL23XwAhnvgeFbuDrt
	 1p3DZuOPsOVrewYJMq5/JrTbYcf3D6LutVJ/9a+twHu5Dm3O6GmaoUt+VnSQ8HxSVG
	 gyP4mtPuynIaC19eA5mGXIWNiEZk4scLcjA8ZP19gE0mwEbikscNgzz2zJZXA4i/X9
	 dJNeP0El8ZhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4DC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287419358.29736.5281633589296849520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727d7a7a30e6035de191b4fa2f1dcf87ada90785c56b518e5544f6ce0a70da7f
Date: Fri, 18 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752874193
