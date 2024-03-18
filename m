Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04ADB38DE9
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710767897; cv=none; b=D2PxXkd87gVbRghWgTqr03UgubLeWw7DgKAUkLKpYEwTscip0vK2/S7xEsrLxUybfwvG0KeGsqI1voIy63xLq2Lm/yL5sum6VIJ4VQxNKxVgy7AU6MfWgCaHSixn4qUIvOMdP+prcHuiKLRbkK0Sts/oaqagCDemXI9VzhoavPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710767897; c=relaxed/simple;
	bh=3PYFAu2eJzodKMOwF/fnDMPNeBbdEMTxEbeBrIHTw+I=;
	h=To:Subject:From:Message-Id:Date; b=iu3IXh6vKxELUUipwwDsA19b0iDMFJJOdb1YDqT8uiNQXiiq8C+xVgG9Kv6toc4VHu8KVoda7WfO9D4b8RCyUOlBYC/9I9jU7n8WBlJJ6CszHnJC5FkVNFCT7Y/ZDLT7iiLzjHf4tvoADwbpnfOCuFLrJS0Lrhb1z6Q+W65pT8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO9vfEc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO9vfEc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F546C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710767896;
	bh=3PYFAu2eJzodKMOwF/fnDMPNeBbdEMTxEbeBrIHTw+I=;
	h=To:Subject:From:Date:From;
	b=XO9vfEc3nO8iNOpiCsrs5UyDaEHAU8xn8lbNkbCmm2VKlG+/X0Vd6ydOuZJxXWKAJ
	 /ZHsfheSDi1eTYhn+7N8BOLFEBTLXxSDNws9Bv/TYxEizm19FSrZfoTBzWgEyUVu0q
	 OSE3DKVlLHIgd6IFb5zYfy1g0Adn5sQaSkVBeyodCIQ7Lnrb8Z0Z5pNZCrJ0eZJ2KN
	 RqVYu+Zq/or5oqvjxvV1NBsDPh+0O5bruhjnxaEY5jKic7sjW/Mdx29FzHowodTaL+
	 3e0ktx8ykeC65lAxjIGSq8B28MX2BcVU8kzvyHb54HnpIwpgDIHqVZnIbhwFkgSuFv
	 4nFeqqYUZsr2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6090EC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171076789638.11069.8771715103065451711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e3a5867cf90fc977949240d6d141a13c13a3e8568e54da683941b6ba49e18e
Date: Mon, 18 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710767896
