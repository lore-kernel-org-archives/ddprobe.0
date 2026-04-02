Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198DC2C0296
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775150734; cv=none; b=fMmRuWTQzSJ+qa2E0+N1lyuebVjY70TBKuOKm2K31y++8PzT5WZfWgsYTiD8aZCAH0lcF/tdvMLNTvPEmj+mKPS+aTaOJRetp/AJR0ZWUughykAXc3jWBjWtLOEpmngfMsPMC4dyP4zGKsxl0pj+y4+QWH1DRDkGO6PZOVkpPVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775150734; c=relaxed/simple;
	bh=QcvvhhiQ4yJzdbI3K27qXB70DBqHFKwJBjwwpyVUKeA=;
	h=To:Subject:From:Message-Id:Date; b=ncbjZYX1SP+duZNTsatecVeIMQ04NPsqOoTdquOLk9NpKZgO6dmAKFg4lgaJZn3m0lxEBXX7jFUKl4uUswukGa8tvVAM7UrpwhQp8bqDTuyUwDhqXp+wf+7jSBN2CQMba5J/+X2cn43je96EWpTXsRoPG2zqoEZMmrrULZ+r0OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1HVLvhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1HVLvhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA752C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775150733;
	bh=QcvvhhiQ4yJzdbI3K27qXB70DBqHFKwJBjwwpyVUKeA=;
	h=To:Subject:From:Date:From;
	b=E1HVLvhjP1cgOXAueX4gdpKu8X2TOXwdxbkbTQr1lmPVyK7fu5fHybI7yr0qYtOFD
	 IStNR7Xeho2gP0rmPQ91/KPWi5xPMEuY8hzTq5EbDBq0YOexQV8XWk+3y7FjzxhtRv
	 4reTyJv5V/XX7fw+ZZ97P2Zid1+zOtp8FXGgmU/odX8fwskB94hex9FN64smtQwM2D
	 W+s5hY7DByAs9qU0O+g81P3ikmGavVGnZ/H91QVqfwK+BPtsoI2hH4Wg/BeldM0Wxj
	 yhjFiTIoHux81NdG0rdH7/1sC/te3sNdI+IpEkj6zSIgCQtmrfO+nUj+h/m5/f+dyk
	 A+utBn0C3rmSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB0D6AAF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515073369.10430.4154853893935387452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ae474a7007a9720fb64a6c2388a38dbaf54a4acef6a268eef5a8c7f8c7b8b9
Date: Thu, 02 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775150733
