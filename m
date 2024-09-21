Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F3D27466
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726911954; cv=none; b=MvNqPAqNOvrH9j8DXnoqnQfnHrVhLvGw9kTu+45YEZyMl5/g2Wt513BP7NXFKb820lQUgxYmtykFyIcAWpyB0AV0aS+m2KuhzUalZ6ByeOzJvH2TASgIQhLhUUSJAOfqcYHu+BrInIln7fxpu91Y3idbRCqnjoa/cCs/2asy7GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726911954; c=relaxed/simple;
	bh=908Z+c858snPgv2geUU5bk0EHCtWK58XsPzCftvFtkY=;
	h=To:Subject:From:Message-Id:Date; b=nD4AYKjefj6u+6K6F+PlrAACyKX20X3FX669BeDnZ03jC6dHgQ7tfm+5T+yqJlxo4CusEVYOBwFCRodtzHGQ++vTCQ/LZCX7L+Btn0Ukyav+FuW3ogoehrYjkF2IKgvsUoJ1N7apPbA7tReOF3a4khT3QdjI8bxzkrf5xFLK1bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5ala7WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5ala7WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726911953;
	bh=908Z+c858snPgv2geUU5bk0EHCtWK58XsPzCftvFtkY=;
	h=To:Subject:From:Date:From;
	b=e5ala7WC/xKmQzZSZjceZ9t4nFSISCMa0rx1yep5uiB0p1DhtErr+WduKMVLqQ+fQ
	 +NvytLi33W7Td48d/w/MqIzqRgR+0oxh8MAbYdsMw8gpAh1m6/oKAZ9s8vntkTUHUJ
	 c7axgGgTOCvmctXJm/Qyaq3i3q9x3ccaYCyv+sT7UZzN8dvlEG0PM9unoUkOY4NPEm
	 SpeUGPrfbxsBtPHiuXUI9fTDeMJLoVD4TBn4iDVc6h+n0z+/pZw8ExRttmizbFJLvX
	 km+9NbbwGYrb9UTzC8RqYUDGMNxPCsO21LP/y47caPc+EuxYjgRhTREKT9/DPELpCR
	 AZ+ve0erIoNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9ECF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691195357.5465.2653046218086122441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9d21d62f638bcbbace12725d583c55453e73d7db628cbcd54bb8342264d3db
Date: Sat, 21 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726911953
