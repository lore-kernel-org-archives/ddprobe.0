Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F6326930
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779006035; cv=none; b=bIZ0MCMZJfqdYRysfhpR3yuAveC4HnYR4RNQN+L9xtg/e6m+PryMpGgZD+3Ql6izfQuSCivwsfAvFpudmAYAaw+iw06vJeg9doYP4OJrk/6oZWJbPEmmGySAqTQNNhIdUvKnSjOeQ/5tUGOSDd9HE+wdelABuCnGYR+J0t/241I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779006035; c=relaxed/simple;
	bh=5YannPxddk05BJdgP6Og3pPRQJO3wzb5EQG6Yav6Lyw=;
	h=To:Subject:From:Message-Id:Date; b=bjnm8fkrLl6qOmkid+bI9UaPr2WB3sFRVK7nsnFv/s12ykV7vxVEGPoWTIRxBczXtExjFMb7R2mn+ccEBGsfPeTlWt1eyzmtLA72iJ3WT8rhqgGWiAR5+PN3R8R8Mp7+r/RHCeCgsixn5DBu3ZmMv4xekRVQ2EFCl537EYbYxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKtFXTLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKtFXTLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94C8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779006033;
	bh=5YannPxddk05BJdgP6Og3pPRQJO3wzb5EQG6Yav6Lyw=;
	h=To:Subject:From:Date:From;
	b=RKtFXTLrSZvZhjna9kXo+YAcFt5fvGZS5xEMhwtrnXVkSISxv2F5b0KI77E7cinTW
	 Lkl7jxAeyuwha1jwBfNjdoWy+IGFUaMoT/+Is01jXAesc4cG8XupbcrQqaFJ71khXm
	 cXjhpCmGx2M6+zporej3ChUzIoVt7+4FZDUi+SBPh89BcQI+mZ9jBSeVoAxdyXlLiR
	 1tIVczXOKNXQRGqGpmI3zsnfYuKxeGh6tI5Sez+uEZvtr/VsmlsglLujPABFnOPi2U
	 hpRo0TtAgriJsR1QNhoqADhUGggbCrOQLbQPBpXqMrp+XnXP1j09ArQ4ECZwxTY6WU
	 5yKCF3XHOxwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B627BCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900603368.12400.6845240592523012243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade8dd611ffabdca64f59295ace63a90a5561c6dc62db4207111d0abc0a9e6d1
Date: Sun, 17 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779006033
