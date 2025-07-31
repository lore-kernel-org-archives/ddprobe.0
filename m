Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625B224DCED
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753983594; cv=none; b=N8S4yquwUT7L7bLDVTnhXVwe93jSUPl//KmbVGN7sRvAABMKoPJPB7mjA7Xi6dXtkp2jBd8WdM7JwIWG25tCXj7RuGS/G/eInuOcpV7GQWpq7qExcrxcXHmdtkEKO7xPWIvLdv5wo9oYPOa1dLd99+0gj2zRFnJKK0QrsFP0SR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753983594; c=relaxed/simple;
	bh=/ZycAUiHyIG3IJS0UAxTs2ngiiPfk+Jme7yO7Td9cys=;
	h=To:Subject:From:Message-Id:Date; b=MhIOmP4s9IBKW5hMMBLNZZ6lV45TPzoaG2kdMG7oMyxYC+vyF7Sb88+yhyaGV5PdXB/OFILspfrysF1wPGBv5Mav4Ep1YHj4z6YV+IvR5phXQZ+b4V8Lst2hv1AThcnFS0Eid9OtXHMTTHi9WL4FWb/s2/4ZFjS9lkWOI/TWIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfLlvj8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfLlvj8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795BC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753983593;
	bh=/ZycAUiHyIG3IJS0UAxTs2ngiiPfk+Jme7yO7Td9cys=;
	h=To:Subject:From:Date:From;
	b=TfLlvj8q7OVYiluiLiXdrWGSHiRLc7FlMzwlWYw/fC2KvRU/3oaKCcYSXc5ipoy28
	 tatHPngCh3R0w65Qexipvb6iOfWo75pvLmI5Bt4QXyx45GDeif/vDYB9SHtyWg1BPl
	 fk92B287umcB3XUkiZMoXCGsWGKadFuAsvOIOSciy9kqG9tXV3n8FqCKAHe5aX0m0B
	 bGIyT1CCPRL3+3LiE2CeLXv2wTksDJiQJ+LhJxotimk2uM/zc65B9r0S5EWQhauXaL
	 3FR4YxwSQh9KNIALUgg2n5OTxXvICb0/vZYA/lzzTps/zho+Q2B6f3H0qN4lOg5OQr
	 X8/u84XOfhMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94653C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398359358.21125.12577101011885159209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793109f5e8142b85fddb277ab0400f3e4d6e549bd10a739182d9f5c1549095dc
Date: Thu, 31 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753983593
