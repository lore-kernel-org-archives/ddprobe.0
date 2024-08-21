Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3531C155307
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724244354; cv=none; b=dGqyPexVOunf3YF+V5Ddl04zf84z2HlYPrCDxUUkFiHac++88O903m4aCN4wGiFC9eQu+WgZLbFoXejcoZRW1Y8hJvyDck/P3WEb+0lgc+Xpi/nNsxnvJg7087p3ivdklygiDrXb/SNFxGhpFm7J3ZBj70YCiBoLW56CZ7PnE8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724244354; c=relaxed/simple;
	bh=RV+Fdm+tUWE3wH4sZFhie7/59uSeu/j5OUtWqXpSnCY=;
	h=To:Subject:From:Message-Id:Date; b=b4qJxnB7DCEdnPD0HBfoxKNabcB3vC2IVWcEURvrrohodEl+z2DiLUpvBslPgaC8qcolcummqk/h6tZ+uVNEWHDB442rx1Y9euVDuMG3nOdG/y59Twb8ZE6eX+j7bvYThtBfof2r8u0QrvMl/zvIKYuY7EZaphX5q51lryzd2AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4Gz6VWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4Gz6VWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68CBC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724244353;
	bh=RV+Fdm+tUWE3wH4sZFhie7/59uSeu/j5OUtWqXpSnCY=;
	h=To:Subject:From:Date:From;
	b=n4Gz6VWo9BqQFnxVx+yYQQeyknMJGH2zuqTXl7UJgfRseFlTAdF6KQZKiweNxfbD6
	 lrOnIKSi04pEw2VBaVEVIgQeddvdbAMlfDaNfZ1nkWedUpGOuyg5C6IDhryXkaGMht
	 4UKBglcylqRVrfhri5b3U7I1MNvuB04+GgEk41rouy6PIJuBQqaA6BOoqhdwUkKPJU
	 siHqykkMAuGhl8I4HeY0HvoHfbloRmc/4VNTOxHCOajaPNEkUKgK01dZy4pOTDol8t
	 BGJJ/FJpKwKCcdesWPOTb/pW+3Ww4rJ8HE/YuQ0ADCDQazxXjgtsGab5qC5hl035dl
	 y4SKX279Zk2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B86C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424435359.30159.5707550909825346494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a69274480d4995be6b279df1d1ad6990dd4f06b00d04887b4a917040ce00c53
Date: Wed, 21 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724244353
