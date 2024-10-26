Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAAE217F2C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729979154; cv=none; b=hZWWPzcCGjEfvk/vkm3rYwP1VoeAgHZ9fykfXdDgQGlWOlPegXhM5uZYYQmOVnlA31o2JUCij8lMXdp7RyJ8I0ALAF6b3Gsd20TMBikPIc6fDEtAw4HD+t9TB54MseU3RmBylFF2E/9dAXqo8ZAhx9w8ehPf89qxgROj/b4fe0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729979154; c=relaxed/simple;
	bh=1YctiW1rUnJe8PfM8HbyPs3ooSzoi973cgnhlGNua4U=;
	h=To:Subject:From:Message-Id:Date; b=mx7gM1liNZUdjV4bgFf9YG6YYZHpaSzKTG+RLHq1qXfbHlNK1vfmlsBcv+JriJLdQk6MR6hrFiE4ZsrILgsZ6Sw5/cyoYaYtwtWcEcIUMk6S0wC9rxf+5TubhAtT4lxpg5RTG1lq2DkUwp8ELK8V6nQJmXlwFFxNrp9mkmaeXG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jILYmKf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jILYmKf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A62C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729979153;
	bh=1YctiW1rUnJe8PfM8HbyPs3ooSzoi973cgnhlGNua4U=;
	h=To:Subject:From:Date:From;
	b=jILYmKf/4Kn4DS9/cMvRxyQ08aTxVuEu8E2jhjin41spcat5RofnC3ptfFv27zB3p
	 IKjmvrPxOrGNhjQwdx5JJB47oKpS5yRwc1YLdawZBLxGHbcPK/f3du90vmBOqwi75L
	 UxxXXxprlkkjedQkcQF8ZQiFFvqaz3hbcp4bP3Y97Aa1/nUttKMlntp6/+vkOqX2cJ
	 qL1IKqUjx0+AKmOrE7IMcn7BZ5sMKjuFFUAHf52KJsue9zCYzOs3yxifF0qNjM1FW7
	 NXj9HDpJuPwTSjXuACLR/WodSRtxBKuQ5tpo/tKWWolaMgNP5eGK92ZZWNtcazVrlf
	 zCiYGgxQFunNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA91D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997915360.22656.10562412707888034760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681e6e8418771a6fec0822f3876dc02eff8e22f7e886123487524c4750a8ef01
Date: Sat, 26 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729979153
