Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46336DA04
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790491834; cv=none; b=feky+KQNMcHQEtTH5W705WUZDLz8OVNG70VqiwVwcmb+FjeycbzZEnBkidmmY/pfea6LGqXT57eSsiBzwnWesF6RIQd06+8Oda6Wk3D99gUg5bz03XHi2H+kWhSgt30II6XlgpRljTqSQgWJtvDvUP0fJx6nT9G7XEtTHH3VJNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790491834; c=relaxed/simple;
	bh=ySSQ/LwWk1Djpd9OZtj4PtFLv/ijGsYeX94rnVhaYTo=;
	h=To:Subject:From:Message-Id:Date; b=ke7NVlG9arIXj2DKLneHFcCtnHQ1catkXA4oXdU6N3nsptCb/2C4WekmlF8G8bDzf/1XTsmSL+HeQ0mQpVxpoQmY/HW8NSffEK35XjFYU6MIcAYtx2qwd3sPlas/DUuzwpBvhfDj2kEJiREtkNV6knX62p61LZ3DG7tmrHCGrYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfZlzqeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfZlzqeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1485C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790491833;
	bh=ySSQ/LwWk1Djpd9OZtj4PtFLv/ijGsYeX94rnVhaYTo=;
	h=To:Subject:From:Date:From;
	b=VfZlzqeO0bHwfhtpOWye2g+IaAEpn++fsX7A2daWr3sjhK2FO8U2qSHu78h+L2GXX
	 b4XipV3KJ2FuYJSI10QH18sJUqMJNZDP9MouSKqfLmp6JrE01nKr+Plo8DTJHTlN3A
	 dhyBtycn+EcyQtMV+Zbe3ULFcRJvDk2YkHYwzk89qIJjFNL0CWje3jelHXGt9YxWPe
	 0hjZStT8xVdo6M4AAkpHn0gtkfbTl5H6Qz1T2KiDoSnSm9uMmlZ5z0mJ9XMLrtoqHu
	 yCOxP/LDsmkPuf34No6QJcWkfOx16qu1esHU5XiYN9eWCi6c3pF+QQ8+QjAuNyTyti
	 1X0FJz6ADT2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE9AC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049183368.20988.3033634306953650877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e636494c9981554f5964562c4cd3883b3b048fa7734e4f64079011fe175c2e
Date: Sun, 27 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790491833
