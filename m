Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB9B14B959
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736978754; cv=none; b=Pz4K0FqTj4PNyb14U1KK6Ag1YxfM6J9XW/No1Bl8U0ID3WL4DC14w2LL7vd8+9PbD22vzVL+4Y9M2SJDNM3qlAzR5u3g7bGgqqYFnsZvnuWOmJKc08kJ+6iv4PV/LVkTtIWCq+V84Q1N9Hpc2U8w9uU7FzcDIlL7Urw0vHE2dAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736978754; c=relaxed/simple;
	bh=3Qt7oqkgcFp4rAL05E1G29tIYhHmm3BA/2gcrryJ+jg=;
	h=To:Subject:From:Message-Id:Date; b=g82ffmnEBSptBaIjZI7P2VZUSaytGgRFz6r7lBJxbYH/dRM8AxU7YVWiViR6268Z6LR2FqaQhIMDhGEy0KRmjNFDBmQntfDhuLOP7NTaz3J2SDkefPFCEgiymTuVvyuee2xxTrPPkTfsr88hlLRsV5Dg+5DSJ20mGA5pgYMvs3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvMfo66p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvMfo66p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D7C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736978753;
	bh=3Qt7oqkgcFp4rAL05E1G29tIYhHmm3BA/2gcrryJ+jg=;
	h=To:Subject:From:Date:From;
	b=tvMfo66p+TeiivoDbTWfcvycSVhGultdBbRDyNvfRzAnaeYUhr9NCqZ6RTa+P8cIy
	 nY2CkBEm5wqoUvymMxfyGrayjcMdybydODwtuiJXbex8yFpJ6GmaAl8E2a8XhgCL+B
	 g6Zo6m1je6AVntVwKlt9kvlSMl/Q6eKF9aQRq1TViepbg1HabZQIi7Vpdc2eVBwCi2
	 Kn7uMD5dZDqqfTOacIBt6lK9+lYRcNO7NDNhx1oGeXCN9f1/3B4Al0kLkIhqwJwqPu
	 k+S7EzFm+OQobk9RHT9ozqLmtEmJYAK0GKGsugnUM6hiTxmTPLIeOKUeN9VHyyQi3I
	 gaXGjoRaKdkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D7C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697875361.26011.6183431276026579393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38aef706c74b573558d7851a5120449417deeb80df1eb4e31f3961f2be4c192
Date: Wed, 15 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736978753
