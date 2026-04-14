Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6841FC8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776168454; cv=none; b=gq6LVG4D5rHl2tGIsGVAXJqEEUIFthuLN7Y2AJAF3f+1mrhQioduy8nnVwPOY3BVe7tUOU0XeGvmNtFCUKY4Hr6FRqrFVqJT5CuYwl18ARSgzlRM89JFrYBDhk8T2qtlJgRNwnMwyi5DH78IhyYiTqBnBaKRDnw+YISFTvzYvBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776168454; c=relaxed/simple;
	bh=jJtMxPQRzpxpwp9/GX2dBL8y5rnNzuCMHWDwmJrJgDE=;
	h=To:Subject:From:Message-Id:Date; b=kiYw1lvSVArn3tKFvof2AJFBrpJIg5/bj7FsnfwhB6MYyx+gkFbg7oCuM1B24qaGH7Cl5rPSyZEnVCftEd85MATljEWaSM1B/IEOliUeR5AyeHW1xXxY+yAYA1OpooFmxdn12ZPSqMYl87TFfMzsRt8VEjvhn4xWdNfK4atEhuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3ylPtmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3ylPtmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BB4C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776168453;
	bh=jJtMxPQRzpxpwp9/GX2dBL8y5rnNzuCMHWDwmJrJgDE=;
	h=To:Subject:From:Date:From;
	b=A3ylPtmHLjS+FvozrIhDQI5hpU3Q5NImeZ8a9BvbpkufJK3hosVwvqwFO3zgttKhT
	 RhDdt2EJ4ZyeeYhSSvCMr9RKxZsMFiwmlcxvYHdaCPdouSNWKCOmhX+E5O6+MjuiC3
	 eozFPxjJ37MTrYtMUjf6ZEiuMDXeCe3DaWG/ahthxKMgWRq2W9t7EZ4Uz9MDw5JTJo
	 +WEIrNYDxIi00rZj/9ot4rhBdpfgtzIDW5Lc1HrVvkM5R4O0a2MkaBwgLiKn2MGwO0
	 2ArQmvnEs0JcNeY5ja2uBvhoDbIeR/qaD9RsmSUcysHEsu1qXEplqLw/vnUfDAFTNV
	 +PBbwVZklHHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4704F9D0C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616845371.20592.6211254192367866971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3cdc13fea7a53fe9366dec92d966097eafa9ad4c86ff74ea0b169f85dd8f65
Date: Tue, 14 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776168453
