Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20077E56A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768451034; cv=none; b=ECbDmQdmORcDK2tLf1+q2IFr4JrQesECziiDM/Y7Inc4d1pSvb5WBBrpmJo7DOg3yJioif53Jd60hF7Zhz3DGdL3empRU56d+9zcoE7wpvIhkMevxBd7Yjx/8/Qw7xvGHlk2+rq1hOexL9gkR2v1KmsiyB3aD2vwR/8XteIOj1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768451034; c=relaxed/simple;
	bh=GHkTLVplPFdfiLuhLDzbCOGR+53dv1xWb2+AUf3GEw8=;
	h=To:Subject:From:Message-Id:Date; b=mjeXMhhOfAiKBu17zQFfGvKwaw3PmqIjps0IpMEGUp/n2MpnhPEWJjElW6RMjbseJvIOykxXNwZeL3qMIn8ngkYBicfPLus79vOZeWKiJZ+FWr7Tm4bjfzxGVIzlZLAIIsyR8w/alup4N8w3tyw1n5nUM52L38zew1jegC91dpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgQyXRn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgQyXRn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAEC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768451033;
	bh=GHkTLVplPFdfiLuhLDzbCOGR+53dv1xWb2+AUf3GEw8=;
	h=To:Subject:From:Date:From;
	b=ZgQyXRn+wWri4NRgmwS9PKpFmVlSPHdYT41I+1+9/8iiBahucqqyKaVugtYGoFf3o
	 n8eEkn/aHIPqg022DAqenAtif7YosCOOYV0dPa9QcIFZ48/BSOlyH1M/fkyCXyw7+Q
	 7F4HxyoCeylGgdGXSHvy7q9v0h05WXrYGKUZFQvT7c7paC+a11qxcumIc9UbSgUDxx
	 RF5fR3XpBIOH5sfmFClJx3AKSzMuPC6KdhwICxDF2IaKzJ9GwrJL+y0p7VS8En7FSv
	 4oqOaJJZEPUTDroTlYp60HlH9jNcOaVu2I/CNZR5vcr5Xxa9nfHXkqpGSgXeBWUg/Z
	 wC5Y6c5PRi+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F522D3CCAD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845103357.24682.3679356007980923004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cf5534d951b2b1ed1bb5c0569dab45b59b99a3bcf8f3c75e6a8ef551586108
Date: Thu, 15 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768451033
