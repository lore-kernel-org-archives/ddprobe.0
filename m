Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4380D37C900
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425854; cv=none; b=s5Dg8RGwKuuEgxN9cjJX2oDcncZ7sXaVFRNfFR8uuedY1Fe4G3LLoLk3lIPlD7fMhA8HP5Y8SgSZ3Se2wBlz+4jwcU6iEKQEa+PsN/PlPezYoHuzLLBeNWNV2zb/eIBabkCy03KefMls5Iz/iaTyzelNFYpCDV3bjxNRHg1AlUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425854; c=relaxed/simple;
	bh=q9BXJZPZ9zwccagfts92n34nczet7LFOxIsyeg53r44=;
	h=To:Subject:From:Message-Id:Date; b=WMnn9jV5FCVpD1jCiFnAKxv184WSgasWdnpctGQDtWB9WAm5jrBo7VrZ+MI6ogJfrkTPg1BG5Je6imAmQmRFmMqiMGt9lvceuP7b3XPFCmh2FU6kWU/CFYIdxdXg7RtKpj0fTqpPVsfbLIWSG8ZH8N9gRMQ4ORuBNgXL/66TkOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guBlpLrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guBlpLrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA191C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782425853;
	bh=q9BXJZPZ9zwccagfts92n34nczet7LFOxIsyeg53r44=;
	h=To:Subject:From:Date:From;
	b=guBlpLrbUMMgzqEtZ/qqfDyCy2D2xuwqKWPiAlomuv2EyUy2R43EaldT26Lwvfg7Z
	 /OPJHgFP1TG5eDjQwNI1zI7dokr2CwAVmLUXIqg6W2oCoS7qACmCez60IZ6/8alNLT
	 SNSGAEOUHgvrS5cnA1izEc3vTixXx6jJGuewoH4AIN5DIshF27iyTXXTmle5l3TCzt
	 J8mrD7tiE4NgAG+pXzz2uVUmbtrqsxbMlrkCv2+l3JEJw86V+QGC/VqKNBUuDbrX2G
	 hjiX03n6pqLxgaA9Y2hsQBmRCIkoXWqSMjFA6HHuGFR3sAuCXyqOYkVpyCzoCO91e1
	 9/NJx7WK0ao6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECFDCDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242585370.8225.197741398151516292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9099475e6f6efee3bf3af7af77ec9bb732f12fccf92c13fad8b4bccc6c5dc2
Date: Thu, 25 Jun 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782425853
