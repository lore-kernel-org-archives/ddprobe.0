Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C5A42C0B
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742155194; cv=none; b=R7Mrven/JG7Hbl+mXwZMTyhpI3Ai79I33UsKuAx7zSjBRZ0viMqIRmYmfSFdiba3ANCnNcSJcZaCA9dopakxHREYv4H0p15xGSMj3Mn753BbwVQc+0L9/JJOy6bWkM/B4XixXyrRdPy6KyQsS0zeNvmCb5gxz24awBLZT5nJ7z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742155194; c=relaxed/simple;
	bh=St3EicYaOVgQm+GOuhq1Gh7mf4CtEdhTfAQJEtuCxOI=;
	h=To:Subject:From:Message-Id:Date; b=dZUgt/lgCovtLodm/sFecdwJpDOg7XTcCrrUOmKusH1unwA18XU+vNL7oQUnbcATJHAfcS+Ed5b8PdzvdQAxGQd4E+TfdAFvoxkBads2dITTCozFamMvvfPphlBJt9CSXREyinWgE33VMEuL5lUZOOFjpuDolMu607AdEuKtPKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhRCpZof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhRCpZof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65D4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742155193;
	bh=St3EicYaOVgQm+GOuhq1Gh7mf4CtEdhTfAQJEtuCxOI=;
	h=To:Subject:From:Date:From;
	b=nhRCpZoflfeRqD+0bKYP7KiccrgTX9mkukDeOaBlyiHNkVZ7YLjgT4JvhEB6FrZ9o
	 1XhnbJx4ofiUr036ykQ6nli5l4C00dJOxKNCzEAfCfLT1ZVSsrlMjkWm+t595DXW0t
	 vHQ2VeFk3X/RsqK9CdhgSZLjl5kXJiU82fOU2WnLD//DTYjoMSniVjgtIvmEwBwp30
	 dvhVVyenO/iLE6odRdlnc/u0Qkxb1+T5BfvR2BBSR1hSM1dTYok/+oiPfqIcX9udei
	 kH9JWF1lj0EIlmdqgfrQT8CqnB3I/F9IHJ2vFDhpTcXqy+AE79+pW6EPGDccA6EXl0
	 3s4AcKxKx/0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02FAC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215519364.21676.14358777466775132009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be9b2444c6cbfd5e8cc001f271fe1e2cd1c1ac6901dad96149a72f1b69e6e4c
Date: Sun, 16 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742155193
