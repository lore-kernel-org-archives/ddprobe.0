Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E52419ABDE
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736510754; cv=none; b=YQzuwl6FvtdywtKw6qjQMOLjO7l/R528zct8pLAChWQ6UsqK4xvYuDW3CzWVvQPIP7NuV6s+o68STBPoJvXs4J67R/puVF4E9BsGJ+/YeKYuplgIySkwYcEeY5p/3n9Dm5qJ2xGrnCR58QT7T9nDiFQ9Mlk0s/rOVDukVdEqyFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736510754; c=relaxed/simple;
	bh=5tWx6iOjoBe27omcBbLnq/JbtcXvWPR8j7SOUmB4YUI=;
	h=To:Subject:From:Message-Id:Date; b=SySB2DhMG/w1XhgYgiHJHRePSVzthWP5fyVz3+5ZkbFZBc3eRJLw/jqIm39yeune2+ool6Do2/PdZyBu/jDvl8nXW/mZO9h2HMwMiUPE2bEZ+/XJKQEcbfLQcrn8JN0lLicVlxLa5nvWckVUE/YEzCQgSdmZo+kOxBSRSXVSaAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Yn4M+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Yn4M+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C0EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736510753;
	bh=5tWx6iOjoBe27omcBbLnq/JbtcXvWPR8j7SOUmB4YUI=;
	h=To:Subject:From:Date:From;
	b=L1Yn4M+DK9i77ctpzzoYaPfQhiO4d38c4bN86shynN4wDX7hJ+CzKSta2XV6BL3L4
	 Ovl/G/nKYi3m+CnT0lblbI/JfzurnCxeEJfligLdtgDM5PlU31NE5PmjeQ82LFfOOx
	 vDkxxMte/OOjGGDPViZ9s/o8q6LhHmuwfTPd2IjxdS2NtazYv4qg0YuI9nTeHKzHbP
	 8jBsOnGUDWm7KFtwRevpR5M3Qyh3LPVpJTeFgdZa5/mxYAy4/QY4kB0MQTQorCkMel
	 qYZCKR+ToEt8iiVHa0a8y5g6/NASmcVIaY2tn07Zg+BRaepdjouNUkceLAaGMbbOLx
	 fbt6tz9TXwYfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999F7E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651075362.22471.10872961501364685060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a94c50212b800cb1b2e331c83e6acb3e152db3c5ac481a979f92c2da14ec3c
Date: Fri, 10 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736510753
