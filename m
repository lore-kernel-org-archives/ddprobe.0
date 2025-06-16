Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20340800
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750076394; cv=none; b=UA+wzbrFmWFgvAbBgvSw8Zi5jIt19tsvuX10oX5U0lTtXIhYkJhKLg9wUyOsMGb84+zQN3PSfyBf++yFOkgpr3rCvW/41XKazNd0ZZ89vvMXypiaw/mfqsncyGKk5rYnWlEIkTDiSBBWZg90YTQuAj6CvVY7bHOjIqEZW8yCPAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750076394; c=relaxed/simple;
	bh=zZm/m7pY2TE5Twk0p9904ZB0VAz7rRdS3IBMLo4eI6w=;
	h=To:Subject:From:Message-Id:Date; b=I0bPVTRHt1hPU8811FFFAtjLeBAAK5kHDY+0m3PK+XgmLQTIIrYczGSMDemJyghUaeqFbBZjgBVBW/TZgKh4hYjn7cXwlr2J/xfFeIhJIwVwdVUA+Ed9E7fP3YATm0A4UdBAsZit5XKvIJzUew2bZEhkVvm1CymMG1e6BG+x0p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNSjRRwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNSjRRwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A682DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750076393;
	bh=zZm/m7pY2TE5Twk0p9904ZB0VAz7rRdS3IBMLo4eI6w=;
	h=To:Subject:From:Date:From;
	b=rNSjRRwhMw76gnQdw8vJyTm+Z+ToLiqXsWWimgVkrl0i1L9sYtcYumf5TbmJamQip
	 ZpYdN5UFlRXSqC6lqoDMIFq9q6UyFMcbhw82tcuDyZUq9k/9Lcqfmw61vuRTX1gN/l
	 9rQk4qbT6Oql54phunRw77lukbCQLmMgcwXZeEVjVxF+zF8UHkIod4/1Z4EY+u45on
	 ZSoDL0ELMgpKSBW29Yl7KczDnyV+iE61jYihSMOFNQDX9ZPavdU3yfteOz4U5JBnQe
	 IPDf4pKTAcSWDpC29KIfTHnrlwRrrsSxNPU4Ijj/blm/4wi4wDsaPoVyRu79QFSGCH
	 stlHxvr4OdiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90192C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007639358.27044.14962045492290931088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df8a17d9d27116ae4cee7f7fc549d305daf848121f06afb521285cde5f643dd
Date: Mon, 16 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750076393
