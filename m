Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E40C1CEAD6
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760884194; cv=none; b=NuHDelIw2cd+7LUrU+CG/g+OiOkdmwdGGGYtQrDhINF7OliIIiY6zKV+fzp2nbA3gc96mK98+BcaC20XeFx3F19QPS79i2UFSIH1XyNRtOxSffi5Vwtp35jS6pHQnwnG1S1c9L+VOQvrGLxaxXTaq/9ZK4vAkS7PndLw/KwBVF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760884194; c=relaxed/simple;
	bh=rbQZoYuJEo1/YvjsQLVe0SJLjLGLllCDHWkKypHwhH4=;
	h=To:Subject:From:Message-Id:Date; b=pcQSvEiHTxOEVWsZpQhpBK+OlCJGKuofm6R3HKQGOcjCYq6KIoddmWIRwKZqq3isxFy1ONWaWbeNz4P3Q7ych6Q/paM+f/PaSCpv+CDbJEUTH84pkEqgFra5hwXKUU3//BowKOt/GmTbLJJzUKiG5BTRRqKASayRBxjzSF43GCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXf0MrtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXf0MrtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760884193;
	bh=rbQZoYuJEo1/YvjsQLVe0SJLjLGLllCDHWkKypHwhH4=;
	h=To:Subject:From:Date:From;
	b=mXf0MrtDzU2JjAyf8QIyadP+SYgvXsnA1L9A8pTtDmAIOM8PeQMe5Lth6zzVE5t4S
	 h39cQXWcukJsxAIvzlturwlq4l1bYMk7C9jUbDrUXwvpeaB+RZWQhYgFBK7rXK7tSL
	 BI19U78a25bFWleQaAqkpkOVcte9yqNbV/VuDRnpxOP6ovW3ieOM1+FcRUm+UjCZqO
	 5H0Vn4snwgq1otBYVBJW8o8W7cQkkOknZZ7o/zf0icuXy2f52IFC3xmC7GlSvHTdt7
	 8q0u5Fo+1vV9Au231JbDOTQQxWDcBvtpSfIQBxUSG5GtFij40wGaCHDx/phjOluoTC
	 8bnidONsYSdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93920CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088419358.13212.16130755882506663607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c9a7ad78e6e28e0b461bf741fa9c961fb4b982fcdc3e9247ed53a3bbc183b8
Date: Sun, 19 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760884193
