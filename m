Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060CB27FD48
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800234; cv=none; b=WmXmlB1Q//YIrOI9atMLVYnnUVX+yv+MyU1bcShqNmuYbn++/XJNoz/2G9Dt2QM6cfNZo1im97W/cYsfcE7PBMunUq4rHhGVM4aMf3qAlEqYEI5lEK+Skoc+G6Pny/RZGXOUDN1bwxGcP/r4O4YqVYvRl0jMUEbMgbQALLru99w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800234; c=relaxed/simple;
	bh=B2hCvgdQGjibyPDm3ToHYgQZjlq5KOpS4aSygLfaUHk=;
	h=To:Subject:From:Message-Id:Date; b=bxe6ZqyZwPYJhJINcrBsPQr31Ys7ZVL9Qt/feCY6Sxjva3GziT+OYib/cIUSMDiMgu4yQdp0AZ1pfBkO8/HlgHsEZI6+jD8EtZGXOBVQBpDz/ULnp4AsaX0gkp878LQ7iPGIt9CtohkGB+pyDH9NjLhHbZpqrpnWg2axJLtVA5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjNYW5j5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjNYW5j5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA0C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768800233;
	bh=B2hCvgdQGjibyPDm3ToHYgQZjlq5KOpS4aSygLfaUHk=;
	h=To:Subject:From:Date:From;
	b=bjNYW5j5RXZz0en2AUWhWkNbAN1kBGMyjDIkqqJsL+HP9+Kbxa9cxDNbJfEyw2a4R
	 vDNQmJ8caEigiDttohvPYFGsWthMSHE4wylYHTu08eYTe8rx+M5pLct55sh4Q5tPqy
	 sFdxYmQ8Dwe5Mq8n+Qx4BJR4wWFggoLekXijw7VPOqrUFKjUhRSC6lq85jQyY8473n
	 snkqCyfGtn+WVn+Ea/akJVCQEhy77ZKAuiHWyatC7o6dc3Ua7Mur24tGTyW9pGqJqb
	 YVdr5rCf9doKN6azTOOB8faAEkQTyVLQrKtxS0KAgCo2oBbTiTkMCFYA+NGGMFcfAe
	 pNbGr/9t5S8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D6C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880023358.3524.11818464690479144469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3daa1e5bd268130614af167c50aa8d4983aeacbd1b4c858278494aeda85dd8
Date: Mon, 19 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768800233
