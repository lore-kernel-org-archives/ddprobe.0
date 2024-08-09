Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0715416B384
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723181154; cv=none; b=mHV/NAZSOlLPC8CrAZj90z8xltDV3XPqZqnjqeiUIss9E6OQhJgJWt0T6Zwx/zHiSxfXX18mZ8a3F6tgSb6VjPp/Ds6tfQ7B4rWaMROePh4BVISeo3Ju+OHqokLkpnMWNz7Zdyq3pix9v6KOJ/uyeLhIRgO2Gw4k+ncbcIyCLVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723181154; c=relaxed/simple;
	bh=ut3fnXuv8Yqs+TtTW/zb3o60d2ZeY+uxyYjwhC6AMJ4=;
	h=To:Subject:From:Message-Id:Date; b=Q9maIbf4KUgEeD3tltR8mcOmy3Q1DUT+ytN4QNIUVQl8WsbQYTWQ9jtCfF2hPUb96Oo2X2jBKMhhdOfx+/VmwOkyYI7bKOpKUhOi/llvonM0Ot+ZX3Oero6fcC88iBJ4nCrR90nqMd7nn7GVdU6GJF6yPvIlJIduosmC4dJOq+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKt6sR6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKt6sR6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B81C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723181153;
	bh=ut3fnXuv8Yqs+TtTW/zb3o60d2ZeY+uxyYjwhC6AMJ4=;
	h=To:Subject:From:Date:From;
	b=NKt6sR6kx7APp5LbgKtGYEhqLyv6LuAGj32qEIh9XqILFDGUfU+iwkk9ihR7BByxT
	 KzLTOmkI1vFomWK10BAwQgxUGk0RkSzA4szdXwiq0oC9ulnwO1bBk1bcIhPw9RdkTa
	 oV9ODeU8uGho/8qJ90U2woTuTFxwHUk6j3v8317HSEFhy8zuow1+mi56kBXP5IuTrG
	 juTBoaXdZLg2p8ZS3yUmHvEzxkFejkAbZgUiyp7RJaijageRxsls2ymvJ0tOBpquy8
	 FBLtgD4tY2Bs6gSkDm/gw3zaEZwVxj1tbsosxOg6H0Lw1W+2loZ2A0fouvzqyBx+5d
	 mAwTU0LajbO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADBC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172318115358.5529.5509774852746619117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b9a3d37dd9de6bdbe4f9105e3ea3a90fbc493bb4eee735a10483d0dfda0c1
Date: Fri, 09 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723181153
