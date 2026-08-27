Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489333E0C4A
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787820634; cv=none; b=YOkXhBTZJuBWQxZAZ5RSNul96sK/VHmUSXOMXAmQCsnIOuWFIuCmXmCBzS1ObOjrYDwzqaz73o4NQ7ryeAQRQqVYEhtXK4QzzuNyxLmtveELVjxCvh1MclLGAzZKF9PJv/TyJPpcl8q5a9zI9m7arc7N20tCTWQAq/JrqvCWSIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787820634; c=relaxed/simple;
	bh=O2mKEM8aHKdEjFA8vUndZPL0Vv9QjFfTKnQ/0Sot1Ck=;
	h=To:Subject:From:Message-Id:Date; b=rxXnTbFrq4aZZ4rfW0Vhlqlope/jqB5Qack1TBUvEd2PtXAHrKvEsdC7kTba1UpPeWoCWpsSBepoXchIT3HBd3c/VQSOdsKI+BXd7c7LKltiMwFq3AuAuNEwqGDn6xQuLODImIvZ1LdC71hkke5TIVzpq7euk3u2boXd/nbgMqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgRD0m0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgRD0m0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D458CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787820633;
	bh=O2mKEM8aHKdEjFA8vUndZPL0Vv9QjFfTKnQ/0Sot1Ck=;
	h=To:Subject:From:Date:From;
	b=TgRD0m0CBsj0jBC1TtTreRjqkR1/aWnqqRtmlzas9my9KxqyGFxQNSPgQCUrWjf2A
	 Yn4QvYuKhxHlpZ9hTFfbysGyAkld0CrC/6qVdSJk4u5FwoTh0HSq3P75Eas8iQ0D7L
	 aGd7JLufXq6hoWZsyRcOOsZ9CPxhNUkX/cLLbTSNEfJHeccn3H8eZIQrYfP+Y8XuQ5
	 W6XKcemqekyxToayLz9O+491xq5q4tskyldC03/URCiHHzH5QzArfEdALN8slwQqUX
	 iUnJSYpMrV+WRJJ5XbImt15JWAxGTdU5SqEZigxG1j8Hrv766h3NrkxgOburu2u4H3
	 sGlYWAozn26Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058EC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782063371.4000.3217186464405892338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aae562d75cdff5edf82a20361c6e75ffd8900b133c9edb2813786c6b7f912a4
Date: Thu, 27 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787820633
