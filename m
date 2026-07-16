Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700A38889B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784230715; cv=none; b=R6qzedifwapwMRsl/GYB0oRqHDEDRvnwBROo0lHCuptMwTPDtl3twSe+NQf5PKGkrViH2P5HHbV09e9u6trn3YlvwqHh7kVxDu/94Bq22+RLQgxJ3SNKE9Fp5obxRup8UQ3Zn4oqv9D916Iz5EZV8Xeu8rEcnyURw3tuqCmb50A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784230715; c=relaxed/simple;
	bh=r+ftjGPoQiBnHdch2dFZMPcuiUL+PMB1SJUQbDgzgaw=;
	h=To:Subject:From:Message-Id:Date; b=TH9hIsZm/n5QX7PJh1N2S1D5HVwWBfAn2CS08cQkHZCY1JiNB3Udu+ms+v1yThYKaMjDXBSFQ1w2Ut82YQUeXDfefnYOEnLC27psiCWksz73WnfGJ+SBrlcSH0TvJhM89DaU4PqvEi2sMcetzUS/HU3ZPwRrNycDZqEPgPJPjKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWbdpHSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWbdpHSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB031C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784230713;
	bh=r+ftjGPoQiBnHdch2dFZMPcuiUL+PMB1SJUQbDgzgaw=;
	h=To:Subject:From:Date:From;
	b=XWbdpHSWR59AxeZkArXkzn/tZtAqOn2TnGAh761jtu/0Z6WRXQ32Vbuo0+qFcyFZZ
	 2eOcCxxipiWvm5eg69EF9iIVE2r07vSgGWl+6vmQxnYE5IUuMK4mIn7yZegZjzsTAF
	 iEAMlmQJ/laN2R4fZKl3oQPYHJnI9mcp/gVIqS7NGvynvWjoxis+tadwDREzWdCbP7
	 gK9x2C2q/bMBT/SlF+/1z6L6CtrX+YmpSfRW2J3SiD/A5E2XL3etTGL/usZ8725p5f
	 ivkq8y13wsNRWpMSMExa+jyQSAfoja1Tr2uha4X03VAv8v1kfO3OaoxRqoiZYuzurU
	 m37mXhN/z7cVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ADBC44514
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423071368.31950.2755897488054333132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179025023d07a1368664dd617737d678df50b59675b811008d5ece8b2970dc31
Date: Thu, 16 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784230713
