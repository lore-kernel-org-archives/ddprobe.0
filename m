Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208D71DE2C9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757989794; cv=none; b=rLhq8qmy4jczIR5OfpXgrg7JU6KckDjIRVAU8FYLA8uAjCzCuZ57PNxBLj/thLHArtmhVvNSNC8pTHk1q6HxXpK2ROerR1JEL3wW0fxm8Za2fXwRVmYpMsMgu4QT9LDhqOnqlnz7H7y91pnB8h1IgDlaySMhN+3HBYkUPBXgyHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757989794; c=relaxed/simple;
	bh=R/qyz+re4X/2JEaSGYp77MCsinK2sGVcgDdSdD7hBMc=;
	h=To:Subject:From:Message-Id:Date; b=VFlFNC6M3iRB5riUGpqwCNXOeQSUa1f2W+4kQpoZVFV0JFtwITjBXRfVojt7zEG2/JOu4o4piFniU9FuEMg6iIjMN9S2B5SWUubUM7d8alRiKQ5ohowexpv0lgPnhKLzCnIybvrAWighEnAprzgF3ZFM7IljDRlbPqIP7I2MOxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVsIw3VN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVsIw3VN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4580C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757989793;
	bh=R/qyz+re4X/2JEaSGYp77MCsinK2sGVcgDdSdD7hBMc=;
	h=To:Subject:From:Date:From;
	b=oVsIw3VNOdC9TresUndFHjtlQbKq0trK077Q/v1Tr8EU9dfMtO5A77wAMERXm9avh
	 LC1/bQKe260ARh+QPZ2UNeeAydL+M7pNW+ZZeWePViwrfGrz2kiEhM1uLQMBJXSOyA
	 n0jWb0VD6S+XugRbpgPLOmfCthXbMav95OsZ4XTlir3Lj5+fShebF9xLJCpNzQ5fTg
	 qQVWOf1WZmWuyj+GenUMP7RfigDhq07RfrXP4xRkB0ByhR4gjzRbA/VVyfFGFW8swP
	 /kaE80Qnco1LUqWRJ8QDY9mblKTc1sBhQHmmQUN8TlT9kQVPcdnfzC4L6BH3CiaHG2
	 Aa8+cANcnfmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91864CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798979358.16665.6022810866896672866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356af04619a5deb04dc63047e7213cff042627af3a6337a442625a45defe0236
Date: Tue, 16 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757989793
