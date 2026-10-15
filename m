Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98941497B96
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792057234; cv=none; b=Hy7L2jioI1OKu4XONmcamDcW1LBuqWX3GbZZy8iJGDV/79RIGKDBUfzcVKoMIqIAq+TpY4+Tbs7I4WCa6Hs3mPbfPZ7gsO+kKblRPwKGlc13c3yN++m+6cRc+kyPFcNxYaI5i/Tfq4j9yCqHPHzhgjXDeCGAhsvOR2QuhlJkqtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792057234; c=relaxed/simple;
	bh=0lDIgJWZAYvxaXmbPiOnff1wR7R3heFpodXujlfmHKk=;
	h=To:Subject:From:Message-Id:Date; b=OycXKKjWwm1kOOMlgQVrnS+lC9IjYg/+004LVF1NKOaeREIatE/QdNjF7QM/zSf9y+pNHQJQb2X6guclFeDw5gBmZlO7igCu5JsXhYx7XTbqnguKyWBVJrY4KVn7xFXx5UVek/OZohT4KNpmXoHTLXu+hUYn7OWkWzMROCMxvNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw6XEMy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw6XEMy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF93CC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792057233;
	bh=0lDIgJWZAYvxaXmbPiOnff1wR7R3heFpodXujlfmHKk=;
	h=To:Subject:From:Date:From;
	b=Dw6XEMy4y6y5u0oBwkhb2/b68UeUUbbleT72LNH2Jhq5q1QipAAoPto5kMcV/IGrW
	 zDl8Tl9oT3iF2KMV0ke7kGlUQxrr5woDpx+MGlxejqtRpdXKISqODYnMjUX1b7/sbW
	 q8AgIZ5nHUpK2YrfLA6w6IaydaHEl6Zp8wafv81X+BR0PtGcS68UCroyaOj8VHqAJO
	 Sffx6MU6L9ZayDVbTzkMxWIxB3QfslARFP4+bKLMYBnEEc74Kms4b+IZC3INiNwwQ6
	 k0petXChARNRZXHsV8Ur56KJDf73VIogtUHsX+7wof/VOVTSh3yyV1pqa2v2oXaRnX
	 /Ic2zlKk6AdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD07CCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205723369.14798.4461557901048447277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542aebaed0644a03596b06c4fab8f48d2ad2ca881763b0385e87fc288382407e
Date: Thu, 15 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792057233
