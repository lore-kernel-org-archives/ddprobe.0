Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D05AD2D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726624554; cv=none; b=qX4JhBLGipnUW5BzhjXwinmdwLXIHruRCpEzCsh5oIA0fsZn0EGgzN/SB7ZIZFlu6pmf3MC78jsSdYhLAorahIuD0eGGT8oqN/LwCy86pdVpTN5ctXrVjRFhTWigB73HwGFKhph9oWw+NL8KDKfcb9lysxlKZwMnY4LhZwjtv64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726624554; c=relaxed/simple;
	bh=PKKaskS5WZhRJFoNElAAe2P3oS0trKsKtUt2BfBBg6k=;
	h=To:Subject:From:Message-Id:Date; b=WDgdHqM9jynYC9UD88iIpSMaelrFsMgrSpCs3fhrnQG6mPwCF/Z2lKBjNjREO/g4WpZin+4sZaPK2fUQEAuxnQoGbm7WUmdXJl2XkipE+ScU8sa6hNq9mmBg5ZRDnTBVna2hASzLthL6nkWzDACW8fBWmW9svGGwfPP4iBriaRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOmQyqTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOmQyqTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D8AC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726624553;
	bh=PKKaskS5WZhRJFoNElAAe2P3oS0trKsKtUt2BfBBg6k=;
	h=To:Subject:From:Date:From;
	b=WOmQyqTzCYMQ5cx4ybCyqex/l/d8h+8s8EUOYfu6iqO1orO6L3Gfde4Dc5t0XShrU
	 q0rC+SBHBPH8AUm7BHWOfd9YrHE1ZLjlJntgVxuH+8A84Vs1aSlkodILjHwW8UrwyH
	 WYKg8YLJdMa9FilDqpDM/SIidqNHLrm3+0xG5miyQwpxqeX28vhRgP+PUEtjj9hqAj
	 QR8sG5ZcJJQOB/c5YssedkQTswcWZX8Ob2g74mm+V+3QhYO0czMnFaysjWjNM1QKAO
	 yHsjBza+lqkplIzTn31ordi1s2WDn0mKKiANO9xWaM+u9MZRWhXOYTXehZy/TXCqF1
	 4ganHnwPWudxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95512CAC598
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662455360.24926.17878496332217251626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261d95707a2c7d954c1a4e54abeb2e78dbec399356cf52e10762163566838ca2
Date: Wed, 18 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726624553
