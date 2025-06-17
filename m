Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29E9283124
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750159793; cv=none; b=IT9PEBiQAXHXT7RTAe9FhC/4xmUqD7NpYe69w1C+Pobu8OYNdjI2ZZO2ZMkjgrc+0g3MAusZ1qLqg5iJO9sv4Zo8uM155Hqxy/duJ8szTsqH0xN6ABkt/nXm9wNgUVTB/qMgi9Qsz2OHEiW2s47U2pD2rcxcNd0rCQGqAXTCU6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750159793; c=relaxed/simple;
	bh=/R1nS1YCmBAD9G9GbWszSriFYmPiMJP601NdXsDyP5A=;
	h=To:Subject:From:Message-Id:Date; b=j+V9NfIzTht3cOItjpcuvUuEZFGFAHoY8M6VCfIX6UcJ3BXLzMfy1qE/syy+qCNO4pf/ftqBbMoJ2mGpg8rngoAsfQlcWoNN5KB28D3dNahO6C34LDdLWlYK3qyMZq6uaz2M4NNt9iqkpjvaRwvIUHRktz3EzQp/V60leLXDGtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAg7o4Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAg7o4Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750159793;
	bh=/R1nS1YCmBAD9G9GbWszSriFYmPiMJP601NdXsDyP5A=;
	h=To:Subject:From:Date:From;
	b=tAg7o4YbDLSQFjqUfC88YrcLugXtrBNZA+f9holgI0jkmAi69DStwQprauIE0mTP/
	 y66M+QxnYerMNSIrR/qIEcHo/QMuosEjpHCFuXW6VmCqTtnKMCiUDs45Q4HVlkPXr5
	 Sys0jfXBsR5aDJeggyQVasg9xISCRjRZgth3Uu0QdpYPN+XlWLHu3hTn+itXzOa0+G
	 jVFT0hOh2iMgYGUGNij5EborXzNWDn8J3PJiIE1ddPCzaEpAfk4Z776Uw2+zPah7bD
	 0NewK68trL4wjsdl8P48nESH007WrHcUWU3UwFPvuIn5qgaDa/egOYkd7pb8K63d5w
	 2BFg7Qjjnv3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91331C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015979358.27357.5827129252637196871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2a6a50836134601bd43a860e2f676344acc68aa789015cbbc4be1d94fe1d8f
Date: Tue, 17 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750159793
