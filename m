Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1769734545
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753449595; cv=none; b=MIflyLtoKe2sms52f99y1RLp0yl+X7hFlowP5aEhDADC50NKnQTDZSyIBeasDRrLLkzPvsylDeeuYGFaJLDPptz1rQ8CDmFq0OllQe0pH/IYmTyGHJR24sgsHTwmunAaMQwR2e1zgCXEvUufU3pETWh4KbTIKpLIrpt5WgokX3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753449595; c=relaxed/simple;
	bh=iosOmUAb47ufqx0irMtOyxqsHqvOlqFdkJmb+sDmPlk=;
	h=To:Subject:From:Message-Id:Date; b=WcmoNdjoqL0jzft5v2A5Jf85i8QvSTeRMIreK+Q6FE8lWsCteVf82ledu9fecmM88DoVLkqnV77JLhNqeTDekJzJzUfEA6QzenlF+Rjs0JUpYVxZSy74IOmDdWiBr2HmKSfqx1+G06Lrw29+9ciyZXU3dCtMrXmZfYhjSVqYLL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmJUQNOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmJUQNOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D2FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753449593;
	bh=iosOmUAb47ufqx0irMtOyxqsHqvOlqFdkJmb+sDmPlk=;
	h=To:Subject:From:Date:From;
	b=MmJUQNOCgRu+qUHLzxz+CWHrI+RRBuBAdq/8y/jGDXzPBjU9Z3lbA4nhRgGf+N2JG
	 DvVYGtZwetiIjl/scbS+QxGhygHNMfV4NdjSVsxwp1OC4unx0WlJw74PHoTWQySAME
	 4tmeJsbDiAhiiYVPU3qCY23lHFBXVE/QYpfk6KWXA2CeR/cEwpsidW5sQTp1m9/WHC
	 fZbIkfCIpdDR2K6kBPFsdv0/5t8jpclPZBpjMv5hbH+Y6m38JXGUndC+UCJRXxRygA
	 gEmHmd0lV1fgpTnE7F/+4bZ6K3Fd61JmaGNnY5VLZdVXicDwDTdnECHOOocrM99+xb
	 rWfwDGxRuTu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90362C87FCF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344959358.6662.5235842826575654778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2474751242d2ded62174d9729e9fe30b59bf987b325a0ca8d6eebf259e36b280
Date: Fri, 25 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753449593
