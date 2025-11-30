Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C5B36D510
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764487374; cv=none; b=CaSf0oLmLhPi+pC80mD+5Q1qC1JF6NNybmMlf+S0ahpPmS3OiuoLyP6VPeyoB5fG03TmF/qJXXtTHrR3qqgYgxaNQScUSfbOiW4qnGmdOIR2wZ0lSQwFkY5XfGG9FLjDmlDmxFEG7VXzEQf0QbVflhDyhya+zK+9phpA7/tt0wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764487374; c=relaxed/simple;
	bh=EaI9+MC3AmOkX8wWwyMbLrKykqG5JXUxqeawZluhEPQ=;
	h=To:Subject:From:Message-Id:Date; b=Rait31lXYvZ29vcuxxjDfKhVdHMhjpjAsdylGU1lPHAZpMZTAT6VV8oHAG/+8ZeKBC81A/31i6MENDdUlNd9RVvo2bxHabmyuITRuipEsUf02SH1foFjnS5vUfYAWuZew1k6fAkLAIf8QVPnbzCKYW4u357/dFcdelA8oWMHkPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ2+PKj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ2+PKj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE0C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764487373;
	bh=EaI9+MC3AmOkX8wWwyMbLrKykqG5JXUxqeawZluhEPQ=;
	h=To:Subject:From:Date:From;
	b=jQ2+PKj8jq5PYDgnzP+uzC5h6r+JM2kmddEE5B955DEyVEpRuSPkbuRN+9Syr/j07
	 g8u2NZ866xLURSBSHewmEoqHrVodxiv/C+OLgggKVyJ9klR82n6rCTY94IVXYXufl0
	 9Gl3D+Y4M/XgT1N6FPY5+NIUB2tmZP61y+D7m5EgBtP4lb2nI3diadOV5/BMUfmFMX
	 rt767ocCvlIRMWWzYeYsK0udbEqW1ICsMNHAtfUGGJi4GxA9p3FR8s/JCJB7a8itGh
	 069ohtWYXnrZdMQDyoleLo8/g3aUAS80gmxjpGXGMXWCnxQYBXcmMdf3pPjb3a/fN6
	 a1xmBO6UNT3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97360CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448737358.32161.5670335297904697611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e83d1e997717e958ecb540972d3eb31265507ff71eab5a050c635219818698
Date: Sun, 30 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764487373
