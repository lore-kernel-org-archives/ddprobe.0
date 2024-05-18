Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108CDF6B
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716066743; cv=none; b=gDsJNqI0ws54q2kKlC/jgiwVekNarTaX72sf8yG51GJQ36sKBfiXF7D1ZdKMB54eTylJ5yDbQqnRiF/rexEBlslEpnAw/GHZejsDcKZQKJCb40Oqe6XzjLsoc0s48o8Ai5FJUyGGju/0Je/LdQCq2X0w1kO1P4ejgGiuQFvYamM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716066743; c=relaxed/simple;
	bh=yPysfYqE4KLHrLexhQWZW9NHmydRsLk4W8LdrCCHC/w=;
	h=To:Subject:From:Message-Id:Date; b=IP6FCpRL0SItgilxNbQA1Wd4hQ2rOOFRClrRZ7LGjmMzNir7p/NXM9ZI3jVXFZSlMvDPdNXAhtmDniy9am4MibAQO2aQaLGjbjJbEeLHyPlVZ95MaDvESsifGBX1+kFehVwjhEraO2tmTHWPrjCR3YnU6MaUvi0TzWBB1COh7Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLDcB5zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLDcB5zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF382C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716066742;
	bh=yPysfYqE4KLHrLexhQWZW9NHmydRsLk4W8LdrCCHC/w=;
	h=To:Subject:From:Date:From;
	b=OLDcB5zswN5oWIhaam8Bv04q2QcPKoKAm1Gfav4UqUqjvw/uoFcjx7S2VDVoLfOuw
	 r4nYeyQHp7enj4z087VeP4ky8QqJCqiqmoYCaMO+Q1HQXIhZLK1nlJCtZIryq/RAi7
	 Ru2hncEzomgfnO1i+YRSdrbxyHs5Eaq2WsMMyVOZb75KlHttNXzaO4JgW4kTFU3mCI
	 JRwH45hUcXYSnKG0DQyZLkNSqWVCkAQ/Wn5maGMOhNCUVXks2kOEfblpepyLjGHmCJ
	 2S0+RN7ciwY+kLwxODWNYcITaX6//cEQC9khvRMMwu9we+jN7ifFG/GqoS7xuQuJ3S
	 0rhtMAO7LiZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF135C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606674277.7714.5100697575524034299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd4491ba6ce6c644115f7a6f92180c636a8832d2b6d247f0251d26357d2a461
Date: Sat, 18 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716066742
