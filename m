Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099971E4BE
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774493694; cv=none; b=o9/WittCqt51Y9r6TnF839MYboO+aSGvC9ZjveDg7Gbc7skP+xrNuVNlnG1twjt+nHIU8N0TGuMVFjUyyFZds1N6vBrV0oXs0A/ks9H46FtCBRnqbaN8tfO5alGoQIfLTWLh+ghEanAG8xTLAQwRqpdSLE2uxO/bPeH4nwY0ZWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774493694; c=relaxed/simple;
	bh=lKAwaT9cEwrp4cB9NIJt0bQZ7jTWdUJOZhSX4lsmwVo=;
	h=To:Subject:From:Message-Id:Date; b=tBg5r4JSdIw3QsdK9wq6IHUnKfkHHqlYxwNRltAz42urv3quzmsjVpUFSDWldyJPYIh1pl1Dd8ZeUBlpJkqcpNrSaJe+z8BAOc3q0YTDFdyn6tlEfiAReIQqo53+6/USEzk8Jsotxddd9TVlTxhPhStkChphpxspwoXTtgTHKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjqwk5Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjqwk5Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774493693;
	bh=lKAwaT9cEwrp4cB9NIJt0bQZ7jTWdUJOZhSX4lsmwVo=;
	h=To:Subject:From:Date:From;
	b=Yjqwk5PdYY4A4V+DtIvBiT/RspJWGGqJAfv9usj1psVvmYGSpLVBoFEvyi9AO68AZ
	 ms3UrtZph5KzAnQgMSu0hXCk8KEG2rLnFJ6N5WQIUTeqYkWrloSGWDE4RsNzaTLYK0
	 VSpQnEaJcM5HrW43MVLLGzojmSqcIPWeMjsE8hKdiGfxcwCRXQ2Zt9qoZEOmbn4QVX
	 akDWO+rwMGNM3GWt9deZrMhzcQdkbbcQE9vB8qT1QuPhMVSZvUFuOq6VCScAfn/fTR
	 trtq3YOPOCASn/jtXcgIc8ZU0nwybHy5ItfVQ1KEtzzafMYuJDV7uh/QBecWWp3PA6
	 Cs7oarlIGZNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A10109E53E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449369359.13149.524835641845042551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c309f468d28ea53737f909978d7f6d7111a03869a3ceda3dfd2bf91a4a88636
Date: Thu, 26 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774493693
