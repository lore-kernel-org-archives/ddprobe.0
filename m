Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9541C8638
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748499594; cv=none; b=K/ZuaMB0orN2dzIBeurl18saDMM/DIJmUCkrubuyrMcYH1Kuf4lJOG4tmGd/zID1Ms4hyszTdjofNEiauyijxkTR3PdJyyyluZkAYdJwXxgKSlP51pwHFZIr5hEuBAjRZhgdw3b6R4CdV1qLwhCIVOZbUMaEPRCxEh4XF8eqqfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748499594; c=relaxed/simple;
	bh=oZaSlJrtSSaIkCePK7kyWgNLQRhmGyUIhcxoWfIbT7M=;
	h=To:Subject:From:Message-Id:Date; b=D/6VEmDAbkK8/glKdpnzo51rzQM592XpcPNKqMlcPOcsbn4wdnsV1Jtq8ySXjpj0XGzqXnYOMhnNWvFhDtIu4CnoEM+4YqCZsW5L1z1Bwr7umSJt5VNChP0hSLbLu0GWagcHOzVTJvv16OYJQJXg2YnOd7+cg3tLzjqudYxMZKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4mi67mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4mi67mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F348C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748499593;
	bh=oZaSlJrtSSaIkCePK7kyWgNLQRhmGyUIhcxoWfIbT7M=;
	h=To:Subject:From:Date:From;
	b=G4mi67mbz3j2GxPUM8Sz3isDuFVhZjvI/sJQxWAR+Sf6EZ+vdUa0mXt54toL8iVQ/
	 YlNnHYsrqoFKimZr0kUsxTcbZAmV7seDEePu02SNdQPxv2MLsRM6dX7zoK0nX16WgS
	 hLHuq4E1mMsIYPMUaH4XkD4ophHOC1699bw1u11AKqqm0uJN0piYndzXguOKMV4Ttk
	 RM3nvKYxarAGmZsdeYMCSxQgC/KNSKAUI7T89Hgu01AvLBE9v8NqRX4nH74hFbGU/0
	 N0E5IphIzC6QWbAninRB6DpARbppas5f/oU69TBWxkDfjl8Sj3t4WehaG1X47aKuuY
	 mym4fmmXrNHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCBEC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849959357.27058.16367543644306278576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5f36e06e3ab6ddb8a0573e646604a6e7e897076726d53a7f4ffca3de242164
Date: Thu, 29 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748499593
