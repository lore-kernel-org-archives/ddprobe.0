Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2002D979E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755676794; cv=none; b=hpxtk/n89qSdmzyVVauaiRYkY5ZjVGp/QaT/zHrkKG3pJ8lLfVaTRCVNNtV69/C8IQDKp4jQLYTKzme8lyu+vVVnO+rgpWa67+s0bjD5Dhp80bqqTzhwIY11QqyoUBrmeC5RGcBbGnXMMcdNG0mHiV9T63t94MGN7pC3Qt01oSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755676794; c=relaxed/simple;
	bh=B5WISGlt45WAeThrfYLJeBh7E/MVaQYZ7+ZxKzr6g5Y=;
	h=To:Subject:From:Message-Id:Date; b=k35V4HNoHem+QnGFbtgSsdW1EluGVsl2qalNl4A5Dl4TElwc3rIK8/3KEVQcDPs7DOmcJCKWJbCCcSm2qtav+yuuZYz4lYaNnbX4CmNWho2tFrAbDpGfyxUStms0aG/ehwSTJsMiGC1/ziBwEQYJ46hiUwrMLwbs2ZgqxePh4p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfB5zYIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfB5zYIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA66C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755676793;
	bh=B5WISGlt45WAeThrfYLJeBh7E/MVaQYZ7+ZxKzr6g5Y=;
	h=To:Subject:From:Date:From;
	b=UfB5zYIQJX48xfpZtTFmI4IgafCRfaAgxoaC3gZ/khylHMkI36vVSkOHTlTDkKa1v
	 1A9pMgKrLphDRnQ2aJDYvK1+xeCwSETUILv26rgdup8LZQ6iTPAbKx0FimvlWfP0g/
	 ae42HHxVdf051eTsR3kZ/3+SrE8cpZfHpK80x5DGMfophZorztUctrYUoAxDnAKHt7
	 AXw3+XlLWIOHWxHwlWujPH5VocKyz0lIxNyoPIkrhULT28bq79bcxt2IFOYl7NTKcH
	 PQiwoP2l3Dob0ILVJtF6aCqZcQGQjEg3/TebSb4urUq1amZBEQcykKKHdp1XalbSD6
	 mGRxRo9rJUgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EFCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567679357.20766.17148282594663159851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee50526bd06056c2de6f779ed1a0c15ca54f0a13c75e9b6d970b4984e4e2ecb0
Date: Wed, 20 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755676793
