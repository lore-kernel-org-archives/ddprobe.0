Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDDB188CC9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768523634; cv=none; b=cf0JZajWwyIRd9MRQ++YC2hsIYR3PTizoAETcbsOXMuWPt7Jk1ayQYFQfCRYvcAx5kfGvPpjnJo5jC24yeIp9V8qsGUqSdakz2AompYpvVEri3fQA6EnZXVFflDHnCAW28jxy+6T3e9wbus0ZH+PNRBrbFLL6TLzrbk4iYkJd10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768523634; c=relaxed/simple;
	bh=RG8kJ/GWqsDOc3ArdqSBKEnuNVFH617z5m18yXovEmg=;
	h=To:Subject:From:Message-Id:Date; b=Eer0U+w4m8M0PVVmk+coKpBg3iIFL9iYyz5mwtppZJe+FXxk2XQztxwIirYtAtlEpwZxtFrDkThtcN9qfh5DuRRO4NP7y37GuaDEYAuBswlkQPIV3nuUkRDy/BHhA/daB5B3ABRv2CG0MzxhWBkvfRxYbt57Un4lJW4IVnJF1zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3StIiHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3StIiHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDBC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768523633;
	bh=RG8kJ/GWqsDOc3ArdqSBKEnuNVFH617z5m18yXovEmg=;
	h=To:Subject:From:Date:From;
	b=D3StIiHp8ATt+kNNKlEtzgLXITnyiTZbZ53URJ7R48JJ+kmp8AAc6AXbiBxk6Aee2
	 Xv7e//MhoWDnHh5szZGTlfGpclf4JicjODyLBngGI+gpcr+ts8TWue2FwdduvRXlX1
	 bQT/q5wQK1Brq+NhgdB+SUhZZzojmIU0qlvVfC8Haisiaugb5qaqIOc3f+FjCwECnl
	 nmdjF8RrsmtO2M/loxIZmPU8UFzuAA0+jQ2UJnlGGNJYyrhf/b4ofUhqEVC5Qbv0Cr
	 BUue7gMVhdZt6BkVR+WGd9mT8oRBs8v0Trux9c6fdK4hyQyTttdl0H+hk0lCsdTjzU
	 gJbnExtFnBccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E852D47CA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852363357.6900.16143356375959458058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef10ac2bd1d2c7fa4daea95cc79b9037dc72d72172d57db5e910e783a5382d06
Date: Fri, 16 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768523633
