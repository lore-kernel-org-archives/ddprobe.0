Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527BB289378
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769457234; cv=none; b=lhdUia0uLgUPNLCpqorJYyPmwDi6Bhxu/Lm9JIeFNFI8Rb8m/1zBRUHSqIijZiojAVVeKlspjGaklZiscJL++bOBJMBl397MxKgL/Mdn+sJ44KuR6mDndIHpb9egwByUhowJo5Mv9dy2m93YO3pnRlTs/txbsvJ6YRjTWR/TR1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769457234; c=relaxed/simple;
	bh=fwJl9V9VDOlsVQ91pWzDxW5GZ+T1bg/8kXDL8n8SUH4=;
	h=To:Subject:From:Message-Id:Date; b=GliCqv4tfDMniBdR4oecpclrjtwbIQ0zQ6DduXCSSVvwkTbPkMEutCSD+Z9prdmWV8DmXY/N9WQs81KmY6juJOC8lkTeaxeKu8n0zepYttiwpYYsKsdTz8gYIixgw7UIU7mlfPjfsJqeNwg4NelJaYH869YSZvAs3M767opXrNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdTujlil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdTujlil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E3AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769457233;
	bh=fwJl9V9VDOlsVQ91pWzDxW5GZ+T1bg/8kXDL8n8SUH4=;
	h=To:Subject:From:Date:From;
	b=HdTujlilXI6AyG4yi5zcrE6Bj0E6VkJG3TdmbDfbHNpbs9tLaV86YDty0Tvh78F7W
	 O3uNaRAJPLCcWfYP2CiwpZYZtOGCbcU8mo5DN/oxoUQ+6MNHotKRFatAbjQBMCd7IQ
	 vgSxIgQh6TujpDTYnlpUJjHcSpDo+48Lidp+8B8SzPiRrS5rgAiRetiQaCnxNkbm6b
	 kHVPgXYmdohPlcZpQEV0YclsLZyqN0LTC/S2LMe7w0THEO6Mmbl/6vKY5xZAvqLIan
	 SEigAiUSvPgTs+WM7Xx0j/bNLZdAWOsUv67cdMxvlFPwVIMCWLkfYIFYgkpnecsSCk
	 hQFh7JkOaUhYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9627AD1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945723358.2977.4949390300496177468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dac37ee3649ef78c92173c9572cebc6478f524f89f6139fab7aa70d49034b74
Date: Mon, 26 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769457233
