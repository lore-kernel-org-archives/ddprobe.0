Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015836309B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776022054; cv=none; b=EHVe2joM48hlwTD+nXCN6eJJkyX4WU1vgFkFw1pm0zj4vy+1BrO9w/+aw6m3W+szUZromhfXBZyqtPYpqe7EwWVy1NYc4llr+wfJNBm1pa7KB9pyjVFIb7Hmvul+VVPrvXMgGIDKYk/tOyeADlLk7SrR71djETViPOw8ghPJKG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776022054; c=relaxed/simple;
	bh=aFf0eJZsFaxiZa3eWBFWzfjgfFcwNv7lHE7jH9l8i30=;
	h=To:Subject:From:Message-Id:Date; b=tAI17eUuvHAGkz8KxuwDJemFAVz+2XOb6bC/O6n7s2M5OZLWs6RNK/6WY5VEf8QlMDXIt2f0IDH4f+291Tkt5ouPayq8NK/e3FKuwsFHmpivyUYuv925E7aBKFmuL9QvAYpaz6682ZGK98T3CnplUU9CEeaBWrql80sk7RcWT8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg5aGyY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg5aGyY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31F2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776022053;
	bh=aFf0eJZsFaxiZa3eWBFWzfjgfFcwNv7lHE7jH9l8i30=;
	h=To:Subject:From:Date:From;
	b=Zg5aGyY0ACI9csyqj8K152acK/enqRv2p2Mdgq2FCc4P+ABvSzPsQI2w055F4d9JG
	 7ajZ0sxwsKdXqt4O+G93SOEdPGFhw+5ui6rkUYAQAQJc5cGfl28pt9eRI4ppiS2WF4
	 u5NOIuFsa5//mSnPPpkOZHzaCxNYFN86JRPUhELgTxL69XkyA1JMqqRDgzI06fK0qj
	 mgoBm1imh+nhfkfSA1Ci6sFfdf/B7Gh4jvxqd6P5IWblb2ip75K5aRxmPaibeLoPZI
	 mLfxHDXoua2ZlHfe6inatq2H7oaQVUpLNNCsQNnxaDx5WAK6nbHnbmO+yz8Za5IpEr
	 k0QkpC1R4Mm1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD99E937F6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602205368.1898.16595482997412295256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5efb14fd751da75d0c4d96798d5ee156cd922a33f706ddba3ed205c185ffab
Date: Sun, 12 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776022053
