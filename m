Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9EF1D5CFE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758725994; cv=none; b=XIz0OzblsBwkTHF2H/ETduhELSKh+lA8LyYgBA0ekwAGnIdhvqa5w5ZTPJefis2lJ1y7Me4L1aYKbDy/YOUumngbj/yfEDTinOSRxHMQGwcTfif4f1CG+vcyXJ0EXe51oBZ6cspHUxZE71GO0MpQnMYJHlhNDZY9OuhPH0Ia/6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758725994; c=relaxed/simple;
	bh=IR8Bb+RJWVaX75je/cNpRiM+EWSfWKZpqkABcB5wBXM=;
	h=To:Subject:From:Message-Id:Date; b=u3O3a5v07AHPf1nDhfss+uOIKzbkTaIoD9jl3f9tZpj7wqhpM/hh89Sy0dhLN8e1/n3AzlSnYIHykq/K6Mc9vC/Rv3fHPlFvbuaO3wE6+cDd5f+qclvIAOKqFfeX2mcU7tXsAGaBRUVc7hm8Y1mozdvXFn2ZIrW9jFKxTwbtyWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6/TUX9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6/TUX9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758725993;
	bh=IR8Bb+RJWVaX75je/cNpRiM+EWSfWKZpqkABcB5wBXM=;
	h=To:Subject:From:Date:From;
	b=M6/TUX9nXISGALlDelzx7rEz82YfPlmJGag5nD8e/sC0whmbUWWOYzr8cz6jNADTm
	 F2v2YljQHncTpqCIYc1fDbGU1Is09kbL6lcu+hyJ9GHSgh/YYbGjZ6wWs7W3aGD4LL
	 VPbmUN9/nBoiKnN2ndJQP705rIygNbDV6jpH9815j12p4aVkowFzVG7eODoh13z8mg
	 ZhcykLt3gJtZ7c0ZCzwPE7t/NjCMZPsQC36X5SqP6Sj5NYyZIjOwxqrcwNfROgG0dI
	 WXV+uOFt+Zb67V7HudRg1LxjMs3hvfD7YumHpDbrVgzDbHcwwt1pkqvVKz/tTbHRDn
	 jV8o6fA8hq5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91472CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872599358.13612.2381739545361720508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d33f362b256cd7408d3150d949ecb1cff4ba794c4ca9c1676dab48af7a514c
Date: Wed, 24 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758725993
