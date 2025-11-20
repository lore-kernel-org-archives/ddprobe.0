Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9C92F7AB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763670114; cv=none; b=jCqAMB9AuBGxp6XGJCi4HomxrMXeT2JtgUsyOyuQXkaxG4SQgkHsN0Nxm6xJxHoZCWu33XP/7Txb+f4PCiROKw9V2q8YAt0GPH/e08jzPAgMOINyzLEdfxvpDvLK3zjH+EWX27NAwW5IwbcoP2inglgRnLVNnj7CX+8Hvw4mVeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763670114; c=relaxed/simple;
	bh=poP9vciK2P+wv6Zcd8fEPXwmksU6YeW/5d5qZFnN81c=;
	h=To:Subject:From:Message-Id:Date; b=HR7U+PnkiWGiJBYKhEcnEQn2/uY7rY+GF/KzZktQdSOQKYJzBCjmpGCy8zRJSMxeJp2LZVMkmX5BJMKS9dYBQAnPWeCjN1XARnlj+Z6sUi4gSBUefScLZA7pjap9f42ACwdyqHiZScRRfFtdWYyHzpUP2gDL3D3apIw3I3hwywo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbOxSbBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbOxSbBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD82EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763670113;
	bh=poP9vciK2P+wv6Zcd8fEPXwmksU6YeW/5d5qZFnN81c=;
	h=To:Subject:From:Date:From;
	b=HbOxSbBdzYmWrwnLp+3AJfB3Q8MgWf1yRr1zsxA4e/0SNbzyAJ6jVTe5bjCby68d2
	 Il2nTMxr3mH0rIZSsXWvZ1JZ7ILrhXLh0pwovDrU57NnGeD/TuEv8wI5rDaJMlOyA3
	 VqmC++x50LF5BnXJ3+buXV88AsvRnX0LonsyHebq6qGwUzzmcSHtEID3g7rXPpVsc1
	 9CYhDPUhjsSIedLHxGp1IaLsZ7uuId2rCZpzfOAjRRqKwJB9sU/rpntwuop6TmQe1x
	 deD6Hywbd47P4qzxYvUS2dk52MqEtGAzPm86FLLbRoIbsqZtqoLL4JzpkFjxe21xo8
	 //AfmutC4Fi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E22CFA442
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367011361.30139.10702888689409084005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78063ebe0914f85759bfdc32ad4fc28b8d3748d9e0c81510e36958c12a2f93ae
Date: Thu, 20 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763670113
