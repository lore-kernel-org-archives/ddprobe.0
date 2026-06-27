Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0DB23394B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782562714; cv=none; b=no0LeW4e6o8T/NtvSRVDfkJgjAVOQXoKrBmIkzzRwsHLR+PfNjgxGq+G6Fsf6s3omDqRiRyBGwWwxxDTpenPwqOJ9WXqEVuEH9kxU0cCBW0biERFDS05ov+TPyegRogvFMfo+t0vMvXnrqBKab6BaEDnJceEFwsBk+2Gkhs3w60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782562714; c=relaxed/simple;
	bh=nVvN9L3Z0GojqG4mfqXqQAEp+qJezH+31Yq8EArne3c=;
	h=To:Subject:From:Message-Id:Date; b=TlEm4PDJ/Ymq9Ojv6d3Tyoo+q+g2McVO3wE6vooa2vRHJGkmTARxELRLc58rcnoh4iFXwZSMAwSm/Os17WwL2pqSLiLsgqWyDf0bv44GIloWpeEoN7QTrMxv9Jei5qVbgmAy8iPppNknPdK5hB7oAOtGSZni0sP4fc0H6cTJs94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4Mygegk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4Mygegk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB620C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782562713;
	bh=nVvN9L3Z0GojqG4mfqXqQAEp+qJezH+31Yq8EArne3c=;
	h=To:Subject:From:Date:From;
	b=L4MygegkhkcAVgsGoOEHlyI5vAzzdcUVd3YdSffhc2ZbIkOKJYTOlnd0RZJRjxZZe
	 NFKn1wRN6WprD8X5rdgsVI7V9uHNpfcZAY4eEWUEkyJY0OeWDWRmK18MDtrpYbchM0
	 4bdJ8skxAIkglOn1MLI0CNIQLKlRlrpMlKWKJXr3FWCRC7x6rSKjlal5EbfCmnOLo5
	 /5Ma+Oc7csBdQHAd2PXrnONsAWQrqqrIKzYAnNn8tdXJO4RVJ9t2NJfgbfF8FhzGWn
	 pdzVrXXu04FeYib9Uqt8wJE8iKYCWgm+R8HkI7hjP5dEKTYUWFDTJ3AjVyNHZRmXu6
	 9A4bhYtDRFC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B071AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256271368.18561.15904252171338138617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c00627575ca740d015d6868622a1c4842fd69c7e642d938b1a8f7cb25206ef
Date: Sat, 27 Jun 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782562713
