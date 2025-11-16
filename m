Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB612D9780
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763308313; cv=none; b=c31LpBZzC0CP+TApmz3cVa8ZCP31AXesWe5bsjkXNyaoGD79dzSt5xGa+DoLyAEJqwPRjlHIxsDIqSFQDViS8AFI3XWAzZwLoUuGD8dKQsCaN7Clcn8OXE+xEppm5l4HOhdIU8YPUWsXQlDNPIVR6OyAh9xo+EtxivSLu8olTzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763308313; c=relaxed/simple;
	bh=orEMtgJvcNtinwmMylfTY/GgafktTGzzo91YWJ+lVgE=;
	h=To:Subject:From:Message-Id:Date; b=hxSELHXfjXe3dI3g4Fg9InDVWRHPXm2whM8o43BRkEwEryI7id/qhIp+YXHSKdXMquwgVgDZHntjMqYtZr/rFLbLdF6vM10hQsQd0WMibRsMvTTPweStOR/QhsunkQjdEp3nhuStqIIlb00ZM8fdzdPIwWlofkpl07PnwZerHFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAkrhSNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAkrhSNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763308313;
	bh=orEMtgJvcNtinwmMylfTY/GgafktTGzzo91YWJ+lVgE=;
	h=To:Subject:From:Date:From;
	b=XAkrhSNOgC8xPIVNC+xJksW+n4OfgGNr2LqopR0nnAx2vnlrR3Ul2VLqJTUo8KTNB
	 4psofrO6nM1LzH7JboFpGhqsIWxk7svPZTRIziG5vD0fzHwlHtoaQZA2iJnju7eqbx
	 l+1sZoW8O+w3H1G3VqnY0Kt1EFDLUQ3h2xpNjYjrERCWiQzNomGl8TW3rxSyTzpdpV
	 0gyHc5mTPXpS84NBihoKnMQmfvXMno89RmzoUVJAVn/e2C7cOmVg0trM6EzZKQurDy
	 yvclIPuDhf0ayvoxpASc8A0uJyGBydS87VGRczjwnucY6y7I66wodz9n13ZNVZqED6
	 hIdTw2G49v1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94173CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330831359.6562.3951170840895325802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a0f5e973de62c03aefafb300eec850aac2f2ab34b5e931852bd91906a45f97
Date: Sun, 16 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763308313
