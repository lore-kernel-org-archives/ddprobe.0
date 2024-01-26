Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180651D553
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706290097; cv=none; b=nI2u6Eo6QKRuZpq0/eqiWJTaChhLV3sW4mvGYeMOwrq0D9G6kS+S46eNAPUy56dGd3eZsLftwQ2dxCe5UE7c8+cgC/ycjtYDCrkEA23ap34cd/ZmIVjoRVPQeIBYrZCwNnNMgcZPMR8CObz6FNOQdDJchgEm6co0EQ+ao8lttGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706290097; c=relaxed/simple;
	bh=rzCSD1RR0NoY9XPCEkVgyjCZPn20TX1e9AOn7oNt4kg=;
	h=To:Subject:From:Message-Id:Date; b=aQxKGxkHwdr2cM7TpSpVAw+EGXtKRQdELS1QApY1XmuUoW++PlU8muk1oZJjwMwi7NkPZ/eV22eZbhVapMcFjkqqypAwrMpMGUWFiuBASuWVbze9U9fzIgYuOU38IXEENfp2TyiLvsWYyE8cSx3eWvva8G31AXO37eWVsOwAL1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnCs1HFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnCs1HFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7650FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706290096;
	bh=rzCSD1RR0NoY9XPCEkVgyjCZPn20TX1e9AOn7oNt4kg=;
	h=To:Subject:From:Date:From;
	b=pnCs1HFH14Mxg8dnPA0BqUbheoGup/dTsdE1k99tK8rhb04FQrVEdtQlRnn20Cr/W
	 py+rsYrgXWamvXFU0Nia18lOP7J+eJU2l+v4rKUo68XBxujJkunIEet54Y+vthZd+T
	 eylG2kwAzAQtI1DCtxAcAJuTc/Wsza5MY7sm8qZRo8ROlR+tFoX+gCZx7dWAsUUN1n
	 fHfIjwemgGtlmyMpierWApd6XkVaFENqg7Sqmb6rNgKjGo52g7loEYPl0tMuFfC89F
	 W98hxE9WCngCRBaGUrfRKlqUsa/r60eQA30EhrEnAb7KZvdTHTbbrw9apkgMHqayiC
	 O2osaR8Qccfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C999C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629009637.16221.14919230117492779333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed977dbcdb181b54142ed47d2fe8a4792feca6cb9d5f4a61778559f9f6fb5275
Date: Fri, 26 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706290096
