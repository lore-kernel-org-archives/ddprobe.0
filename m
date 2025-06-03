Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B02288CB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748948994; cv=none; b=ppoYCe8DS8EmK69P6UoA53iG5LmB+McEeWwpvA860asFSqjUwBHcF8+0bvRGXujnUtOef8VddlXL4Smmjf82jBvnHrY7+Y5p+ChQ0QLZUjXmfmoXiqtDMmZbpAtBf9HXwHK8gQyA4bYjViVq7jMzbmvRy8O3onmqWzQRnp7JKzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748948994; c=relaxed/simple;
	bh=1xOX8wgOjyMDNoTmK+vjZNhBnov142GLWw+ExawkEPA=;
	h=To:Subject:From:Message-Id:Date; b=dkdrh8nEI/RfZ/YrPgi+FXAlBT0wSljTQ4CMZ2t8XQUxaoYFvXHRwbU6VjeL0DsdmuR7o8b8h3BxqZgGzqRpeB0DnfEYF3+bgke/AsS6XUHH9sjdjXt5FdZZ7FcLFJESG7miL/VGWFN8yeCONB6v1K7I4Ce9b+UN2ymb5JGvP50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUXNRxPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUXNRxPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7538C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748948993;
	bh=1xOX8wgOjyMDNoTmK+vjZNhBnov142GLWw+ExawkEPA=;
	h=To:Subject:From:Date:From;
	b=eUXNRxPghbn/CTIKhMEbmj8ZLFOqhI6IpuHn0zm6JAg/ceqO+iBdUM0ko1n95PDhv
	 DkUYC8GyYRD8rjYK5ASHLmZ9vNFFn3qDqB1wnb0RbqETlPrmmVHmEa7BU/NhV+hVd3
	 0USL8zm63HKtVlm0tDxFQ2vg10+WDuyFWoYTos+U3dKCR4Fj6ziIw7NebgmsVK5uRN
	 U8NmWnaaDr4Xj9O/TbkDRwQJreqHaIzZXeZH7A+USaPAj17fNcHfIx/0Ou2I7H6NCS
	 aC0BG10rAMJB5xyGH4D1woP3dl3ECjTEGURiQex7TaAA5PFlb25AdjI7uDeS+R99EH
	 sWeoepRjQ/DOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076EC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894899358.4338.8700484140261895431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af3290228075a0c5f78c593cbe2bdbf4f6a030a3f7c943e562ac8c3898995b5
Date: Tue, 03 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748948993
