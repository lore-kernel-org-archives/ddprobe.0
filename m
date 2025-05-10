Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCFF19D8AC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746919194; cv=none; b=DQjz2Zr0vdR9zfxxOqR+FyTX+GZeHE7AI6dvQ/9s5ycQsZ+pzwrIr7Sm7G4XWi2vny6TDFE9bN5/4YOSV4cWo29+4GLLSG+sj7gchM/qp6dfZhWqWaxRHsJUcUvA69ZLRKmKJqm+yUoXdMV51SqjD6zFOXIRPD9llplYTR4cUzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746919194; c=relaxed/simple;
	bh=UKwabx8S3OlqgPkL15RQ3yZKEnmfV+JCBEHPoBkon54=;
	h=To:Subject:From:Message-Id:Date; b=EnkNVdBLMA91pGscDYEiWlAZtazJ7BUp9ZYPkrL3dcw9NB3LsOWg9Sa0/Dam54DKtj6AkiMycUiXNjKmu6T8C082f9yKHDf2dIhUmy6zPGQQH4ObWwqbbwlMwGxPCRnz2ZGh4xV5CouRhMQlKsc0r35bR7g1C36ePJ1DPTCOblo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVoK/fHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVoK/fHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FBEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746919193;
	bh=UKwabx8S3OlqgPkL15RQ3yZKEnmfV+JCBEHPoBkon54=;
	h=To:Subject:From:Date:From;
	b=oVoK/fHkAQyFYb3uDkuCjRSBBWQ/al8Kx7KdgX9zsq1JGDNGbtgFW1d6ra8dzWr4e
	 akwhiFTXkawLowsIbZTkkNYWjhJWzBTST7zu5fEJHvi84UFvUa+NsKakzqOWIC/UOM
	 J7koXHYw+76ev+Lt1zofPEvt0Xyz0LXcE3RE71LA1E9oswizEbOljqatheA4XGNaqo
	 grtVK4hdYighmCqVzwi1dzLdhXM8nmM2reM8LSaK/KteMmYJ2wvyGfGIxL4h8Xr5AP
	 dfIbbKtsH6W4PHMqnfuZgfQxByg8MfyTPH1/0xeGA3fK3F7zYDXK7smbtjpJAuEczK
	 m8wkz5BU255Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BBC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691919358.27261.5501371205360535481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ed6fe6e13e37440d6196027eb59f875f33f7d8a7b1535e1307840898929159
Date: Sat, 10 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746919193
