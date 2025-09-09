Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2833081A5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757411394; cv=none; b=Cx4Tu9Z9zjhM+Mpp2YxBYZtp/otbuL7wsHxGySQLNC9y3Px61H4LdcCZn8DugrwpQYseMuRP5M88wz8FAfWLynScwdkc2FhKfeSEWOO7vlDjczXUDSZ7LTRBQgBzsRP1g01XSfU++trdebZkXIz+TCsvfYC2NX8LFpfUmu5ik9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757411394; c=relaxed/simple;
	bh=3ff17kA5WD2HojOkf32o6eS1z3nOQiGl7ericJSOaoI=;
	h=To:Subject:From:Message-Id:Date; b=jn7qFAoVylTTbUy5LNwd7SC4O9tPSUsB+i0lCgAlL69mRQiETs/oIT0uGU3kMZIUD1DcUJUHeboGRSx6Z4LQBwrleDTWCMtQi0vQZLbZ9jDGpoW2uZwN29ppqA16XfRpd+AKG7hO66nrRUSZ898R5ZUdQzykvFqvkV6AWFk6Pj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3jmot6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3jmot6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1334C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757411393;
	bh=3ff17kA5WD2HojOkf32o6eS1z3nOQiGl7ericJSOaoI=;
	h=To:Subject:From:Date:From;
	b=V3jmot6z17YYvHeBb0gJjFp8Er1uYUz0atyovRh4tBRCj+OnkkgYMGgwK/uk4dtVl
	 2LF/huKUdrrOiUxRNX5U3b8OM6Ni+1757l6ZQ5Mj9xsryUQ217NKEBD6Kd8sCWH9BI
	 oWGM78OqTS8NkJ/ilEW2nSucrOVO49IoFNFMdSw/Klkg3R2JcLdsfcMaZVf88tZLOT
	 V4u3i8zKkxAIr2aoijEAl54jaMbXvYMfF0JjtTRHGQYBxvgJCafCck47Rw4KaIZ+8r
	 6ScGKWoOLgEv1yOcDWsRFtWqN/LzxUXMN4ImfPRNuhJxlM0pPxqlRIiDptbEbCG8Zn
	 Z79xg+BUoXv+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A0CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741139358.1851.11980452013953522286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78c5d7b7166f99662b3f097c0b676b0b44c5c56f8c91fd25d95f3bbf235ea5a
Date: Tue, 09 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757411393
