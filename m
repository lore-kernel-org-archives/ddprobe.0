Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC9D469D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757876994; cv=none; b=B9S0cRVnacKjQJqtgxe7er3gZU9PFLbydcvIACENJTOiZSVSsC964N85cvFQJZO6oBUfzOjP+kWHKKXMWgR6Sz0DIzPOV+P9X1yEGFzvB8p0greVnVfsllku2KBPVUxWnjwFw3dySy6YbIxJyLrVjZ1RfYbbdTYwfPQ8GgNrZ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757876994; c=relaxed/simple;
	bh=daj5Zeis930x5q/18CHoer0b0G89kOvL2uF23zhUA4U=;
	h=To:Subject:From:Message-Id:Date; b=OHaNDVCO78+FQhzUhlgnl5B8eiGJpgDOc+eQdlz6QXm5ikMTYf0Q+4yobY8HnDu6UuuYn9t9+UCAY/mUFUbjVsDJ4ahZSbg8TD7yU0zDPI/yRwuwbc/i0fm30RTpwLIoFFUssoQX4gWPg+TU3EATTnVN3+wSHGKweRWCrz5/IhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKs1TeeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKs1TeeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757876993;
	bh=daj5Zeis930x5q/18CHoer0b0G89kOvL2uF23zhUA4U=;
	h=To:Subject:From:Date:From;
	b=VKs1TeeQ6TiALrhqosVFIZTblBcOyPxHy0SmwGafL/9a7Y2NWfxiMQ9mD9BCoLPYS
	 6eaWBjCAJM8iXt8zGaQhTAxcMNhi1gtSxaXgJFp/bP1l8+PbhMDwKPGq4WuTv7/qHW
	 GYy9eo/UgNE6nJ3qTDqOB4oSDyiYWHWZtc8KFpSQq37ifFjoZNlM/F6XPcuy0TH3Ey
	 CLTd5IuVPohrIz2DeEp0vLrqPMK+xeLGBpYfjvUGsbXfS7i30XkLxAvRJS4DcbO63w
	 LvUcQYeQK9yOtoY2NLMt1CX/0VDvPNYX855bwPY1VyuZkGYeQpRSqgHwb6VoMjCynb
	 rtJuAvbk7BmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92919CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787699357.26980.14537278446248376942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e7ee90e15ac1f414d035b37aa884f11644deb7457ab50bedb55180a4f6e9d7
Date: Sun, 14 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757876993
