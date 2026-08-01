Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6043923C8A0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785565234; cv=none; b=eUTnJ1kqpgY7k9dNjvYTb5ANs6ft7J+tsFjiaMS+IXZbVgE+uBBy8qIL+rjpl9a3Kf/w2gLUS1NdhUf0d9aQPwfXwig2XX56Jzvi4rKVDu347nAwnO9f/2QOovZ6QCfyNa06DVw/Zs0hRNNTVOWxa5FwnepScLGPgShR6ZmKEj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785565234; c=relaxed/simple;
	bh=0SCb9i/0AG0kOHFFgLtYLB4pgRHjyuUz/p9PI494c4M=;
	h=To:Subject:From:Message-Id:Date; b=bwOFXnDnBK4S4ulJWRYuh98B7j0nv05OTB/2GInBkbeQZAqiv/oaEPnKLIH+cdtU+ru4RG3hgbl1XzByqCoUx9fvzIxY+A3/2XVO2E+8kvhZKcOdjuc8j9go1Ve+TnauwPMZGCpivtAMw0ogNxi7olnm+2qe8nw/9NJql9+LlaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeqH2bJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeqH2bJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BC1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785565233;
	bh=0SCb9i/0AG0kOHFFgLtYLB4pgRHjyuUz/p9PI494c4M=;
	h=To:Subject:From:Date:From;
	b=YeqH2bJGxMSXHl1S8c03dLuCeln15QpJNNuiswlh7alLVjpg0FX8Z3M/v25PPKoNn
	 +zTE07Xu8IogjuK89zW3w2u4/53XLuwsa4z+wLd12GR4RpPeQ0gPU2csRfDyKEKc6o
	 DMcw9b7Lwi/3IKI9M4NE1T6pF1+3hOiF4HOP/avHZ/2pKvS7+R/pJRKLOp+vvLRfq6
	 5rq7W5RHGFeoN18gq3rkxLPJzRGmy7TXtf+snOinC7gOH3nWbTfpS97jgO5LHSZbup
	 wW6nHFrHCdnSpZ/ngtN51aKKKOWoCD8uORc6LHKwiW5dQlA4+TH5jLGc0EC4Bdf0kq
	 0X6muYkPOrt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1C9C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556523373.4168.15727806194322809457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96295752ba51bfef0456406fc4a71cb43f0cda480bd83d48b8a6374c61b6fdd7
Date: Sat, 01 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785565233
