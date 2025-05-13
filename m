Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D101143895
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747169395; cv=none; b=SrIIA3vhEa9CEQsLNkk1i5WS6HbMdNrLdjiluvDU9zKsRGEdfPLqfFU8wkvUNCZpuMU+hSH9ssgGvR28TClPoFeZncIPxin0fJUHZ+Fn0nq0/5FQD/hqcE1OFJaI/EJN6i+YLEIbmTE06MuCL4rmbSxrb6oYqrJjNHUYGNHCVfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747169395; c=relaxed/simple;
	bh=i9gvamVXd9vv0AS5v598xfvkZFolYe14y0A4wzPJRfE=;
	h=To:Subject:From:Message-Id:Date; b=rg8jhaZzrmrLy8uCMEK8FeDK8JjaaDnkuBqnqSsZhGj/Eud7MhpE8yQAF0YxylYGTVGB0GtFEbZ9Ur8qbc4bj7qeMUBz/UNYgHeY9cmUD3KyzFuB8WeIfHdpZJHyZ+rvSYcLxstH3wdodKRjTGYjhTqWJFepR93VsyFK/lXjBOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXtxuYVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXtxuYVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747169393;
	bh=i9gvamVXd9vv0AS5v598xfvkZFolYe14y0A4wzPJRfE=;
	h=To:Subject:From:Date:From;
	b=RXtxuYVPOFZVJ5xey6xpA7rlrmEqlTmluQ3PlXsrv+rBn5zCukMEfsDepM3g/ZhMe
	 LCxjurjogIU2piA2dnOxoXwbikeKecS2D2736lYDNIOfN7Q1KEWToUsK7ZyS4htput
	 hPXqPrFV/QmJ8mThtvXWWssVmVXzeR4y17Nms6DoDwTSdOvOLucOVnALaW1YEPrDqC
	 mdN3J8jVuDnNsFa4relpEVH1aYY4toAMlQVb2QoteKjdlsO77RtY+LBnAB/Vb1obdJ
	 mTK5oZ1RZMoapYTEI0D5Y3HNrop0agvVlU6qgoZZ8+ncBazxgIcXrKo29bspQIbAVF
	 jD8OLzrolCuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90182C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716939358.1356.18116248195049137702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdc2835201e7aa93bcdce29a9e41192b07fd0ceda468e7fc433dbbb2b6a67ad
Date: Tue, 13 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747169393
