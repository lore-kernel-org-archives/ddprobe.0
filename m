Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6D332B9A9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769765033; cv=none; b=TvIvMK4/2qZuFooUQrMBLQvNmAHPfhBfROogd7jGWX1fi/AoBLQ53CO5kD0acDxzI2QclZ30lC4E35O8/ufEwSGu7E3NufWxN+fEfVGGAIL0m8q3sdIWMov8zpRXQiQXgkvvN3I2lx6OHWRlv0ynk7+mOzk+NO0EEI0DgecrZ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769765033; c=relaxed/simple;
	bh=RJdrTJ+33qqiqwKBogyXGcRz0lUbPYzn7g9poC8DHis=;
	h=To:Subject:From:Message-Id:Date; b=H1vqYkjq1t0/wdIC5bO6paksCWk+b0y192/0iXLMI7pLOLQabqUiY42yfaDqyLq3pB3jpj0xFvGl00OxZGrYBF1h6wN0YU/5O2/WagiccaJceJcFFV+RuFU46IDERL5kj+YaS5aOMDyXRLRF5kupIZLM6TQzDOfXg53bNZugNOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmWvThry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmWvThry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C14C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769765033;
	bh=RJdrTJ+33qqiqwKBogyXGcRz0lUbPYzn7g9poC8DHis=;
	h=To:Subject:From:Date:From;
	b=XmWvThryZATNQyn0DsfkveApfClLnzZBYDZYlXH4cPCtoMOISwOcrnjYds6yzP9tm
	 8vPGPvQC1qdKzCl/bq6AojaO/sgZFJneplzBJPWJMRjqv0lmmy6DJ3gws/KNMWe4lA
	 uAqmT9CuNdWZ1squBBtyDR7UVcNxbw5Sj/x2k8qItvgXv1n2PxEQfOzYw2mGqaWU8U
	 ppqW8rNKnJ52FrAYoIKjJDxHLFQ0BbMRTrSVM70GrsVWQg6nXYj0I5Zz6vqyw44+dk
	 4vbdyuXsHEbMOg0MtCs9Fnmkj+CK6OrphFjhpsCeqi0afsI1RRCrz9s/wHg3jpoR/2
	 T8TzmU1CcRP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F167D49C80
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976503357.3831.13371700337012953632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa45023e1b956be7aa7dec45356c1910705db71b53aaf06847b9f4ca28073fbe
Date: Fri, 30 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769765033
