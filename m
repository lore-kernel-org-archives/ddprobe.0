Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F74225776
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451594; cv=none; b=txtRHnRsoxJMAJrEILRM+32vEIOYW2eR/B7BdWFdceNgzleub5bMEuvspdSmU489pDSVXiWraa0n2zQibynxWoasSfBxi2Gz0uqwEGsYLBJ9X30ty3WEPOBMozgnPWAYmEQ/Y9GiY7RX0hN8YGgJpiqjHfYUlMgE7ibOYA0/P0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451594; c=relaxed/simple;
	bh=Wo5/UbhALrZAAjucqXDzu+k9o52Pdrbz/t78VRj1kG0=;
	h=To:Subject:From:Message-Id:Date; b=GitGeyGoLRJnd6McosfzWFTEwktthMkH+V47dVAF0m9BlCkRO4y/Yf/4s4i9GTGXfO6K7dFq8TaGSAxoWm7X8PYtD+t9OXfidPsfz7QG0FjsYdL3q5DZh/wI5KDbpoAHbL2dDBHCeH7r2FyjOHujYmpesHZ1q5BiSBUbJuSYfyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTfV3uHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTfV3uHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751451593;
	bh=Wo5/UbhALrZAAjucqXDzu+k9o52Pdrbz/t78VRj1kG0=;
	h=To:Subject:From:Date:From;
	b=iTfV3uHtZm4v6sAe1s6sfV0VrjI09BujXWLMG8RI/64nA1zq9sco9DXS8zRiyCESF
	 zntIWD1UE3HYnBtKAJOvvXLvv9l71yTKck93Kwq3tWioJCH9uVxIuK67oxbVmp7xiV
	 JX/w20Yd97RKxmGJQRUxFVVGjDEWwU0/eDEqMZohZJ2Dn83sgDiEv3auv5ScX9eAtU
	 bkt3Fgu/jhtl+MMzSk0gO1SFxu1uhMdq/0tE34DA4g3/5Yo9da+WcBJX2c6347VJjK
	 xfgq55jP6TnoNjvmkaCpxxrjwfw1OG3qAGukFBpYi0nCosyJ4F0vYqsCWHFwKSHD0i
	 KfdTXWBa97gaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E46C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145159359.1140.2480132901398110727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c193a009d918d7adad53c597800727e1326e9ee0999282d2735dff239c94ed8f
Date: Wed, 02 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751451593
