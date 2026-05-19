Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351833F9287
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779199234; cv=none; b=NYg+m5BevgOOJUuJe2VBumswTZHv2s9liTdyV75TCHH4Z0uPeDj5mnPiF76FNnZ8iJkvuui0iLQNNDiU3GdzAupWXMFvEI0nZTPUDDmpujRMqS4iOIKlHGJfJING9Czgj6jMmshcF3tqXZxihJ3BjWVym3B6kaxhN1fpVvvd3KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779199234; c=relaxed/simple;
	bh=hx7yOC1OfABNuUq68LOgTsjwI0MhiUvLPWJOKzjQdAc=;
	h=To:Subject:From:Message-Id:Date; b=AowGd9OPHr4AvYro4ziR6AomLnWlTUAUvRVgchBIGnGGYk98/tsInGFJ6tREEPJYycnEQMpWDWgyG0hfswtw2q5kEsd5MKa6EB1xf/U3T865wnvUeP2kqtZ+Rc07UKOnj7IgP18xtpQAvguyVX6oeL26ARdocIByDB89UiocFsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVy1F7Lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVy1F7Lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04244C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779199234;
	bh=hx7yOC1OfABNuUq68LOgTsjwI0MhiUvLPWJOKzjQdAc=;
	h=To:Subject:From:Date:From;
	b=BVy1F7LrRteHiSbCCh6f+2JniEHuOUVpyrP+OWWOCLeNXUCV2UdcA1838fKvMoMXz
	 shJziW98RCfwTnLC+ylm2SKUH1FspW2ZQot1MH4+hba9b++WjqpYlR5sH4tNEnsxzY
	 ZfYtj0w2LE526i6fW4oy/tVqQYSRfKIyItKEIZIZA9N/gWH8QYyWFU2M4ODzeiAc3A
	 Dpohqf9BlGO7jvbI9Pndivh+XzKi6beXZqdnINSAngV+jdsI0rCux2qKg6rCiZXb2K
	 g51TzgXE9o0pOhtTT7jZDWQXUBT8Ggj+aBzHwBUUf2Vn5MB8FX8Vi0/WR9alHMvpiT
	 38ZZip0YLN0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADEECD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919923381.16191.11799829619849357714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a51bac28851507d2d43b696698703da38981b7f7c2934272e229e59ddb3a7e9
Date: Tue, 19 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779199233
