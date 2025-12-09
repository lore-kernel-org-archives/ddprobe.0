Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EE61FFE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765287174; cv=none; b=SE1cHjrUv+uVs3a57q/9wSDkIfeuul+W6ihiqdUIJfwkXpQS+WMeIFRBs2HcppRAt3rttzKbH2J34ZuarO4QQ4XN8Vkio+pf2imC9XsKNBFSYmO+LAlzZBbyb+WCdWtSH2aDchKFEeiu+elARS66DgGauemhwXDEZyfyVVDicEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765287174; c=relaxed/simple;
	bh=ICiq7p5DXv6edtVTJde/GXf1KDHzw4SLW+/Y9LP8GT4=;
	h=To:Subject:From:Message-Id:Date; b=cZN3cbgXsC1bSuFyxxfaMzGQnASgA82oeVbRc4jVZOJrVlKcBh3+JE5C4OL4k0ywtK2SAw6+VaIvUdH8+4kv471KIuFbwR7v4zW5u1tEWzLaiargXfERFPrFEDHs3jWGAktzKx6FQlnWUO2E4GHrngmRDGu2YJkd4iNO2iOGdP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoD2m/RB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoD2m/RB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA34C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765287173;
	bh=ICiq7p5DXv6edtVTJde/GXf1KDHzw4SLW+/Y9LP8GT4=;
	h=To:Subject:From:Date:From;
	b=IoD2m/RBsPMJIUtBHwuGHeC40ErEW/tBDggQxn2FopQBkYew9LGFF4zIDcaHyjnXB
	 J252Fmo4ZI8xnwQxx60R0+KG4AMTifKtofMvbsG1Dx300i71PbOWgj0AbRHyH/2WZa
	 LzLuAPbKW93nH01S271E2TIjmmGAFupUuoidSdYf8Jos3KVHkSkOB958S19LodFMeQ
	 vLIWdKMQDBZ/Mh1+G62e+d6VkTJoLDuD6gvcIwB4VcM30P8XILRousnQYluxwThFq+
	 UrQGGn76GkjO0Kd3R1I9ehiyCf6aYoa1yGuFOcKvbtHPbtcNJoiRgPIWYhbslU9szW
	 lfuNgqRzrB8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8ED3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528717359.19002.16623455029339508603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b56df563c4802d9523a13eb69d3193f2fc292565154fc682789aea98ba5aab0
Date: Tue, 09 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765287173
