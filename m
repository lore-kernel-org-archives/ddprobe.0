Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689673F786F
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781651194; cv=none; b=M9KFvg3VBBYesf+dqAJ1V5uktYAp/RV5CPNkbrWeaf+7OsDV4XqyPvk9QMZgjaNAoNdR+6+SKztgYXxAh5yNzlI0b5vDzaxvFCkLdD5syQobPcX7j6dqTNriBdR+i31lClt5WAqImdoxI/u6/fiME4+Br+ocpr+sb2/owPjPRmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781651194; c=relaxed/simple;
	bh=KlwnZEoZqxk56dEd/t7r4mJNJWA8/JAgVW6Soa15Yvo=;
	h=To:Subject:From:Message-Id:Date; b=DPuTfegEcRoBAT2KYge3CRWwAHD30hgq4HRv1gRfKx626abKvxUJK5RP5ZnHECPOhIv8/Eq0A1k+JMtaHWZ8DzrzXhAvwHPU0V0Hlq6iNVGKzLnmsW2lYce/RHXwTyGxN2tzH9xfGY74EYZUl5TdDnzYir1pz3WLt3rYmTQtxs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXVDG2SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXVDG2SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD61CC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781651193;
	bh=KlwnZEoZqxk56dEd/t7r4mJNJWA8/JAgVW6Soa15Yvo=;
	h=To:Subject:From:Date:From;
	b=OXVDG2SYXkD6MKXHHQcKM3Gtzu2y1VY7fEHDLAX46uBBDQERFkpq+l6uF5ijsvb6r
	 OvBtp/z8iAlEyU5Y9YihTnBL73wL/i+fr0LfipRjPy3J/JMcIo7IAiDGl1Ztd6lRMZ
	 cTC/8KVXvygTN4SQKLcrFAqqD9lx8Fwuy5wYv/F/7JJc18AN1L16iQuCBBN+vXY06z
	 ERfg3iCj2+9TkpiQq2594IcGSm3PXmG+8hQqSv/bVjdKH4B/EJdNVJtybv54nvfP9b
	 FxQVC0uUXgs9jBNDWS3x9qpZZknFJ3IcoDEVrFr6QAquD0TDcD8XGi5kjw56BCumaj
	 uyy1QLiFVV8OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4DECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165119375.27720.7607204559859965389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65efe696cb9afda20c7ab0102271905c1e7d3f98bef64a8e18ad0a27f1bc3644
Date: Tue, 16 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781651193
