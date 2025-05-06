Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D26A27F75C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746538794; cv=none; b=lBPjAm1JoL729D4ovRhKGmBvEIiF8gM4wu3OBrhtUKK6sxqmcdfwZ6Ybp4sV7H6LR6tu2Q+0Ek21/lbHASLUsAHC2wF2eJJWkWaa315u333eIbGZMx8duWqsMh4SzAQNQKeWqWdh+r7xCMTGu2kvozzc3xHhsKFv6q+OSzK1bws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746538794; c=relaxed/simple;
	bh=1k3PTslmuNk6wYsCurU41MLGaLzKks98+OHie1h4kL8=;
	h=To:Subject:From:Message-Id:Date; b=MYDTYvQdm0qGy7qAkaMhtLpcPmxVRDYn+K1KW0p86NZFqHHl+vip6vSLmRzj/1Cl7AGDkbc9OnRVNdWm2x05lhsX/5c1Q6eEJbrrxlypmVKwwRAhk7wiGELFcNyQn549dwaFPxA1Z8Lmvy4qcQ38DoGZYWdxLIvRWE6S6kXoYLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4Lk/5aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4Lk/5aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BECEC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746538793;
	bh=1k3PTslmuNk6wYsCurU41MLGaLzKks98+OHie1h4kL8=;
	h=To:Subject:From:Date:From;
	b=G4Lk/5aPZuZ02TtNWjLD2f44vicxEiHoKU+SDfpRnBobFarjNiDAkvRFiraBhvsHu
	 QT7/8E0FcSippuqZWwkJTzJMpUiJMBbLLX46Lc6imlgz8AUeawZOssZ+XynbauItvc
	 xrFOkth+O2hsWNzeXxeknJIyj9uo6aEZJqa3F7JukMiJKUFHO0MF0Guowag36pUWzQ
	 aXmPOelk4YxIoj/tluDE/9QAB/1tmvbhgxkkNTd2uVjfRrRaS5MZkdLrc0n2vWmFui
	 yjyFWNpU5J8XzEj+YWL8E7LKma4QMzfwyHIhOdg+GJzE0KWQykWxqoovFgFhAx7Pso
	 1vO6gyQ/8aoaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E737C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653879357.15523.7417015342245731137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a8855f7ab0a30d203ef8608541a3736f53d33f459656a88a5f0805023f884d
Date: Tue, 06 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746538793
