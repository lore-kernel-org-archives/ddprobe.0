Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259BF2D879A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758101994; cv=none; b=sibJTyofD8l7z58wQpk4pB9+D5lpzDyo4QC/CJlYHKVJID/HC4Tka2Kco75cg8xGtXXVO/N5bZe5Y3NeDIBIdfK1jD8JYGefSoQ7db12dE5ZDmPuVevvfknql0z5te0p8K8tZN8PFvPkdyuulrqH5YkoJHKEw8AzUyCAFrySox4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758101994; c=relaxed/simple;
	bh=wCCYA2nI3sSOwgt38X6juXobOQZ9a8atxyuBu6hqdis=;
	h=To:Subject:From:Message-Id:Date; b=JluvXU4HP6i+rkatOzlppvcRMgqWh2cre5eIl3VYbiaomXLxBLpbFpd/7b1H6MXE/YZ0SdkqQ2UnWLI/vXlQ7NaefwetdY2Rm/nc0jMt2iizOOdziF9+3Yw4fd3FwoCP6/Sq8orT42eEY5lx4W5bL33wrCexcbwvzqkd8JFLDz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz6XPxS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz6XPxS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758101993;
	bh=wCCYA2nI3sSOwgt38X6juXobOQZ9a8atxyuBu6hqdis=;
	h=To:Subject:From:Date:From;
	b=Qz6XPxS4wgMAmz5AwhezzwAiheT2oDfn38oWx9AZ+S5LTTjuJttoOzk34QltKfKAP
	 2QRZhLT+ToZff6QBR06dqIeB4zyrYwSXlpspJz32B8+bmksVSX95ygtzRMvhaLG3T2
	 sehD/Np8JKOfSiwws6ZXmIYHkjcE7QUrTwGcizpfDSGKTBD9LMCWCtYl6ZTq5j3Ktk
	 3zoYRbWYrzzrrRNAQmKL6YlB8yDfgC7oBzCGQNcPFwIhdm5MO15pltckaSZrvBVGMq
	 L2WTtv47ibK003iKTH8iDjQQdQWsZ5nNS6eotmWWTE9DR4401M6XbjKSJldRye8Ma7
	 gGFHbEf+FSBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CBCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810199359.16498.9403401210039287852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600bc0ba90cf5c1b774e0c4f0b600d0f115fb2b28891b70f5f47ba7177c96b2c
Date: Wed, 17 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758101993
