Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4513A6B99
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779301234; cv=none; b=bUykdL/PuR8yX/UqpjlCWp9D1RfO78RmZG7hf4Lnx914mab7yYoLuVMRvE8jmXO75XX6DJcfOtPL7ikSruEF7EDv9lNa/+jFaklbyQmjVem8AGaxWVia3XYvzhBHou4c8ZV9B29mlzXlNvx1npwXienOwQ/Hzo9usjE1NNEn+PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779301234; c=relaxed/simple;
	bh=DRIPsdUf4BeATuObxaz/9tHCjwpqPhKgcTxKpKIchys=;
	h=To:Subject:From:Message-Id:Date; b=d+8qCBJSdnSs3un5AyOwSrCpZJ2r/BRCUFqytE3ikcUhFLQ1vKUfuGabSR4RmcsoayAE0oc/B15gigwVb2BX1TudY+IS7OI6FPpWF81Horqn5UFjNyC20kPJq6bKjE1kJ3KRrJcv3kHbnLn7K0gIsgIs0LEudbjBYtU5X/KuWJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9XKWbqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9XKWbqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1A0C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779301233;
	bh=DRIPsdUf4BeATuObxaz/9tHCjwpqPhKgcTxKpKIchys=;
	h=To:Subject:From:Date:From;
	b=k9XKWbqZ/Imr/Q5o43qA++Nvj0ot1HNOu81TzenVbYjqyV2npCBIqvkTXOOVE2pas
	 nb9H3cZ06ovKPO4nVFI6MKKVXkSfhQgLVgkDKbqu7Amv2QMgO9VQB5WEYZi/wSGP3d
	 qIfCYwzc5b9BYMOE3WPdbexbQ00IEZEj+NxonL+OWgXnZ3wDgRQ4+WjIYjFf/NsNuu
	 L6No70+QX494joMxAGyU71GoIwx4dmbpsjD1Zp+WzEe8rwY+S0DQB9+wCql7/NxwCb
	 V9V6/sM+KIzwMNwDwUhfrNCbmKOchZ/jjLRomrILkwETKQ+mNH56pyh7SOezSvnP3R
	 bkhqenxJeTxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C13CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930123372.12791.13092905554354082520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833401ee4123328cd536e14cb8cf2aa1e3cdf4e03c98389f18d970dddf73c8ac
Date: Wed, 20 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779301233
