Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF33745D5
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716287003; cv=none; b=gmVF41YxROPk2x0JYHrzHTx+ge9+Ai+lPGBW+KkcsmWDhAlb3o9Z+4g5zaMX4fvMV8CRAuyPoQQO2kK/5cQ5bD02zBQL8BHDuX6+5oAtUjE9aDbobIR7Ca6B9Lv6lGov77qh0PkCfxZJgM+Rdexb8snTfXeZ17Oz9jrwCN3LWTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716287003; c=relaxed/simple;
	bh=0ofJwwDN4ifCsrsDDszzajmMW/JbwJ+cAel4rIuTn70=;
	h=To:Subject:From:Message-Id:Date; b=kURXPgJu7GEB4XSPbq6GUnk+/ZN8Jb3A0G++l2gAvxuECxMiU3gnE/TWDCd8HM/p7L45aKeetmizWG2PLTJR7OUTJxnTZVT9WePskuFTYxc4m6TDJmCfHIVzWodrVNjlPbRI40mv+Pfrhs28XmC78o8xCjeUjurBNKA3jTcGy/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6G/q9BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6G/q9BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51DAC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716287002;
	bh=0ofJwwDN4ifCsrsDDszzajmMW/JbwJ+cAel4rIuTn70=;
	h=To:Subject:From:Date:From;
	b=X6G/q9BIkPOo9d7gYjZHXG24bLfNaWx8FddF6xlsSskj4Pb+QrWHQFwuJMoxa2TuS
	 TUWnSSfLQSCWlsPEDWqqup1wUo4pGEetTwkgICy51A4Io1bGEOUdfDvKExJAFYRB7n
	 yfhCT7dP4aZwUnIbPAfcJQOa/IWP8AeEp0X2/JKSNNb4M2L7AgYx/SiBySanx3TGQr
	 V6AtiWSrrPgojEmtc+L4Une7Eg+i/tH2OMRwL+QZ76jwhAU5zsl6muwzD1BvuG3SIf
	 TmkyW79/7u65gz+MxllSqf2rS4d9C1B+v8yRWUBDKUG8tQH60RXir6xyfUnWLdoTMr
	 fimQE2S8swcJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAEFC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628700276.7953.393303735803526470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fcce1c9c135bdecb1169a41719c11d69a1bcd4a6962d41ac6416702146c1f0
Date: Tue, 21 May 2024 10:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716287002
