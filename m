Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4620311
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757823594; cv=none; b=pXuF2u4YjOpBYKWmsPHT/u0WRixBj70e/p11FuL/uQ00UZkCy+VC5Z7+MNZpa87pzZlAFMtkUVjXuhiFgn/++5RkI/oOkA7DstNeQcoJSjbswBfB4IjrN0WNRHTvp2k/5A+dLJ6+OEGXhIrzg8dFTvMJRjSkWO6t/3LqL7lyRyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757823594; c=relaxed/simple;
	bh=a3mdF1CAXKSgiOyTkHzxwNxXvPdZHIxId/6SKxMTFMI=;
	h=To:Subject:From:Message-Id:Date; b=G0usZ/f6Za3qpLynmfqMPj1ZFy2w/PmlKympKhwNw7UCkElKfGNwiXCjOhGbvu0L69eox0jcbY+MmStb8UVn1cCYnTk+kvqwoSYfQ8vM0XPR9dGOWC2WDCHwpanM5X5GgNVgTtuOaIykiNRjC2rC6+mIMJRFQPfJnueXiqalbNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFfrIljb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFfrIljb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9447C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757823593;
	bh=a3mdF1CAXKSgiOyTkHzxwNxXvPdZHIxId/6SKxMTFMI=;
	h=To:Subject:From:Date:From;
	b=qFfrIljbs0No3vNDiUwpptJ9Hq+zOB2agnZ50PSYinXtC0YinXde4guZQrl44xc8P
	 /q1fwp9ppBC+BBO9Mn38f91SdK0eUkJvUUGzLRmkky+l7vfousRpKIuK3EO53O93YM
	 7ZWVQTU6rXfgqGOe+aS5ltFnZMEFxAMnlJHvHaqdkKFDIOWKzExE23AHyCZq/AIMnC
	 XHUXr8BBKd1n3OYKIHGlFVlgRBoVhiOo1Le4xBZv6OFC9yTf6+GD3Nn+CGgV0aNinv
	 JZdWUZNN8GJZH5FhcAYR7oCwBtuwg4adVDKfMNZJHw3lOmngfBk3BK7IzZhJl2AY6L
	 V64ZHOfzvTHSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1704CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782359364.27915.981526985413710036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157ed9fd8e1b95c68cdda44ac7e43a8ee9de1e7b71e29b1a8de85b5d30f2fcbd
Date: Sun, 14 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757823593
