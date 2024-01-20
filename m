Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6043D262
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705759697; cv=none; b=H/snDgZxjwOMLxOzpknj4JEGNxjXqV7JksYHO8jmFM28uezZzDTpQtP2liCXDNXFOyaY3+kFpY6ABg0OGr9Xhp7G/J6ME16ZTiyHGUr+ubg9YM5eeAwqQzeJPP2gmz7vOIQNC0dfQkA/zkvWpPPFsquc8L01hnMG9wakbA7rs6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705759697; c=relaxed/simple;
	bh=x0j6xwoAIqcK9zZ21iF7zGjR8nAc4n3fPo0o9nVaoQI=;
	h=To:Subject:From:Message-Id:Date; b=NaBnYYgJNbBhrk5JvmWXZ/tGCXkIrXeIvtEM42cVIUuVElhTKre4ZO8EsDDJtb9Tz0ylmGpCo6zAHqf4J4DKTExIepTshvFG3fGWp98wQ7wx2GF8D/BvcfCrIanXEjrVtOPpWX+n0chmi1JCMhisNi4+EdVz/pisOdBvUtRxhk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk64vzre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk64vzre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A66DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705759696;
	bh=x0j6xwoAIqcK9zZ21iF7zGjR8nAc4n3fPo0o9nVaoQI=;
	h=To:Subject:From:Date:From;
	b=Yk64vzreLEydOWxwkeib53yJj3PgxRXKF8Z0xjnTXaC0Zy7kBdCv6aYF3H0mahg0W
	 AdpG0tcIcFCWTTUOtno2o3RZ4a9kmFynDT9iYYsagIhHSCtot2jL1HNOhX8v59LCa+
	 4QCBQPR+pp2Uqp5QWkzdmCHBXtrAqGz3UCbNueH8qPuucZrGPyC0jUyvemPgU0p7ul
	 vXNKqePdTNCQ6GWedLhsZky2F5uXn2mKDxGCRv7hPUSLDCmTFtM6PrstztqG7gsPtY
	 HC0e5UsDpRdOJssF2D+g10QU+GEbaZBvGg8e3uFPDD7WXf5qg6Ge1KMAWb9NEis469
	 xveqlwPCVxFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636C3C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170575969637.27443.17306566432260826705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584009138fda5e4b73f1cd0943c7b33d68546b29c20c9ad278f158b2ceabb2d3
Date: Sat, 20 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705759696
