Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F883327BF8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781948194; cv=none; b=ZrshGICTnfKGHzDLnDY1QoUrsXP35iaGBuik4yL2Ji4Nq0mjybp5bAXoxxqoH9w0qA0fpxfcjtmQ/WEoX1k3PXGRhDbwvDEQuDgw1X3wSqzmh6jT/jXoL/aLtzM+ranGNKf6wi3vC6z7PhLuLXwcU96LDL/WXRNA0VSDAm3sgS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781948194; c=relaxed/simple;
	bh=Yk7bCjxIOZ0pczwejMF86PEgq+CvGTs5jT5om8hLunU=;
	h=To:Subject:From:Message-Id:Date; b=ot5FnSq3ma4zaf8tFwirroj0Y7lq0EdU0+ygjq4+hY6zQ+PJYHkUXACm/Cwwsu6yvQDLvUglR2EzPd7JMQ1VWOTeWEMstfmaCX/+Ay7Q6wySfmUHfFUWaqb4ka8LUjc9JoIjfrIhJAgK0JuJ+Numa6erbAqcpHPt2uV0WkSzZ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDJHOocY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDJHOocY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F28CAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781948194;
	bh=Yk7bCjxIOZ0pczwejMF86PEgq+CvGTs5jT5om8hLunU=;
	h=To:Subject:From:Date:From;
	b=lDJHOocYmRVqkbXiFyRW/lIKGeKAQRMIXL2SVPyvUZWSbQGgYA/WJJAhZtuimG3bg
	 GfZYrUGzofflNdzXhMStqGGIlSBrCXH0/LyywLpJt8d4QFTPDNIk1OJ/SaB0Yy7OwW
	 4pSkB47Svc46xj0nuOheJKk9XdTvvTew5/Zr1mmzlg2n3z9JXvlL6qVr2EKqvm2uu+
	 bPFkN0unREt87b/75Rz6jTf5OlZ/P67G1XH1PpX+fYJgqgYpxoQzPJG2fq2i6Vfxu6
	 x02oM6+ohwOClwp7VAF4Zdjhr0xoR0sbQb7G8k2o99QA8jScJBDrQ1+luBCcJ3hr0k
	 j6AB9/IpLS/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FF5CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194819376.24646.11265223821551369008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8282075a1fb653909aef40147a10620536a997653c41f1e3997d1ec7a83b4878
Date: Sat, 20 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781948193
