Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F427B66C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718492903; cv=none; b=pu+RkPwAu+Q+xpbrakTKRzY4Lrf9a0iyBKX3SS1A4jsgGo2C3ORKKdMH+p/1zB5VrG4Ckp7RQcPLJfC2U3lavDu2TLnlkfLRJMBM9VWQh2IqGsFLcM+ugb1FOXYZIREnMvhcfhkop+7NCr64A5pRBmS/r9NDhb7hYjFLI0Bdeyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718492903; c=relaxed/simple;
	bh=rayqIh6QeNqrjLL+RSJPZB++dHO9QWVSYxYwEcSLXDE=;
	h=To:Subject:From:Message-Id:Date; b=jxnbTIb3+EUFcx0ncl47H9LhLSQlyNnFXlLjZt7ouhpdHm+FP7t8JuCMxm8mew2lzDImiLy4amVBjjBqBnbGcqMoMEyQqaDLdokr5/myZZAR+4SsaxHeuKogATVHvKoiaaFHFBmYqjrRLj05sKgV5/QQlS3jXS6lVqHBkPMyh78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyXzQXt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyXzQXt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF108C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718492902;
	bh=rayqIh6QeNqrjLL+RSJPZB++dHO9QWVSYxYwEcSLXDE=;
	h=To:Subject:From:Date:From;
	b=tyXzQXt28f1M5czdv2xxCQP6YQbhmQLHzNGnA5A4PSoimLRZc5inFIJxQGN65SBac
	 ikDBZkASL7FThbWJrqtLykvi8BOdgH+LsghYgLrenKg+0KbUyBnijX294FzQ+CBqum
	 PN9vP1mH7shZtgHBDI/7Yp/rRcI6pRvpETi+sVkYShPQbqBZiT/kk96F7mKY1Bf/nZ
	 EQK8RJ8yevIN3Cl0FOlDIFhUPB0BIqWyBoLQ0AUiEFpU97EvBsixAbrpvU0J7lVduY
	 c6kAHjuu/TE49oQK0Wyqvvj43y1eMGDYd5sEc+ZV1W69riEgTf8XJLjcM1WY+USCDh
	 gckmWdVdWqN/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CF3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849290279.1857.7869284094824437567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d618856a1158788f2760e7cf2fdfa1ae2ffba28246ced9e75ace15e8db1d8a2
Date: Sat, 15 Jun 2024 23:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718492902
