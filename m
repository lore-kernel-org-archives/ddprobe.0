Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F619145B3E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754576394; cv=none; b=iQk9TzT9uSam+hQ6xiKtm5eyPwCfV2TWJJuREwM4WV0YYm7vyBN2KU6eDsGYG/U4AC1H9ZJF3ghVBUt5KTXn+8SScg4IiROBW3WPpxckI/0eG4tyYBKD3MBQKSJZsrSTuQtsJQGIlOahvnCwhat4uBTw4vmRnqVaR6IHZpvvc8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754576394; c=relaxed/simple;
	bh=GLHS6LpLBh0O0W4bR4F5mbFQfOSXWy1aobhnBkwGVO4=;
	h=To:Subject:From:Message-Id:Date; b=mT1BemFvSOnX/HQb4O9nlq6cpd/s2elW2AoiGGwh9XNoupDqvnRkdksPkhGPyhy7FH40NJO9cLVAOqLvW6nbaEFbfbyK41fYTGvYVyHzGsTM7/NfbM42MgEC3Cr0OODOS4oF7olStjnhtrfqDTmoCNq2fyHzK2pT9UznYAAnkWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp3Yp4no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp3Yp4no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81D0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754576393;
	bh=GLHS6LpLBh0O0W4bR4F5mbFQfOSXWy1aobhnBkwGVO4=;
	h=To:Subject:From:Date:From;
	b=Kp3Yp4noHgzaNP5rUtccOvuYNZGnxWOyJ/WuDVFmMclEQ7TZi2WXgu3XKQOQxvQpA
	 h1ZpbXE38XRH1d6beUQv9g2kh8zouYOMrsSbFbkLlKGem3GBYllPPIAcCYPG+Zf1kQ
	 ymo9OWlM7bBTVnzeE5ou2WoM/wwTL9kI+Jw8iWvLPPzyeuMvUOjNi5JWnlBRMVcQCF
	 7W+1CgbsPRDaZJX8yF5yF3LXp8JTqV7kiPwZ4suptXgL/7Ej6RsLwSxLopRGidGpWu
	 nmHjhHY+4qYS2CsJjYr3M/F8EjfcGAuLCVP7S+37hfUbeWjgo1aIkiv1dctpBhLrVy
	 67IBVjF5Nn59g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1041C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457639371.27862.12316766396552058737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a200f3678dac6182605e70a68fd4ee5bc7ee60494038abf19890aff81c036e6
Date: Thu, 07 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754576393
