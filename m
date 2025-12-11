Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472881DE4FB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765494174; cv=none; b=MHo5mMuFlGfdYIanyNi34BvZrHItRz6ajRszqG6IUTO6SZYn5ErAZ8ByZu5Q7POsnyLFZ4FfwxJhrn8uFiO/YaiMlb+wybH/YzUrp39kJ/LJs00N0KtG+G/z/AOv0lNUT+JQ2ObRk+5/qyBiZupJmQMzgzfR4zkWMoAYrZeRPyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765494174; c=relaxed/simple;
	bh=CWV6U7AJraRnlc+OZJl21EG4KUJSV5huINN1tHpMPSk=;
	h=To:Subject:From:Message-Id:Date; b=NfU68tibTBm7036CfgTVKbxgA7OjVA9+/ySG901x+jgPPywQFPSFg1rlY9ypoiDJhaktmdWFfH9IXFs/Xa9FzE0BRr7GaS2XCT+YETo7WVBy/NKvtyhp9xKNiA9id46pZrKgr7+7YTThlsJc+ZU7AvWuKqTbigjZde9RQxghqSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9YdvibO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9YdvibO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C148CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765494173;
	bh=CWV6U7AJraRnlc+OZJl21EG4KUJSV5huINN1tHpMPSk=;
	h=To:Subject:From:Date:From;
	b=G9YdvibORwsnrLprBTJm3y58+8W3/g5lNFlLd0VM3eCQh7Ja9h1V+txTwBWHm8qAH
	 nn/5A9mQ7rZjPJqabMmmtsbMyEwXUVnIV4bl57BNSntMSfA1psjuRRBoe/e7nlfuW4
	 ctRRMMf5gHZKr82yilzaNtpToWxa58VWGiDjaHPaUE5UqxdXKxtEYAmB24y0B8ULnT
	 X0LsuFZTAZe9B/zN6rMSPGuEAvgsyu63MPUoXajNPyt4ruMiqK5KVIEikM/ClfzGn7
	 ZUbtjlTHHxbwYvIsIhsbnJ8tnWTAet+54l7cdY6ZFTvZUQfOtpVIvUODopzYFBueya
	 rSw6Dum1sPL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38EED4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549417362.24497.2279033017121821467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f78ba8f2bb9f68fb6690a553e9d850ef319c071df251a77639602dcdfbf0b4
Date: Thu, 11 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765494173
