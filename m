Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1BC1D680
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713627623; cv=none; b=uZH1jye/pZ3liVMavGryPIqj3TBCsGm9WmkfD5uWcxB38MZ5bpwzMYi1osGQiOmCkAtg/uaHKtzp37Ni0An0RrdOoGyn3EpK4rONCRSW56bi589GmRvUHGGml7kUbRcI9LSqRBByI9G2zPbf8UC98Pw2VeEGFOEzDFxbFN8pWnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713627623; c=relaxed/simple;
	bh=Giee0UStFV6J0SZOsj60yCByI+Iudiv5TiAt7o5kKx4=;
	h=To:Subject:From:Message-Id:Date; b=M6DFQAFHRCHv8W62e4guTHa5LikMFQkYI0Ah8oXRSTkQwPV0VjJtIjmRBIMWlfaFIYsaWGtPkR6/eU5R997lWdUgZsK0G4IciYAFdhD318l41rszzguNLNBbzO+u58eLIhj4nV6WT0J98EVkR0A1MhVZr7uwWGuPcHLhmgUpBSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGlApMuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGlApMuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB54FC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713627622;
	bh=Giee0UStFV6J0SZOsj60yCByI+Iudiv5TiAt7o5kKx4=;
	h=To:Subject:From:Date:From;
	b=VGlApMuSPLzPXMlXvU1ollQq8exPSFmjFacVukkDuI1AccmIDmD1pmjEshPe2Tn9V
	 TNmBVCKukMEMywa9oqBJ9f0rVuWkuYKjoG4Y542yji8UM8jMOlKAm6ExngUjnNNmPm
	 IHPDbFaoPX7qKxoHg2z61RMo7zMmslyg/StzCpa1WmxKyiIF1FsSBjx/LKRv2/FfvM
	 zxJIjIJTVs3LiGwyveUycg8Ly5gczh0G0fwUGz0Z9eN97N6NZvn6FRM8pASvtKDjTL
	 B6FC53RYmaO3I7DVrx8mHvkURwNeB2+UQvBvxfND1ckVZoNPmYmY6LTFiex5PWvE8B
	 80x8SshjmHyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6313C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362762277.17084.4921014438904537054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4478207fee25bffee91e2f2846094f87cd78300b0ff16a44d3feca4a0233f247
Date: Sat, 20 Apr 2024 15:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713627622
