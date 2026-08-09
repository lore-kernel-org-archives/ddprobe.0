Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFA21AA1D5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786237834; cv=none; b=T37bLTiiK1ZG5bgkz3rCmjfnRh3Q7eGep2Wn4QI/QBcEfPjAq2HRJXdNV66unIVQ2Xzav3+JEWLu2uc4uQHzoFdhDDWk3NA6wd0M2vFzQx/609aG4xvFVrU4aJ2dhkQQlctblVltpvZS9Q8ckdM9CsT3UohImfMa5ngLiNBCfao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786237834; c=relaxed/simple;
	bh=mIQbIwOkieWYyoD29iL32eOfwKTlABgbbb0WFUAKdUQ=;
	h=To:Subject:From:Message-Id:Date; b=IGtT1PL3omiyBQa4oTciK6LybXvurdQYy7yellT2x9L7hakpw2NwZ9llNtn+LoLQ20SJYevEBqcB6h/RC1e1Qna9XJwxZ8g7igr0u6p/A2iL+/s3YMz5JKEomwNV8DsuP6gOf0jY23dlLYLDgU+J+0GlE8kMZMDy7Qt18F7Bzug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmI2cdyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmI2cdyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3606C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786237833;
	bh=mIQbIwOkieWYyoD29iL32eOfwKTlABgbbb0WFUAKdUQ=;
	h=To:Subject:From:Date:From;
	b=rmI2cdyugdNetuBn7hfOBoCOCIZ1/ikIBkN+yHsuwzfmRvLwMD9AWRORS6RtAAYp0
	 5rSHaadlvij9iThihE3oO4nR76zRyrjbCQzOVzeeLsuEQdW9Y3rWYur3K5X9ZitidI
	 foe40tZ+REM4vzmx/ZXfR9Ew2Uzth3JFnI76skCTyCghuVV+tK0VftCP9VgsViX5lT
	 8nsABIXSIOFl24hTLoIuHTLscDu3CJBhuv5Lz+etn7vCTQIOj9gVcyQEJ85Tny66O+
	 LwwUtneH7VXzpWoq2dJjt9yus5aiPxjA/95pOR/1v41cEK5C2ykViexF7aapzSF5JH
	 Oo5Xa/L0fy2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0986C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623783368.16433.8423029237932975939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6f96b03cbcede56af559c0d836883d67f9ea79537877cc5073f3ba8e3ad553
Date: Sun, 09 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786237833
