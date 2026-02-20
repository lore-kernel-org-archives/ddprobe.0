Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCE6343D9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771594494; cv=none; b=RXogghvE0QHBR1Sfv/493+z7RhPTvBwJfEV9vYiTsY1UPxr+jgpIDVbxgsMpR1O4LH7xX2HR0qMCT+Kxt/wi5kh4GN8IYgg3vOV48wGWeTt/gRjLt28EKkkZs/qjN7UzJfNzw2p+urLNYl5O1Y+kS5KVxow6gKJkp/T2c0ykY+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771594494; c=relaxed/simple;
	bh=8fNqrOGrcD8k2VIaVXOEFRbUWv7lX+GKv+bESnNvFUs=;
	h=To:Subject:From:Message-Id:Date; b=S7CYED3N3EWJlhGpt8vEaGud3D9UBC+O/UDoPjPcZr2hL8h5FD/aIvFPzhOvLgyeT7NaVfT3IW3pbDs8pkapwSi2csJUd/RpYhuhmIGTGOsl59VsJMwsJBLq6ALdH0PwKZqAoAHv70GwPb0I6v7ywDX8JWhlaHN09uqgk2+BHFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB6dYqNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB6dYqNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771594493;
	bh=8fNqrOGrcD8k2VIaVXOEFRbUWv7lX+GKv+bESnNvFUs=;
	h=To:Subject:From:Date:From;
	b=iB6dYqNwZqpVH+Zj2qLbpFvgiDwwcCO2L+1Xr5tdxpxhwfMPhdiooSA1a5V2q463K
	 vrj08yy9hwjObt+sOtxykf11ikb+yeemM+QhgZ+CNbtIG6HAqNqAkGRJcRX74w5C1A
	 kO0UZl3I5Ne5L+csItCBtorVxlM9HA09EZwTObcVpRla/lWGFHwZxW0Q9IL8DCbAi2
	 VruHp8X/yhIETGzu1FGKUgsuBpHop4q+tWMif3x1orO0isGj3DePeTTLg+asXhZMcR
	 dUM+AtPJWXl6ec440pRrkqZT66pBzehj3AzqhtDPhtN2tZwnOuLncwX1dljSn7M1fa
	 8VhBOJm6fQEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92067C54FD2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159449358.19544.10803811287255712308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d14afb49a1101b51575af903e6fb21aab8f64ae4cc8dd0dc007629f9d05db5b
Date: Fri, 20 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771594493
