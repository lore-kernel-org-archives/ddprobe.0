Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FE01119A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730952354; cv=none; b=B0whV0YC3L3O56+Xl2+C/YEtpPH2F4L38vG6mcenPn9fG0vu0m40egwudvWcthYBEXvrKjIpB2tVAudFCX9RjuMYBuzCGRbWhqFFm/cJc8wL+LQOA+NQeLSt3TV0WKgm6XCOJ0UhxY5v4G0hd2kMoDlTPerqO6j1TCC6qq/Sn4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730952354; c=relaxed/simple;
	bh=pzoePYgPPs9P2WDwcxscP+KQ16NVI1i4c8iOMYRgysE=;
	h=To:Subject:From:Message-Id:Date; b=AYwHLsCm5YoEykIevXzaX47peNAPNqBeIa5xQS5uiJIWaqSSSLfqe5L7WErFxRUMCsIgjqY2Djm+Z8DU7NuAG5c4WkenBFxlzHmgltL8F13lsbZHtzyfAilgORGKzdVuvbfJ5LvLxIKXCI8ZDEldNvVqIz+MGzt9moq5TGCN1mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7qfJjw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7qfJjw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4960C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730952353;
	bh=pzoePYgPPs9P2WDwcxscP+KQ16NVI1i4c8iOMYRgysE=;
	h=To:Subject:From:Date:From;
	b=u7qfJjw5ZR0G3b/b7/+Dbjrw3e2tvfnlrNoZgDMYUqeufiQK5O9+II+ZYzxnTJBXJ
	 x7fMkk2SNen+rfjL+A3gG6D3m1Ii2lNLJPAYiD4wLyGNNMaMLJB3nzE2Awcbv+rvyy
	 jVAkrDrUfDquZTMPplJVYrrD3QUS3t2pVjsL6rVkTRDjEvg2V5oPua7JQEk+TrIV4T
	 jWL8Kla3dfZHuAv/sPQ3/EBXyn3W6wY5o6C0i5oaQIwliL4Shq5e9mwRBPoJJ9Dxam
	 P1Wg6CIkYxNZK5AN8xatl2yon08ZNmYHjl0MRnXDnr3FTuO1shnM6UpNRfMn73dwyW
	 5zywDtg6sQ0Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95799D5AE5A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095235359.5055.3007405912880802962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bb73e72eb659527057ae51296ae442e84cbe3c69c0b069bb63faa7f805e33f
Date: Thu, 07 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730952353
