Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC722FF22
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777229854; cv=none; b=l4p+ymzpytCqadXC56PvKEJQbL3OLlQcEgKOa1l248AZOfYpjZ51r6VISzbclU2YiuFvWcfnKi7yU5Wa6RgkRmkoltcaP6CwWx8SaYxOjdceWYm3hjuBOlYW1QGjBujnWiJz9q6yOJ4SJI20AElKKmkTN0xvrZEaqmZI/CCrTKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777229854; c=relaxed/simple;
	bh=pKhOaQ930Ugv/G2hl4tMoNHzWcKKcMvNsDc5ARvYS7o=;
	h=To:Subject:From:Message-Id:Date; b=Z4kr3pC6a4t5FSNbNHXtfh2oOMlO71vJ/CcfIasWDtFi5mD61pD6cCIvUEuCri1W5cS4tcvDt6Ny4W3YFN6wRp5tj7B2nMAZSMXCombDbFPigz3qr1kLaDxd3KwnzBBhabKgDuY33DGQxPZdEodgGAT3gk4KfaJt9NuEoEx/ZkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HboXy4PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HboXy4PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAFCC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777229853;
	bh=pKhOaQ930Ugv/G2hl4tMoNHzWcKKcMvNsDc5ARvYS7o=;
	h=To:Subject:From:Date:From;
	b=HboXy4PChnsjbgNXWSaZqAi6tmv3WTg5qHyl5AahE25zZY1NseTnMgP0aDmgL3DvS
	 ydRgm3O3ci8u1lgGHdZCS9vBNeuVIT0KwiXs182nkjeAU+SyqlvQCz06bYSYhHFs+X
	 r/SMO07Jd9RkCWfTfrgnttJWbEXdQZdPTl0FlWwjB+40vl+DOkFQAPwOAPqWSnK464
	 gygYjfwq0iMnxT1S8F3pyksndWCyxz2NkVPgpiburIJhtaQHvvt4zFPq0q9fiswXhU
	 +bHufLEfnZ8arn025iNZ85A3OFxWuOGHIuEW0Co4id5FiOU/Ty5OVbvOyJn0HHnAHx
	 yRtvdQlwSBvtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEA5FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722985369.5168.16972177614574655132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec575b4c05a86723280b494caeb47f106087382f4f33a517be49d7aa8fec86f1
Date: Sun, 26 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777229853
