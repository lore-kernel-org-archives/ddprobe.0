Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD211CA9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717874243; cv=none; b=VyswxfRgQe9jA9zvuxm00ABrAOQvh7+HJXSwSr8JOTmWHLCjOFcyzRbVlYXoA++NCuxzCasIF80rp3VtqG1xbQvln2ydf7NqR0nVeVujEMvYesekoHT0TNMrhS1q9cdmmBagytx9vwzTyUGdmwRB4w3m4UVbB0CJJeDV5PpRW4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717874243; c=relaxed/simple;
	bh=V/gheV5SkCM5D3uAPW0wzN0KG+d7c242uHUHqy+9WpM=;
	h=To:Subject:From:Message-Id:Date; b=rYtobpsQKAAaOPm/N7ljNn0RsyMUm2ZNMTIdELMQM+IAdm/GxG/kVajr5YtA+WibUPKxUp86LkoVDF68W+XsuXtlYqkO9iNGPymeDU8d7KMeOUYqakOaMh/7HQFdNZZC1fVt6y47Yl/Rb0/10DyIqCuKpiX0Fq/EO7ZN7YLIeF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjP4O4pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjP4O4pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D138AC4AF07
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717874242;
	bh=V/gheV5SkCM5D3uAPW0wzN0KG+d7c242uHUHqy+9WpM=;
	h=To:Subject:From:Date:From;
	b=QjP4O4pAsmELseOexwi9n1JPUIp9M7gfRva+JvZ5QzNpIZzbjhY1wYdZkZSOhwlfI
	 96AOpDLT41h3sLXNvSCj0sFRGmK5Z0HgBsv4N4lfjwR5Q8Uqvu83BO7fXtQvhRn1yF
	 aOtbQI9Ob1wybKG3s8G++1MxaJcHCpFtqWvZygwOARWUD5TqUz7BTIis5Ri6+HuJYZ
	 KjB0iw8nvclhREiuWrB5AICZ47B6EM5RtfAwbzR7B06eX5Jbo5eUV0V4AelKG4AOyg
	 YVH4+8JfKOg7cAeCYKh0iBxLBaZ6JfsPDsECa+bwDmpDJ3W/xmaT4xB0yP/PnuZ9/U
	 mFy54DlJmzJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA01C27C6E
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787424276.21850.5683369840234268433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb04eda75435e948a381c2adbedebaa04cb1188f4a00f149b5e26d0c5f65995a
Date: Sat, 08 Jun 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717874242
