Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBC163CF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737468354; cv=none; b=rh0jDUFnds/haqt1BX8bps+0tb28Ej/T2QuuUmLgaPEk+A/kK6+/aXaQgVnbnfvjArXArqPNS0frt0TDLfgztpS1YSC92GlvrU0EcGYLzauDs5RpuvgHmCVZPLwrOt0GKjGdq557AHs3l3+XnmnuYKDfyLnAIwCDmIRuHoVM5OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737468354; c=relaxed/simple;
	bh=grotlfJ1YQKWQIlAOJzRC5szbptClUr+6kdyiI/Ld04=;
	h=To:Subject:From:Message-Id:Date; b=stIiH8OQciztYQ+OEmJJEjVutlEI54sQC5BbSTWJa30byu1BsQHub3MGFsvj6Nj65RXFL6A52R/SFzlYJ92sEKJLCVVGec+SmZkr9s1fOlteMaN8Rqx6V4idrtEFWX3eGk1zfvmGJnwMDXMlcFZHnapILsbLqQcRFF0rqR3JzMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/EF23a8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/EF23a8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BCDC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737468353;
	bh=grotlfJ1YQKWQIlAOJzRC5szbptClUr+6kdyiI/Ld04=;
	h=To:Subject:From:Date:From;
	b=j/EF23a87Ztpg9WFRuC0dQYPsqVt07NHaEyq7iRQ7gmH/XZbuf20fSqcvS/OEC6QM
	 gyoBPJvFoI4h0BBr3pJmGBaSWwKKcb+H/dJoeDd4ZyAQ7ZqdO7t4OqFK27vIuEslE8
	 m5tHu6zlnyHj7AbkCyQgJeEmTBoabXh5mVR6wwSygc+y/aisKFiYAUumJ/GjUOrwW5
	 WVZC6upaCDB74bOaRCqA0M6TRrV1zFBHjPU9APzq9hcvbaBFA9JJYhTiUJGq6nxqwW
	 S9aB1XJWevCB4T2nyOKHNIrmNV1PUCS5DWVfVlwpULl9qZvkOUj9zPz88hjPz3xIE3
	 xwriTMXLz6zuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2550C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746835365.16900.2903527479647769689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75238f684ac7b8a3949a47a040ca7bee7d12498fe41c12d8ebdc3d1318d78d44
Date: Tue, 21 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737468353
