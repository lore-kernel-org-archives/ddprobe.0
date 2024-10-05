Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7C2E400
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728117354; cv=none; b=IMqOlxpOdMCUZtDTCRyQY892P/hvaX4Ydi7ZNlm9aLwr9eJGJKaTmk7Yq32+AGBq8mHKiMTRnXINIEnLw4MbvP0N1u6ZCPDT4JQzGZC2HnPiPzvXKCQmR84ai2lKePl0HoKB+4+EOQnXcaw1Qyp39/DhO8n2bnOwS77ehCOk/8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728117354; c=relaxed/simple;
	bh=cBAMwb51MdHsl1sWgTACkvEiKZ6deKXkTumZihKsuX4=;
	h=To:Subject:From:Message-Id:Date; b=oARUxbiY8OtwT7/nV+oxpFDcqMhAeEtIm1FVPMWg+zz0Rli8E7GiLvdnFX0rpjGUdxGM3NA3N0V6gGT3Qqsq/l//C1G4XTz32wrHml7CFLWSo7RmF0ErryoI0CjXlf2rOXk/twVH8Sc0wf5Hk/vUc8SrTAc/5kIJ/hrBhom4tOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA22m52a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA22m52a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC59C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728117353;
	bh=cBAMwb51MdHsl1sWgTACkvEiKZ6deKXkTumZihKsuX4=;
	h=To:Subject:From:Date:From;
	b=AA22m52auTFRmMZAELfBBYPS7Zxe2/dzep1xB1W3A159vORvZuYyE8kEyOhmigH30
	 Mo12PToOxuN0TPIy+qU3o1dkj0AiNWv0RgPVQbG08zrROb81Uj8FJJ5xuHY6VFrmNK
	 ywI0rVmvozO6TFlnm3O6jZKWA9FXGnYFiv3YydkJm3TW6GY8vf+SvesNOe6LLHo8c5
	 cMjvw1Jo8PZY23TjUmLPUyVqn+rGij4RIVsVcZL56SKa5RiXquBNNuCLuqanD9nhwE
	 zOypFVIwXfb8JBc9WIz3HWXy7eoFqwaM0IBa15VVI40cRcJuNzp0M8xQaADKL+RPTm
	 E6bFpf/7LW6ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95746CF8877
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811735358.6709.3928961928304575362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f5db58c23c9e6517eb6944dc55caf327b3e146e8b67bd8b85595fdbcce070e
Date: Sat, 05 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728117353
