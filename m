Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8D3314B7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790131235; cv=none; b=jbyxry1RGRfcKEdLxjbrGQu22Ch9XTBSgTiIq+XLfJFU7DFE7Nn8V6OFTdevMABE8pSL0xus9jvwAjesNETLqm0Gii0lXbtKboiXs19um9nKhPRiMevXGF/NCWQyTcU/+CkHH/TxSFsSMQuSegV2Jvu0LeCRrCVTRQexYtgfbCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790131235; c=relaxed/simple;
	bh=//T13COoJc9MQ/+D5g01DJkKAFUCxJVjKqWYDeGQC1Q=;
	h=To:Subject:From:Message-Id:Date; b=ZdWDiaUyJLc4CdZyvRUaUWcMgI3Kw6drQWw2RfG9mJlA/fYgkW3ruyY20Pw0MchOe8RQTz6uPIA0tgmA6uXcAOxPme942+L3wKHJzc7l+LjHecNpQDWjbUnbaUoAAwL/nZq0lglSo/rT27jVoGx2MuId4ilx4A8OEA/UVHgNPwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrgVM5Kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrgVM5Kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF772C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790131233;
	bh=//T13COoJc9MQ/+D5g01DJkKAFUCxJVjKqWYDeGQC1Q=;
	h=To:Subject:From:Date:From;
	b=UrgVM5KbpXGnxVknKb+3KFfaZSqnJSjmC3Mt3Edxl/CFh1JmCvaOPNdcvJ7NkIzOJ
	 Wu8tkUv6Uspu/TjdFVJdWwKXJxc6Vw2MJqwoAZN2jaNf9ymAE40ixMPsiYG9GZWW8+
	 4gzgQkN/M4FZ+Zw4OdrYvaZYT72jRn93lY/4ldFbRCprZs1ZXXh66NJXnBQy8p0or5
	 004LRjSu32OMa+Cw5qjRa1+XI++Wz8c+s4WPwFN0TOwWIbspN/F7LRJ3LTuSg+6+kH
	 TYvOQrid/13DVRdPFG3UHWXB0/1le3pisUod3IItKzNVQn9otA/sxjH9wxkN/StWFX
	 CqWLKVh4avd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7628C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013123373.10165.10043175597032535519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05120a4bf50e545850d0b72072300097066184d07be1b51446cae298bbcbdef
Date: Wed, 23 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790131233
