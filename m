Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589151AACC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721199323; cv=none; b=Kd7535yJUFsabk9MnznPC+gzSxKoux/Y2l7rBfbvbr8OlcX3KvYle2ijd3VJ0Uuc59iJ2x1L5c1h4rPENYFrj0LAuhWpQjX3znNJYzF2K7ks4fez6CfBXrMkddYt8r/UbWcm5j01o+GX31jOGVUEQQaT5KPD3x/64Zj41zNgJE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721199323; c=relaxed/simple;
	bh=Du14JkcpPwdkg+CdYqGxIWtQg31NdaWo3jwy7M46ZZg=;
	h=To:Subject:From:Message-Id:Date; b=h/RiiZvtbmuerxfoPgCO7mwa4EVkUl7ymB1xGYBGE+S3kAGGuWkADSRUfKG4lguDh/GYyRUnDN2/4cnLBinfKJ/OQSJ3DhwyidabMIVR/XEde3+IAz5MBaLeH3bPtCUFAKCqJ9psbmOZfdHITcRxBnNKrdAfwrMrLvgsYKmGot0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3VWa/M/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3VWa/M/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3A2C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721199322;
	bh=Du14JkcpPwdkg+CdYqGxIWtQg31NdaWo3jwy7M46ZZg=;
	h=To:Subject:From:Date:From;
	b=X3VWa/M/7m/+FoMGZXyHMZO4bbd7lfyWQ663RRaMcKZ6BVgWJEwYEH/aEJYEotLwR
	 REwXd06cpzVf133hX/kiqynFwgXhuqOOaEG1Danj/1FU8x96PIxn+dcwKfz82pae7T
	 gFgCV33Ems7eTNQIHo5hZ2LU2HrzoH3xtJ5TaIJcvTvBm6Jx5BYVcsO5pGaFzsoJ5t
	 C1Sen/DH7ywbWabVDQ88eRkBdJacpbjl/jqkV+xoZINRm9exLYqROUC7C64mjGkh7k
	 cmr650YDmITqo3Uzn3nhUfV5MWPe60rJJZLJDumnVsZg3FddLZeVm25rwA7hpWhnoP
	 sD+yExmboc5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80D8C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119932279.10985.10535447880474141156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95612e6a2d190491e1990b6bbac2983006eccb16a46dc87e5406f7813fb2c98a
Date: Wed, 17 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721199322
