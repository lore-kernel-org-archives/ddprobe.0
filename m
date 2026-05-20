Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808126FD9B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779287434; cv=none; b=EeesESRDBsPGMeyXOpeGmvOUvihhwSpMjWu4QoQhpuD4FmAOBVALwnLY7IY4erwTlgm3gU5Ql9uUtP50byyyLn/60qcelolBh06M1BSSAcc/hkoh3HceoFVNUykwZdCpmPPDtGgx2iXIiw54o1yp8veVAI3Av9SfwpLBsJh39Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779287434; c=relaxed/simple;
	bh=wq1uKMPCzUFaC+U4JwfLHkBWvTrDDQtNap5HSf+7lng=;
	h=To:Subject:From:Message-Id:Date; b=no6+kdmKzNZ2sbGTwAgZDHBQ1zpzQeDehkRRjeFEpExb8vkRgZusuQAq5/fW8kI5EHzoXLwtsxfPf8QRR5hUvrcdVEi6GYNvsAcZw1dA0rItONVoExBDmX+7E/yd8rRIddt6oDEpaUaRjemrD5rQW09NvHCi9msGqMxJJ4JugcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wk0aOTml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wk0aOTml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779287433;
	bh=wq1uKMPCzUFaC+U4JwfLHkBWvTrDDQtNap5HSf+7lng=;
	h=To:Subject:From:Date:From;
	b=Wk0aOTmll4Fa7iMxYMYtEhgx7h8FFgOoXOzQ4QtHRseXggI8xcSXtGXfpClVc2jRb
	 sL+XNYQpuNdmyedFjsIg4uO2jBpGU1tmm7dxwStV7kQ36rtjbYwDa/nhOMDvGKMv8y
	 jDGxJ9+d4CwvnR76/7U8TtZoFUChI5sr+PkzPz6xqYINT4Wqi0C08CUm4KHJzzXmGU
	 Pgg5QapD6egFZ05E0EiPYhKBlS0ALsOBWXAmld9yM4LqBIzyedLBCW8Z/v2lvTPGea
	 hhNzy2STRh8nNqrhiKbRZd8TKUR49XpE8sQVd234lmxw+gNFWAXQDETo2l3FnXZcGc
	 5vYdWtyO4PitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D1CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928743369.4872.13110743623190209784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994139a6ad1aa6222d7883c4924536dc9a029ed9badfb10cfa9cdf1b770b1b6a
Date: Wed, 20 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779287433
