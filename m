Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2404815665C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774241094; cv=none; b=rxY2r+qGgrtG7WzU+n3sP6jpux69Q3on96hXo2kftFhC+uaSC9wWWNiiFTEIFApRvLR5wHam4134xyV0uYf1f2XXPKPPEctoswG7GNn+okjCJQlil3/6LwJhieO/0KKgefIBTWkzEaH94G47wnSHCk7qOVXoqXvhrZCbjilvi+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774241094; c=relaxed/simple;
	bh=Ywn5CsACZEnqUVz/I7lUsy2unK6j81k/DHoczTU7KyE=;
	h=To:Subject:From:Message-Id:Date; b=kjnYemN74S6FDsnZ36UGXeO9zISx7mQD1fcgnKu2uechZGVpK+cjVLibSiqLyS5+iUVskKedhDpnmfpiNQscC87N+m3oAayxDV42k7JFbiOGjNg6IDUTtdrq2SBt1BZcd7uTZu8/O4Qe2pl2hhsdKh6eaZ6w+tTQwMUOkGtxqng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQSB1vrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQSB1vrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774241093;
	bh=Ywn5CsACZEnqUVz/I7lUsy2unK6j81k/DHoczTU7KyE=;
	h=To:Subject:From:Date:From;
	b=fQSB1vrAojJ+YJMsPtTWwPhvU9BYemUzCfBXQOblC21YvU4r1ieU186Zr7BjXnJJK
	 9LlUGpfFkkb44DpagIj3ZQ++YmOI0V0AD/Sd2heOgMR79rxNv17ANvzExaC8+m7Hrx
	 eyrVYgHCDS7X51ZL86VDNx2ungcRH4GnIvB+a1J+TsdJstgOtSBRV9W3rJ6t91ozAg
	 q+geQ9JOxmAEFGL98zW+KdnRhZ+vWo/D/4Vg2lUp4MCYuJ1QHqnkVeLv1LpfNYfYem
	 rwW+sae8nzTbxFhnL2L2N08RaePgLzbPSL/yyoSgRPT+H8auMuCdWhv95Q8mpkYIVd
	 5yRGkvDRmcDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D02D58CC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424109358.5494.8390457413093578517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8885565962af3f89f3b5b27b0d3ca1c0f13663a65cf324f146ea565a218719
Date: Mon, 23 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774241093
