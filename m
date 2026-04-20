Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E1722259F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776700653; cv=none; b=n2TakasQE9aPZoHbQAhynHM7mg32vK03i6VZIuvdkcWdkg/L5xl/ZQu9+W28z/Cy3auW82CBUq2IJt6V3qTTeqFwIIemXI4luMjVnV7E/Db0n6QTEdCBsCeN4knjAxKU0ADEsfm8PKO1KOUOdRS3EPeiUsp1kvCl0CqHmmlpyWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776700653; c=relaxed/simple;
	bh=HXhgWt7s34ulQ1iWVBvse9pTNM2nYYErQN99cUgYQgA=;
	h=To:Subject:From:Message-Id:Date; b=KgeKpT+MqQ1m4s7vUrIiY7s8lAdIWOB+De5M6amuLWzRk9zbEcS3wlI+gT4MSPoYSJAyx5f3d/sNVN8oaFSLdao8oe3HJrKwvRjQs+HglG3pioCXazq2GH0hpnKoqaE5656aE6EHtMkbQkwVYYROHNSF7P1dn4vaHFWX7zRim8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBw+thaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBw+thaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8041C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776700653;
	bh=HXhgWt7s34ulQ1iWVBvse9pTNM2nYYErQN99cUgYQgA=;
	h=To:Subject:From:Date:From;
	b=hBw+thaSlxlLz39pU/Kh5okuuDlcdSxANmBEdirWDcXTkRkqNu97DsaZT1rRLxMbe
	 lAPTkxCC7uUJxgXH7HmmMf9ln7j2HYJb1j4BAs6WVdRvZPviVNXmcjUTs2Cn7lBUQA
	 XzxA2p1JWKI7IBNW5y/IghdrgaZepoze9RP5SYJDOH+04hP5uDI+QEb/Mq9hAoUy3X
	 RDZ5/vJL4XPHRAJhUWI5lIMXflBrHWl8R96JSJf0mJcAP9LKfo4mKEVsAW0lbOVYFv
	 18SJcaXLc06n4Orx8ldePu+1PNs7W6mdBno6Kcz4KvtgrFAtHKcH5L6vyaq8WUxTxa
	 wIRILwdrIq1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCDF588EA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670065368.7566.5709754642707774268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121698cffd4adf18e6952a254618602cb950350294647b206430eb5d40186144
Date: Mon, 20 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776700653
