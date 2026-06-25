Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A2D176238
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782357454; cv=none; b=cetg/0RkUvJe9xMt+cZ8qxHmDM8ZCinW4R2qlJNaYzIg2qh9BkWN9YmfkWV4MPLR8q+Joe0MpEoZIeJK4rjhkgzKWNu2o90/UXuoeGKq5ImWVkUVOYxAAVPa4tw9D7F/N7YsnvwCvlrf81Mnor6g/aMV2FBQuUA1pz1+yDhLvuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782357454; c=relaxed/simple;
	bh=JSqTeaGUqSExsCZhjZUf7g8NJ6Fm3LWG0br8repJUY0=;
	h=To:Subject:From:Message-Id:Date; b=jjFpKxgBAfW1tYqW4pKuc2chN7VV29Ayi56/mHZwlrf+u0g1mGxNUJipXLgAfAJ2np20UO6NzJcAt2/bhkm173L7SzcIPybwSOGdBZfd3AaUGFPVl9EyvmOLL5EwxA8j4+iJGHr0WnMpuP2nrtjRHkoL68AuXrJGR/FB7s5eYC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM0GIsoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM0GIsoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADD2C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782357453;
	bh=JSqTeaGUqSExsCZhjZUf7g8NJ6Fm3LWG0br8repJUY0=;
	h=To:Subject:From:Date:From;
	b=QM0GIsoM04LTDKv+4yeNvSa8gxWqYjtoRU2Y3zYeVU0l4hCyfKaEo2nk5m6Wuy1F4
	 I+Q5BJhYXV4f6p4jWFS1vkl7YDVCRYdU8aw3Xs/6hiZKcKbHqQRURwH/kCzUET4K4i
	 Zz/pyeKhEnyeVnhBNnPGno7AUrX3BrnuAVyAWofyvNkh2rvI2WSSDwRVds1cYGijcy
	 ZEfV3XiK3+Gf0bzzJ276opAdXemmeMZNS5mQIUO7VWMBgIBjW5+ww/gZvY42dXhnvB
	 ShcedifAUR4J93bHpjXrtMHmku80Myme5TOBZ3hArPxyOWcIosFMaJRLKAmv/pwHCX
	 6GQqwzzu4LB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA977CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235745373.3349.3678078457024506955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306c5b488a5b8e82dabbda53252f9f7cb2741c3b5baa759da4d48b200eb3e603
Date: Thu, 25 Jun 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782357453
