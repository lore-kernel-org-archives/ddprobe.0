Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2781D28982C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753789794; cv=none; b=CinCmOtOkFLTBucuZZpyT/s8yqnJ2UQWZohwK0nKdUZMqrRQVkoAUzTAzTQsOrg/TGGa9vV+ppA8dqpjFxGXP0BSC2HDJqJKYNlv+TNvounaI1P3dL/BYbpuDxHnGKDZ8fIdKV3KBGYkmU8wduhiLNokvpbdxQon/iLmM3WveFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753789794; c=relaxed/simple;
	bh=K8hgy0PELlVFftn8TREeXzoP85uBM9osynwBxMdzjtg=;
	h=To:Subject:From:Message-Id:Date; b=SymCEjm0asNOO8Lr3Ef6jgVYfuAhqFEhW0dPWtqWE42YJMfw5M0v4j5N2ScywBMrUaIYWvFzYWYqE/UrVIf4Vk0m/Nu/uFu1J7MKAk1xlxpqLTgf6oxPW8UkzwGH5Ge8wg3AdykfrAnzVuKvcI3MM3V+fZZwN8IAnCPJ1oCjEx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfB6TjnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfB6TjnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D46BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753789793;
	bh=K8hgy0PELlVFftn8TREeXzoP85uBM9osynwBxMdzjtg=;
	h=To:Subject:From:Date:From;
	b=JfB6TjnYOTBUjDea3FGlTF6vgIdr9V5fPdF8iaBQxFJMQUJnXb2xzCsSiHhlJHHcb
	 sDld4lQvcprd5Dx32+7eDk5chgpbTa5IaWd33HzNNzeD9NRQvKsgPf0pIcIHjl2k9V
	 3gy4TB4HuA3ZsGXi4677oqw1eMsV1CfYtQR8Fm7Tj9UVURSl/pQ19os0D/YhKihBYt
	 Wk1JKoMMeQxwZl1XT/6L+En/qbSzK83EJaXy0BiNU5c+Ll8C+ScHz37lRnEEJ1Ma/7
	 p/CvwbwOTuvnn6BYrJe5pPIK5h/SAa4QH6WfHVQPBWWuRurqtFNjwujAICypTKh2Ve
	 qLRsR5dybumTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CBC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378979357.21701.8647134346116137764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7045d5e5c6e6607e89381a4019b5d1705e73fd9e434c37ef58ca5854c848efdb
Date: Tue, 29 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753789793
