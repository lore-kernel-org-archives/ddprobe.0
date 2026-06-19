Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4D737BE93
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781871994; cv=none; b=J1u4p2iOIfigp1wZCF5HfWMj/GOnvpilBPQLfRNdaqOMzXmdc2uuwV94ok5Knpiyp6GH4GaiVsNP1TpwMBjbASHaLxNf67pSfyAJkBUif2uReLPlS+vmZufKJ+/9Brzh+zQHjzG2Hb6t+Eir1lFZkJPc/IJc6rnWAVP0DZzI5sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781871994; c=relaxed/simple;
	bh=CGhGyPz0jCjaaBGqtSa4ChauZBR3Cx8evpLhlq+F78k=;
	h=To:Subject:From:Message-Id:Date; b=VqB9dFULJmhz5xv8YFhRh2m5E59ZlVHZaNw9YBZopxyYsa4cUFXxEXkXlwLeh+VgrGCP4rsPCAGTXK28m4WMRMpyGRlmGB8pAeNRreyvlXgJ8oshtYa/oJ9CRKV+B5EXnpuruSLx16H3wW06YMxBdiN44Yag/EVLJJjgYQuouUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjZHq09B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjZHq09B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51E8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781871993;
	bh=CGhGyPz0jCjaaBGqtSa4ChauZBR3Cx8evpLhlq+F78k=;
	h=To:Subject:From:Date:From;
	b=pjZHq09BvCGkD/5IO+rf0LivTwpJ2oLJXPjOG1fZ+PgvSQRqTdKBCkO0xb+JfuQJ8
	 RmHH6wlUT8CCKMBfiihHyAGJ1x0RsyRwWnNQZ8+fuUcUu2JIDlo8cjrStG5IV7pnxs
	 XTb+npqhwdB8WZneEFyNz7bibDOu5xUspU6MBanfG88pIoY0e2a/st6Kp6GZAs/kLl
	 x/vIYH25CsPTl9wtqIUbRnbPv0D6G/xl883BmA7INYWr506Do2Ein8ofRthOgbMEUc
	 josFmNr8c2O5aKX/+CxT3dVYjQbVe7/1PGmO2KeT3mSp7eLghfjXB8/qaYb2I+wZLa
	 POXVw/31VGAVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA518CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187199368.4463.5357637297090244521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd80ca58797a594b65586e07b77c312901ebb2f9563735ab755766f07b03e0dd
Date: Fri, 19 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781871993
