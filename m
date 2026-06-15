Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C84C18EB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781565394; cv=none; b=n0+LUl/G2JdJc0SuE40g/vExRYxTrd/iMXBuxAEWdfPvbl6qSzwd+cXC7KDt9AklL/x82xrmKduSJdee9FG7UdMI/4IxA9tf3qVU5c71tA9EzSLgOd7kiML896K1kxEnIemahu+vJhEZ/i9pG98zBk6wpVW+prk4N/aI6eSkH9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781565394; c=relaxed/simple;
	bh=sOKZP+Ced4YvMtbpVt2cidUvJKjQtWhpEQmo/O8UKQM=;
	h=To:Subject:From:Message-Id:Date; b=Hrza07HkSfPjyd3HyE7/nseKmkzXK3ZbDo6mrmN4Q1Hr0nIomE22GXcGTiJ8bva2VYoaCeCmEUwk+W0pLeKuo8SApjuSU86K9syiLw8yzN30miP48/kQSNj1rUW3h+q0EOJT8sCjaitfhJeUflqyZy1wfcNLPZO9Xn7jLHhBQjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSXbIyZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSXbIyZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD7BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781565393;
	bh=sOKZP+Ced4YvMtbpVt2cidUvJKjQtWhpEQmo/O8UKQM=;
	h=To:Subject:From:Date:From;
	b=BSXbIyZcsC+puHF9kXLiHjf8h3E5WZegVc5QPX29pUMVAcO58o7/OejSPlYfGZC98
	 jx4pTmR8tjnGM85VQxgwXKnROQTNit7cTvYe4Bb3T5eYrrU5e80YrMgMaVSk+ymjdF
	 jdqLy/6rKwsHOZPN5K8n39Q63j9JBAm1vMDPkrfAosEU89Z31IngNDb4hewXo9yUe7
	 LdXuBe8EDpI0STZWWgvAjgJP6BXIe6xG/PTLeUAPSaD76pTmq+84QoNA7ZNemU6Byz
	 X56utA+jqCfIOWCtrjXqqeKtqrNc8dvD2rhSrbdEE0sYMHrpm2qbq9QF43BDrd8FL6
	 xk/GpnGf+SSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD051CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156539376.12380.11582978342637357354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513375b1f2813193726017c91ea4a13d5a7553e41d657af6256b3fd6f335fa50
Date: Mon, 15 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781565393
