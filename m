Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE6E19994F
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738877156; cv=none; b=VbchidZ4XfYRE9S53oHM2qKje+7FxHqdeka9XG0T7RUFLM/R30tbmX6yK56K21qaKdSdcX0f8Gs8j2muf+yBr4puef4lJ7ALraD+Tm0NDgLI41ZAmczKhCN2pDxd93EtE5LhyicDBlW3fTXLLyiPeD+jI/fAFy0x7JxRNCPUeTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738877156; c=relaxed/simple;
	bh=8vm2dqBI0jRTIXVyPD6plY3pos6R3+exr/hBRiR4mGM=;
	h=To:Subject:From:Message-Id:Date; b=Is3AsLIHxtvEkWerx6fWOHdI7NJYE+1zg6lFZ86mJaT0SiK6tja63OMUb+4ENexi3CMPVcOvSJFx+iF7N7y5+o6mI+/s2sowfmneykXFg7MLJRnNTb3jR6NnGIh7AOD1VADoT1Rsf2tDCmyk+glHmON1N4XnZWw1y1Ynfl+Pupg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxecrMox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxecrMox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B746FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738877153;
	bh=8vm2dqBI0jRTIXVyPD6plY3pos6R3+exr/hBRiR4mGM=;
	h=To:Subject:From:Date:From;
	b=BxecrMoxNSWYZk7wbnnpqbVLLrZoFP+q/QgEHQbpLuI72elTbNFcJqLY73pgliA/v
	 mEGHwW+Abias1ByAkMvk3hL1A47PubZLait6EX0N/7tPTl9ukRgoThS3/mDlGE200w
	 gbg6E4BKGYBJhe7LXpr29hgMJ/fUXAZUwfzwmm6HdhDaimYe3lRsRSn/jEbTyKX934
	 tmrC/PFDU8XqQLYozXUD1bgCJ1W7CZf5eLlwgRuW6XEmz4hMZtZCy0KWdQBIJnM2Ub
	 F+xy01F87kFQ7hH79TCNQU+vQCv/ELvM0V9hWfKxQYrg86IQu+WYZDVeDIE9BmjYki
	 xN8IZ9ySQOtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC85C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887715362.20075.2045696907068873067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff55de75913b2e9b16ed480b70512b41521d5244726d90d7dffc8f0a9594625a
Date: Thu, 06 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738877153
