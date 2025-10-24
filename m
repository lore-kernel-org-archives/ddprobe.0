Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7952D3EC0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761335994; cv=none; b=lR6duGicEYK/V6n4YvVjG1R0JP2CCasWfBiQsdIuk6j+xAE3dfn9t2exXkjY6oms4AZSuI2ynKXrYkci5clt6M9kiwx/6+zyqfRhE5utnN3MaO3VJB68R7opZApnN2ESKkIKNhrZS/cFV/cMKOxfUUczo1gtzsPoD4CJs8mGmcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761335994; c=relaxed/simple;
	bh=MqF6MAvQbYfN56WvTUMsbD7FkL2cGxkJMlr4Ry4xvuk=;
	h=To:Subject:From:Message-Id:Date; b=b1PX4O8SlkfA4qKLScqFn2naF8fXIWjmyl52KkL4XlkrrPTLgIw2BJ3st8zEw5ZDPeLXAUhuhWA/ILSONGLNVNrxeJDrudqpnRo7sEePH2hkOb/7S+2DVko9Zt/jfnYvuT01Y0l9M1tt3ZUx9IPz2p5MCXKkrcBtzd0CiSMR6wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMM1SrEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMM1SrEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761335993;
	bh=MqF6MAvQbYfN56WvTUMsbD7FkL2cGxkJMlr4Ry4xvuk=;
	h=To:Subject:From:Date:From;
	b=jMM1SrElbpBdX/fEp2NfuJrhqXRUDjo9OSrhIQDfnpRP1S5tu4CY9Y2ZTD8/73cdp
	 JsFWSc0dRIw7vMVU/hLkQVbu7CRBp9RLDsmLN6uzFeTxJyt1/I8EdRDpdWA+Arabby
	 40Sl131Qvnte7gK+iwgog48mkWy38n+Y4Jln8bXzgAIETQnc23UJ/wVIHcXl9zvt35
	 +PUhEweB5NDjan74AhtQCqjevPZ+cCuvMx0wMpa5fDDp36TGuiZllWxEuwpOmJL0+u
	 IC7SzDzgBqSa6HY6bLsPB5/O4D28syJL13NAKbEL7lYgIECcVk1FtBLdPNxxQ06j9w
	 eSTbqKgGPHtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDFCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133599359.4069.18288279457420459478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7892d5417f7a0d8225dc7ad15b1030c012806dfd148b67619b173dd3282dce
Date: Fri, 24 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761335993
