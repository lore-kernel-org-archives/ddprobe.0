Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF91EA7C0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738848954; cv=none; b=K/IunpqmwAumPFJ3D6610l/flxhn5+sgZMf/R0+vJnpi1EnvHqsuG6RQEnQH1PQYtA7psoV6ytcRBPfTA7lL0L6U2Uq1ELwA/K6eA4Dmbqy55XJhUym3XnbRt/9L7q11Uc1rLZFPBi1fuDzIt/fBA9Z2kPmWWAaK2MAXR2yOS3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738848954; c=relaxed/simple;
	bh=GgokCgN+WYUZKsz8HdXPMRWsXoLLqPn2wEfEYquLXEU=;
	h=To:Subject:From:Message-Id:Date; b=YdeqLlXYGbpFajGsCioLYn+uDefiwCpznxx3gUTk2uquw/IZKY/P82QYTC6iMG3eDvdQtATepdUfuXLZfU/JRt/olBMXrCzysOa4H7u8fnTHVC8Nvb0RItzSweWyFLv7CGbzy5T72lcTqs0MHYzwNULd84meskoH6lnh38VqNHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtTcv6gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtTcv6gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738848953;
	bh=GgokCgN+WYUZKsz8HdXPMRWsXoLLqPn2wEfEYquLXEU=;
	h=To:Subject:From:Date:From;
	b=AtTcv6gituHNf48EUdDsQ2X7gJuasLFw6RYOUAOcbY1ibDSI9/vaag9s0DwM300cA
	 ptJZxIUa8jkkEtYLDZyckCRgsitK4CUs/caeF9CfuiCAsXATjrXCDmjVmnvVa/4Ok6
	 9dlN2DfDWmu/zX2oFBSuP/9WAboDwaUfdUL/Z9qkxWvzlBnEM/31nGz1O7uWvG644c
	 VfA7hHIvCTDZ64HDTpRlYF8MKkqIro5t5vXJrlNl/L72Cmniwu9f5p0+PRBhNv0S0P
	 CAmrQyPT8x9b/RgaJyBjRqTqVMBN3hx2wh3LGDOZBStoHpX+JGhErwkkT3Vyhakmz4
	 7IcfDhAwj13iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B36C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884895359.4855.5403111233391584071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7be7d575494dbc76503c05a19d79719cf90064936e7440cdf9b55e0ee9855a5
Date: Thu, 06 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738848953
