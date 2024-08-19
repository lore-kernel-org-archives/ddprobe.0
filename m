Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD0C49644
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724040354; cv=none; b=QdiJMUmilkLzQqvcQPvY065u+uF5uTi6IyTTOqiX327u2kFlNvDqb8ZTnYVePZNpJysESg09pBP4vQgv0TiiHYYGr1bMce1emk6lIPwCmin9q0ibh34UAgGJamt2wBvm4hQyECx0IoXUHVXA9Cv0CD4fhGWHnZnGlujpUdDuahQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724040354; c=relaxed/simple;
	bh=GweohLg1rch0nT5m4JYGwNS3qNPcUFTTaxZQxFBxFus=;
	h=To:Subject:From:Message-Id:Date; b=NYdfM1z16hEW+MXfMdF5X5rYwjN5Ozpk9TQmFXMkRdSFAx/olm+ZHeE8hmEpOrLAnMu010na7mJ4dvbTMbuQ4w78orR6Je0e/X0f3BbMeAw8oQDLtLed0LIUyK9U5QRef3k6bj8Sqnillb8X3gK5GdzBzVxc2aRLR8NrZ9HjqAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNF02O8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNF02O8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3A0C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724040353;
	bh=GweohLg1rch0nT5m4JYGwNS3qNPcUFTTaxZQxFBxFus=;
	h=To:Subject:From:Date:From;
	b=JNF02O8IHXJ/HzH4xNJ+ucCxI58LmU9xVvPBE0RRL9pg7+x1kTrcGkc9qZBpk8U0/
	 McPUFwxds5E7c3UThXB1Qlyr+2S+AxcPuvRIPf/MGTFHEGUqsNU9rv1zroHgkvN2fl
	 y9tHna0d0T2GxQQfNuJ4czFePktzfqznyp2kBMYc00+JJkrtqGinrH907S2690qL6L
	 atx2867iy7H4u0WRzKVZp56PyzauQTGbgOMHGmRgnaLtm9xZHInecphUd3IWWQBeaV
	 Z5y74TuxAPKKof9gopLV7e5iYE+D7ZkxCwHdV+5NokcHhNS7DEDkqmt96mSHbxXde2
	 I5GsFIhdjz6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72AEC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404035368.29183.16422384831381501087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a17126f0bda49bd2612d4f9fd50c3bc70558f25c369f1f68f2f2723cd64a56d
Date: Mon, 19 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724040353
