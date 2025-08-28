Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1092A2E040A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756368594; cv=none; b=QqyD8XzFG8WhfqBo1yS7pZCzoXP7O76BAv5wH2SI4KTLC3KASH+myVYj6IgbW94mzdbPWz0N8ua1Hqqo8oHj4hXQkty8NCBSeTjp75RhRafKK7qOJkeJz0xLKsmN/UzZilSP36d7AK6QBwU/+pSzl6XPWf+O8vldhNKJCYAJ3+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756368594; c=relaxed/simple;
	bh=1woSgTn3hytQIhlHzK17iO7xv7RDRVUuMsM7Xmor9b4=;
	h=To:Subject:From:Message-Id:Date; b=fpxpTQhtrBMmcogDw85J3CfXdSaen3lcXYwDuRc7gAXCK82Jxq+oFy27YfY5zBiyjwhuC4n2eEsGpkuK+o6Wmz4y/f8F6zf1dDvoBS+5ysDIgml/+GXj6H1lEs58rJTeIt/m3nfs4u1yxMGFidKDMlUqFkwmYQocDlg3cEosuTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQgfkU42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQgfkU42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE50C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756368593;
	bh=1woSgTn3hytQIhlHzK17iO7xv7RDRVUuMsM7Xmor9b4=;
	h=To:Subject:From:Date:From;
	b=JQgfkU42HdmQuzNl1T36BkFeoWrDhcnavctl4/e1pTNgctdVVXUoPQfi25WCEyopT
	 Uej7r6pwHbmsrN7CwBKIboj32UqWOrOJtDLedNhIWM4p17cRvF0BWTM6OELBdG7du1
	 Syx1MUXw4n2pr7XeuwKBO4wKFbKqmGk3c/u6NlUDrjh0Hz/hH7lJ8vp7xKVeGdcsG/
	 C/d6yFMWtNsSbgnjLYNrTBUpR9R6VyNhj13M7Wh2+uUUPhHauxyUux70NXnuLuAUyq
	 o/kU5iGaIkRpGLESKNWU6yiGBXbBYjGtEMd5ggwkOz2t4gyJTM91i4+1YAavZl+Ekx
	 YX2kG9dIfzrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49FCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636859357.11637.955971809966029815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1280fc44792f09d2ddbf8bb4b528b4b4fc7d4a2ee8ecb4042f74275b98b5caf
Date: Thu, 28 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756368593
