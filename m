Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A540B364043
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787447434; cv=none; b=nDt+O0tmokDUjfynIiECw8TTuLvBzqQ1CfYipJOIJWwn5vkgzU6VynuqFFJWTcnlmgEslVWVRdp5IuNNw0IhHAIojudFHQtjXLRyZm5yAnjBjcQGZqQZvw7lwjX+I4jCts7g1MuZDdYWDWTBjlOLMPsBj6D2znLxp8d3I7I9VyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787447434; c=relaxed/simple;
	bh=Vz+Y6jaTc3RiLyKbof7YjCS8v22osH2C3WXZhEs8ZZk=;
	h=To:Subject:From:Message-Id:Date; b=bmfj8HK5AH8Nbs6kmrFTI0v+OkEDc3GNaesf83zc8cOUhuBOwY+ReljuIte88/4ZMyp86UKcQlijunyNBPkUwJa0GnVd3SLZenZEJerRqEP5+3qknUfVYinmSbxc1QCR/2SzQWZl4gaY4GLCeRQVhat93Aib9mkhw7C0RSk8+X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/pz1N9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/pz1N9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787447433;
	bh=Vz+Y6jaTc3RiLyKbof7YjCS8v22osH2C3WXZhEs8ZZk=;
	h=To:Subject:From:Date:From;
	b=L/pz1N9kMi8I37osI/LQs1pKycpcn1cL+y8YfAWe2Y0WWDpexGeYq4Y6S3M9dsv/c
	 y6iFEambiVShLeLDJX7ReFOpQUMb3br4BatVP1Q5SZFNTSvcjTY4EOHCLofRPY4vup
	 09gnMMsOjTCmbNDbneQi/0sQqIzpatHw40vb/xYok3dFAO2Q2egzjZxzbdtNHV9nkb
	 6egiPk1G7mir9aAHQo2/k1mMZio8AhaZUr4GPRf2296soDY8IMsj3whcGri4AZFRLM
	 VDFCTrmFlbtJZw8ur0R9DFxSsVIZN6pENMlCf6caK6zycclaUD6gbNuZft7kDd7DWA
	 sL5dbBwe7+JNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD07C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744743369.9039.17946379572880160396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9d4c48b6b1ca9a9add1100c9de719602e42b97943f7093303c4273d7fc3184
Date: Sun, 23 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787447433
