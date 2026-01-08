Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03724213254
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767834234; cv=none; b=dMw9oaY3MeGehs3HsW+MWJYKgSCQbV8BErlVKedaX5PDTTVSkfwwjmRzEVRVvx3jm8JqIGEg26zZxUPZRQPlg9OVoTTBKn3MdfAsvKsG8Wi58delXEFZ91lBsJ/DHJjv2fsFtdgR/uY4BRRErcf8hK32wpnUWypm+L1p5iDH+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767834234; c=relaxed/simple;
	bh=Yu5QsDjihNyiGQYt+VfNDQWoWc1stKnyml2Ty8kGW0I=;
	h=To:Subject:From:Message-Id:Date; b=dUZEaPwd2cwE+2k0utLQA9YXZnCyU+jKJz44l5eywdzHICKwI7t4FkoVLTvfqjiEYQgkdCR83f9DHSvIAblZoQb8dnE6kfhAjdWZ2K3L/sEtIwCBG+4a8FFTcK9gIcnNVV6TV5g43JwWxZFk+NRiw7NyG+SyVsoSbhHMhByIC3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUu4GO4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUu4GO4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F89C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767834233;
	bh=Yu5QsDjihNyiGQYt+VfNDQWoWc1stKnyml2Ty8kGW0I=;
	h=To:Subject:From:Date:From;
	b=bUu4GO4NUN87vtZNVK3Ba0oy3DpNyNoMmjjmEARODMwn1dWPcdcefVpbhajaoLFdo
	 dyJyQy7ygfzTugu+WtUYVV3zdzuXLmiRpNKspjTgxsminAlmyza756A70JiMnTfvQN
	 3VG/y6gJQIJdyECPXsMSAyNvVPibnL2QOqrfJJmWOzpIA+zoElWnhkcoZKZxF45H+V
	 5yVmuV0ncJrrhu67pY8zHTThAJUKOAQzcocl8eNJOThQslytlJbvi39VWKp8KrR/6t
	 RAULz48CpR40GxzPNgXhZISJzQSAH4Ov1P9erPMSlgMpa8spcKxUmq2m8rjb/ICcxL
	 CCdmWPwvvyjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91867D14883
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783423357.32404.2206667420367407989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74503fd7737b48af0ed2aaa6cc2c4d45b07f00938f823fad4f6d13b1cb725e3f
Date: Thu, 08 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767834233
