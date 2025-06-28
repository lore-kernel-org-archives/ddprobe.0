Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16419ABD8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751138994; cv=none; b=tXfDBr5WapD32/0/HkRrdNBrcbfBxFrCD6sJqHRW30ZwUkUpCNsCfQlEg7I+8S4+iz9oNFCW2SFKRxXgD+BzFLgYB6NhhK4c/k+5VmG4brK2xlE/0lqxAYJu+JyviuOBORofLIYA8GIl+oKo3oQNYW13Pjae4AMoDo7fvomEWZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751138994; c=relaxed/simple;
	bh=s6EbQP1vMK/E5gH1KU7ZV5QQ2XNE+uq60PG0yHerRkU=;
	h=To:Subject:From:Message-Id:Date; b=Vep0xtWClrg6wScnXT5WPquzEf8AuwcgdOSDWFVAPzOKwhZ0oYhZpMRF5NtxnBJQeNbjnfZjqKH0CakrdOXicyAPEiETFBG6Vcsw6Cvc9XmWWpUwtY/1VI06o7ItuSxDN50KYuArM9kklYffAzAik0dbFpzYUTZ4o/J8e6h+0qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXNmXgL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXNmXgL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751138993;
	bh=s6EbQP1vMK/E5gH1KU7ZV5QQ2XNE+uq60PG0yHerRkU=;
	h=To:Subject:From:Date:From;
	b=EXNmXgL2XDLABSO9obyBSSsFp8LyZCeQYAUmx9/0W6tYzKu1ImphKAtl3Q6gFB/nr
	 75F5e+FNBjppndO+1GlP1VT5jFOdazolk75I2p75EGhx2SavvV4RtoAJlK8gdO4Hp7
	 qULKWBPnbh5GfMyB/dsg9fzqtPHJQZfMXOY1LQice9ppOtKh7qjlDKkMChLrAx1AgG
	 2Ej+kUmArOgL0UwMQT5iHHavkNttWk2sNoDWnLc9SSz2UkS5BgXMlRo/Kb9Bra6Hhq
	 TacwZ8kSPu3g+cPJysZfwiOIqzhIZsxsdHyuJKcTWT9VIfHu2x0sSjVzAs6r7a3o8j
	 Fx9w3oIXRXHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F1C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113899357.16373.14513066649155690640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdc9d0734a3e49c2325bf88bbe542754a9d8e014281cb7aec4ed8211b2c5ed5
Date: Sat, 28 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751138993
