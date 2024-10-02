Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D117BA2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727841354; cv=none; b=GMRGJWn7vaQAbjyQgZF3N9t3UauUChvA4WBCdb/TuQsjXWhdFDIPuPMdsyn5S5jaVRTn1YDr4DAL2lgVDF+WE7DDu6ZygGkiBDWxqDGzo3ftE8cJ5vKMi7ye6Ed6ODWy4sMkLUXoyrvH25shTX1ongDGIZ3EQQAFtY8JJRxaYrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727841354; c=relaxed/simple;
	bh=u+mj/glqhbJ6zw7aM6iJQh3a/rX5wxBHKTxQAFSXUhY=;
	h=To:Subject:From:Message-Id:Date; b=W3xxAaAIKD5Xy35Fdjh1R0UaCPBh/gMF3vF7oiH2whgj74ns1rL4KaIAfY7mk72YaHN8mEfMC3JmlKg0VMPV6kYaLJbA8Xq8tPgEyi4WpaqOc0lJQ6kayjKCFSAG7yNZgd+Up0xUYQ+pM4nkTRQebjWB7LXk8QIYUX6JVK93fGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXn0lnKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXn0lnKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8715C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727841353;
	bh=u+mj/glqhbJ6zw7aM6iJQh3a/rX5wxBHKTxQAFSXUhY=;
	h=To:Subject:From:Date:From;
	b=XXn0lnKkQevYarOru+gX3Ow0mptqwT2Dh7xX236kVl3Rrwoj9VWzzTmOSlwYI3mN+
	 0uDUjyNe5223c+fyjRffsBAX3ZXKqyJd18KMslEUT0TDwhzv0Vhwm0j1m5l7DJcmvV
	 NB3/wqzl2+F91AfC/ut26XwsAHjAJsIWpq7UfIGyWslpc/63y0cytRFbWDNK99nXMb
	 Ne2j5PmJDdEmzTZu5Nk6pydnE+1/I395eKnJ+wpgAl9YS3eTo/oNmnuvpTvayj+FMD
	 ZQP1A2Qs98DgICYkSIy9eeeDjH1DmO1dMZhPId00DiuBL6XWZALA1zoVs5MqzjPQNt
	 Tk8tQhjkk9EGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95079CF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784135360.29819.11305488715909461468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b76c2d24aafa9eab563fdec93b2be1ad3e4468429984dc3d8c4f8ffa926a11
Date: Wed, 02 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727841353
