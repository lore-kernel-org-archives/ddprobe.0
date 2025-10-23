Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29462737EB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761260394; cv=none; b=Ok+QXLHsmOTKJt02fq/suXRQWDW3H3VpLZTiOoQ8sWbsRVVJlJeuqIUAVtIfW9lJRYxx575ISJcunOMjoDVJWI9D9mRzpzFqZQBkplEmXUTJq7tiHJlm13PQUIvfdV/kC0+8i/CkLZj7oxsTLwjuoNxgADAoDw74q0n2LK5Iwps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761260394; c=relaxed/simple;
	bh=kFz8iO1CX2ECosZrN6WdMMLhvgNZ9iYWzLJhf1Rjhmw=;
	h=To:Subject:From:Message-Id:Date; b=IFBP7+o5pNl+9s1uubrRl6VvgAdi/kAYNVRNCuapj8qf62/5CEtvNjtxpffLdQ5LQC6yfb7oVx7UHWjUO0PWYOd/V/Lcg7jmAFG711jLs/mH7G7XaEAgrowl6pC2u9CDGZXNq5YSWBMYSRax8rzMtk/FZ3RQiXAUUUKiV2Uf+TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdlLgVPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdlLgVPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A798AC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761260393;
	bh=kFz8iO1CX2ECosZrN6WdMMLhvgNZ9iYWzLJhf1Rjhmw=;
	h=To:Subject:From:Date:From;
	b=ZdlLgVPom+M2SRtfIuff3b2tXIzomALy1qj1dnBSuf1tT5lrvb5yU0K2cqZ/Ba3aq
	 +htC+IaLvMN96f0Tx0NEe1NVsiZQNsiz7cmr3y10NmMYILci852DzvcQX3FMj1LoxA
	 qX0DKhVio6vZYy+RaCL+GmRF6Tp+havLyFHADKy7fm7skai//474uoATfLvbqKE0RT
	 gcgYJ3PXiBp75QHBtBNqQsv7rdfWp59bsubguMffKlh/Rt416/23vDgRaWDsC7yicx
	 HNq4VNwloyGNDvHg4qZ4U2BxmTYJoIoAGItjQlsS0FMAgQPPxfvlfUfAg4pRET8fE2
	 sxpCMEazmIz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285DCCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126039358.11729.7128046425564531925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf3c78a7015d5c38569faaa509abb0819b767e64de34da5f74f89f231b5e89
Date: Thu, 23 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761260393
