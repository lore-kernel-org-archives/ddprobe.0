Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE992F5310
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750200595; cv=none; b=HDxF5MExu6hCcClkpNljhtz9xXLMgG4wJUS0y1R7Gq6YqKvW2aD/EQBtOzj5vk6GMUQB0kKj+tI2InAWGivb5MoUfH3Q5riMhG9zQOb87nJvOTPmcX4DXGx7K3HYBRX6UMO5bipQdA3ik4frYKezoICuVTeSkvgohvdpuY04azY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750200595; c=relaxed/simple;
	bh=G4Qbg58LnmkUTYztLVElN2vAVp5kBIeNIkLbeW+Vnqg=;
	h=To:Subject:From:Message-Id:Date; b=LDMbQrzirbL8uoXCXkDo9mwsTyfPaUuRDZN7WOcBAtFvuKVx6V2VImkAJEYXbhRn9YWmxrWkdq8aDYhMuzvoksg/mCeW3IV1Z5dFJ2D4QLqoSSVprCw7SJ1NL8HWdGCiKeXyhK4RlDdY07EDjHMXM1J82WVH4baqBM/CwNYczpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENQFgw99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENQFgw99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB2BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750200593;
	bh=G4Qbg58LnmkUTYztLVElN2vAVp5kBIeNIkLbeW+Vnqg=;
	h=To:Subject:From:Date:From;
	b=ENQFgw99I/C5h4mu4RMmhRTKg4E0eIBG/yKivTrMiptN7hlGuKtOEEQeAcE3AwahY
	 hih9l59mNNYhxpDpKtVtUk3m/gezYfu9m2Aq/tYFWUEllW6v+bW6C9eiCr8mGNXhas
	 RJ0GaTFUc8q+CWsWieOx8VAnrTu4KmW+vE29VoMj1awTd6NUoLAlYKU1a//miH3j6T
	 r/yKmmTfSYjkP6pbpUMw+sVLVcp+VlCiZL7bwMAcatAy7w+nprIRhDKAMD4JBEix7u
	 kQNLx24wvFwOzNuGPwN0XkjD9N+t+2TV3PtwHEVLhxoBm4IpTcYPdOjpAZaIvnYQT8
	 CREA1Nr7h/2Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E2C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020059359.25484.8335933839272599315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89ab010b37025e005ba5e1e178c3894e050311dd94bfd5dae38a81bfcbf8915
Date: Tue, 17 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750200593
