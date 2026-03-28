Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C04719B5A3
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774683894; cv=none; b=a8YpQdx2T0svn3GGQivb7bcnJDG6SyzLQUK6EQQ8kkUYWbEdUonHiYzFbTlsLogWZoF1S1CvOxKObcrCAo1xNOJqR5CBeg0JEQMKUmdCUnOXVZZ0Wdp/40waaEmBiXPGprTWUG4rubkw7KaNn55nbdNknTi8wInAkcvxHxKgVdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774683894; c=relaxed/simple;
	bh=U3w+qh4YodALyxcZO+7w/52UmSiIR4GFFxYoYhuiIQ4=;
	h=To:Subject:From:Message-Id:Date; b=IuR045OItav+Wdml+c3pZUAOCmBA8+jK2sJn2BH+qBF7JoTn069hMPX1DD+mAuKcuDtywir6YcBJnudob9QnB/Ag+amG1A7jl+2xX+bb1XefKJQUhKtjN0/cgHC/jxqYCtf9gm977leiTG6hr4PckJA5JG3m34xmQ7NxGoxKJKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbkw7hlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbkw7hlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB239C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774683893;
	bh=U3w+qh4YodALyxcZO+7w/52UmSiIR4GFFxYoYhuiIQ4=;
	h=To:Subject:From:Date:From;
	b=nbkw7hlS1AiDZxOKYPtgeffP5XKEI9f71Mzi482TTo954LmpgNeaC4a1KsAxkcOcj
	 xh2avFoX9/0uNNYa/NV7aWiZV3YliAksYMGN0uKov56yyQeela8JVpHfv7P5SQ9d6c
	 5NlSAMhhx8u/RCo3mX19WHiLCcGTPxYhjwRcd3uGz5eeAHiqfhZfDRp1yRCj0Of+J6
	 EJAUv42Sx0N6cg99eJ3y88rByB46+MnnswLMCDOMyJVzZw8XczDFaDDxNEEMlBYLLd
	 +q20eO2kwQQ9uYUJClaD9RR9nUV8s2x5qJzNHldXw+KldMGsR7nL0mbS5W05AkcO6+
	 +ZAkaGLOk+F2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9415610BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468389359.13549.6358309485246032156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53637dab3e6c6ee88787eda6a598d41619e2417d0878a46d0f67f0e22e041ba
Date: Sat, 28 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774683893
