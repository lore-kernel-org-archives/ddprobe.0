Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270741DE2A5
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757827195; cv=none; b=hyJd7rrq0gLK/c0641unZYxZJzIAca6nO1amOstMUpKxu0xQ3T5b+L1sbbJKIZx65tmS5gHAen0Ld6lvoAaVVeukedaC6XDoXovcerD0krWQmuhX1pIR1xmZZWflA9CrcAIstN30sLxGBMDCMb85ECSuvt9mO44d2sIGNYyz+hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757827195; c=relaxed/simple;
	bh=FJyOcfJWUzBdlZ/h5gEeNwxfedrAdTqTbx8PTjJYhqQ=;
	h=To:Subject:From:Message-Id:Date; b=fnXU7Lf08AhdYK9+UiRiTJuhRjOQ5IBkKuXEBfilLBgWLO3MKPiR0uiE/+O9hf/7i7vMDxuxT+7wwm3xw0h56w1z1GIT+S7D4vPrOodUF3XtO0OL8KNzhiVTR2Y21nXqYVBzv3fg1btTJmMORoC9x91oS04BAwMQsGRr0lINyHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idW8KAC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idW8KAC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2942C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757827193;
	bh=FJyOcfJWUzBdlZ/h5gEeNwxfedrAdTqTbx8PTjJYhqQ=;
	h=To:Subject:From:Date:From;
	b=idW8KAC7FcxRLGlasGoyfJZghz42nBiM+IwQ+xMe0n9OQu48e1kj4B/BBW9iQfq4s
	 9hm0OaVmLyYWDTaA8kYsMrHHGkfb1q+wvTCrwXOwTLR7bAP0QY3IY3vfndG77LDOEk
	 pVfOktfnj4LGbwQPsmTAJEz6dPpboqKS05CroOidgShcuB5NJPonU77XKpyItyOzqZ
	 MQUw3ceoXh3WJSSBbZm/NQmW7hs4rxTu+uvNUS3lebTKz1CRcXWZzrQEgitGFxUTIM
	 RkS+Fs75ZB17edy2bY5Xkw67E0oq9fmRNYEvRTkRyiqRNfLmScX3YGWRhg3oM506eh
	 UZT/y7gLNYq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91285CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782719357.6504.65276492574109991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dacb610c481e9d23f5c18c037c585d15837fb11e1f8f0b0abdc97c6a0b8b55f
Date: Sun, 14 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757827193
