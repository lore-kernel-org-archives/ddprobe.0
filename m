Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02713A1E6C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772194494; cv=none; b=Pm43ah733cqgnsu9mXAIvBOC4NAR1vmpCIKR7pE5ojC71A2o99vVs/Z59jFiIkOPq2xZppB6rY7aV/QfxLZEzl5jB9cvwdgOOD8aKKWjuM0YL0IetEZ2EQDLLh5KBwcIy5UcwVIs7hBr9vJTTc77Uw41Gegv8JmZDGmZByvZ5zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772194494; c=relaxed/simple;
	bh=yuAFHBIt8gG8w+VL4dkCb02UQ/Rerj6qHHHvokS7J0c=;
	h=To:Subject:From:Message-Id:Date; b=IC16AWnzIj/NCZl/YOq7cmaIsbR2HoJTPyuTxu02iEWkduw76vFTb8xyHYI1FXnurs2JkO6V5gMgg+vJWk661ZJoGwjWM81lwjThQFqJj97ssliRi+96IPXh+RYZ9Z/9Io/p7s/xEdu9UM/M8W+eMrsnSTIAeJ7b9dcCtKQ643U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l819H6NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l819H6NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 998A8C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772194493;
	bh=yuAFHBIt8gG8w+VL4dkCb02UQ/Rerj6qHHHvokS7J0c=;
	h=To:Subject:From:Date:From;
	b=l819H6NUXhzDFUWdVRJILs4UjdQ9/IKCUV18LRe+msgjOey6KZbDDXAlYYGKCNeFh
	 eHQ6KIWJjD5cKw/ue0LH63gV3bry5dK/XYNc38h75ZDFgip+RBrt+QlfoO3X4Q57f1
	 JgnlXyWHPGcy2cJ9Xf9iz+4RAi7TCVMhpBzwVauZTy5pR7z6rCyfzvhldv8SgRQYXQ
	 aQ4w9yDT+60knSeBre0jVufOSWIuWXL/kvY0T3vnnIneprDDWub4yxidXarLRbJQ8V
	 1KH14R3O+sSea+zXDHeXX4gw6PqGCYuGRqRIX76h3VN4/Ih2lnWmA7+YU3PQFfRjpJ
	 808KxMr+nkQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7EFEFB43
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219449357.12548.984226190406979091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9854d3379f201ee0a58489b00c64f05667049f8af5cdf7d8efbbb5fc22e101fb
Date: Fri, 27 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772194493
