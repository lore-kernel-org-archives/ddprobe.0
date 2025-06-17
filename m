Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CC3291166
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750157994; cv=none; b=ms4G3aZILlbFpIv6uKolfMDl4zBMFTjuWY+9MapPCzfbrvBcDpr1TF31hSsjS5nd4dWO0KfXIp2gpZS/647p+mcZY7+tEmSBD1Yrfe2xCj59S8t8ytxtIAD42XsHd/u7OlIz0S3oPJGYmuWmNupz/xl/yF9EEjSuiks84x22Mqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750157994; c=relaxed/simple;
	bh=8dTq6DxNLDNw7p2W4gHH53zOSoJXJXOp1YkD1YZVZWg=;
	h=To:Subject:From:Message-Id:Date; b=Pj66vNjSNXq9uoege9F0AFu37/bYP/hUZC65T9KomA+Y6DjQD1H9+wW8fDqkS3fO1U02YHbSpV+ev9laEjCuqBoFoUsn/LstSI/7kiwGUjDx1auctCktQJDsx5MaTkpq3iRMcDCzOTDMdi4fzb8Sfb5yRy+ZnvYwqaxOidnN6HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBEEaz+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBEEaz+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B95C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750157993;
	bh=8dTq6DxNLDNw7p2W4gHH53zOSoJXJXOp1YkD1YZVZWg=;
	h=To:Subject:From:Date:From;
	b=WBEEaz+22vH6i+sJCTO4aEwd79BYpihGzZBCElbNbUOIiwYSQf2CaEjwUO6DiNyvu
	 ZS2BCeZNG8uyjzOioZ6oeuFj5uI6HDoedYuTK3brKn3G8MI5KnYBJzcFRaxI8ObXnq
	 EbbZQOmaBMaGfmjz0G+UfVgPdTdPZzeMxV5GK//487iEvDC0izgVyJpWL594hw4Qnv
	 tOzkDG6TiOMlgUssItGLO3qjy884sFAr6hSjHVYW2uSYJ/OhmsJcsKnXokQEWGKhIC
	 4ptVYcZn5g5aIzEBwRSzpdtdjRTp0FO491mVMGh0c825MwHhtI8D9X8SWpQWQ7RsJc
	 B8QS7IcdBIWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F604C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015799357.1490.8423393388239213220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3339b01575851cb4f2c4f684eaf5a2a81ed772b2874e89cd6a4adb7c08b53eff
Date: Tue, 17 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750157993
