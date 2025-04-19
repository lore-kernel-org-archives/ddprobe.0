Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564FBCA4B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745026795; cv=none; b=lCsMcp3Z8imrY5e30Y5dzflaMLZVLw7uabJuz4FV3ROcXkG8mUutvQN4L9E1dH5DFw9xRnRTussxT/S9ZqMMU0jNe+c+unPrYnWzSdksiXcwKvKP3JNo18X7DC+ico4yAN7Y0zpsG2j+J/HhiJtVrK93OR9sRxVuD+bMDlSqZO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745026795; c=relaxed/simple;
	bh=srW0RenaebhcSfuhKZnlgr6E4SzgIcO9D4vvziLKmTs=;
	h=To:Subject:From:Message-Id:Date; b=HkukJX7P0i1zgfB+bkPBHDZzx+YplsCJ3xnoB9xGqRM8hdjpIPnkeosMmW03huM8RRQWTbkXwT5D1FQL7rY8KUW1znRawHQUHR7PKA81FwGiyP9Yuxr59/bmixrtjnTU0gtN2LtivjF3EaJod9Yeygz/cwNmQO+tEuF3XohxuNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE8gndkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE8gndkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1FBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745026793;
	bh=srW0RenaebhcSfuhKZnlgr6E4SzgIcO9D4vvziLKmTs=;
	h=To:Subject:From:Date:From;
	b=dE8gndkAufDMN5AFsgKDGTqGdVAJScoRIbzD1CGY4onpZVVhbgM0GbxXWhim6rdmn
	 U2VG6K7D2ppB6dk71vypr9SB3LTBbnvwZqVjKqHYDHWmrjlIRIXzkDbldJSM6BLqpB
	 2gDR4t0G0OJwuZAqp+yt/gu4V0d8tGay8GuX7nD+1EuDYHZCqJ7MtZ1LVPXYdvxOt6
	 SnNuCIa3RDyOXaAMOmerxo9Pa0v2OO7uSkOZO3i5bYqYvwDH8lx3QQssMStQowPpMT
	 2O8eLjDKJ2fIQbweLd4iw6pjEeqcnT6U6+hvkLCvQKAwv5eO0Wr6YUHY9SpTbe0L4L
	 q0wK96R1CWTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5808C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502679365.15915.4851031240427857549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e355bfa55dd723a2ef82fec6aacd8951c46cb13a7907faf1c9980bb7a467a4
Date: Sat, 19 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745026793
