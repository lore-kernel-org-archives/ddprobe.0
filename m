Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC7216DECB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745245194; cv=none; b=cQfoLf6sFLt2WfpZTbq3zW6PvGelHXzgxDFJnTKr+Mcpvd9HnuRlwULT0bJiWWQts+eGJXkih1MyvBaX2nqr0AORcUI/6bLrVRCxLdRTG3beGVFaHXmzM7ouKvfW2Xe835VrweGmzrG5SKJXUYy1bMdSnkwtpuftkSvxDFDPBwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745245194; c=relaxed/simple;
	bh=iYRU8sZDKLvaV9OrC7+ki1w3ty3b524fLZ/79u/RjoM=;
	h=To:Subject:From:Message-Id:Date; b=ZEiGztAeS3kZJ9+j7I1tHreaMVmXIjjIQYRZIO43Jr68JzKg8bJEtIVewCN3jQl9SFlSeyRGhjvL0RQ3W2kjjmOe5NtVW7EHD6J6c3X1H+9MsJSrtDJ4xJ9wLqboU8kz1NYdBtWOf3hW0RdaHMeGe6sQVuG8H503UOepnLLWlGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV5rdlhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV5rdlhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2DFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745245193;
	bh=iYRU8sZDKLvaV9OrC7+ki1w3ty3b524fLZ/79u/RjoM=;
	h=To:Subject:From:Date:From;
	b=DV5rdlheG/Kh9LuxgEoO45q6Wb9v7isWyiVdNNaH9pe8CBFRWMQyvtUdSKO7E/c5m
	 7fgcz0JHNQnQ1kT76g7aJC6/qOuWCe88Ho0vkdp44wSL83qgzUoLiaingfpdl1PaAF
	 de8wq0HLhX3sE2r4bg1LEoI3C0yVc8cr21n3PzAUpVvfslCo7jl5r5kB1E67Cg2Ru2
	 2pLesCCGBeIsrdxIFNVWkMHMvFYbAxPlC7VCK+gCDhO91t7IZxv9Xi9YI6CVbPs6Eo
	 UapeJ0Xs15yHlwxkcUfShgo6/HbbBg87pNP/amO4suuCQucUQzY4XWt6VGfyd2J/+X
	 nikgjNUjkqLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6BAC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524519358.22921.1502568732494632233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55321cdd025165a09d46a4ebb20d867506bedd5e9a1ea6a76acb45d9fa12f0e
Date: Mon, 21 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745245193
