Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA1335A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718809763; cv=none; b=ZZoo606QvKdpEIEXkmJ+/A6ryKxab+jn30zY6bR7FTZKMwXTlVHE2FAXBWnydsNKYKIyj07D8nQ18iPRH99QzfIC9NyiKn6KpcUHemRPNRqNhRc++TSp4LQu3mJWDywGQBy8vAR09JzBSa1k87Czp0SCzd0SpABO2KW3stHbPeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718809763; c=relaxed/simple;
	bh=QvWwDSR+uuZmRfe9AMtlMWnjvHf0e5mWp5juxBJnWmU=;
	h=To:Subject:From:Message-Id:Date; b=r4kwGqdZpUaO/tAdV4o0z/Oqqc8H8Z8gT8lBvw2N0ZzrHSIYUQiDKRtgy5YxczQTabJV/8s7RlvQOQLQL9igm/bj2iblbAp+sFpXXKAD6J7Mm7BuNsaYrypIKNAen9dlzXHP6WeIDIr+wWczu/vY4SWP+q7Y7j1GwBaSjEqIisg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpfLkfoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpfLkfoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8770C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718809762;
	bh=QvWwDSR+uuZmRfe9AMtlMWnjvHf0e5mWp5juxBJnWmU=;
	h=To:Subject:From:Date:From;
	b=LpfLkfoVScqVmiPD0HuzY6OpjxoGFPLL1Z6RpzJ8ptou92fMz9qvf2Ia9z41XC7Qv
	 SuPWJWqfM/PughgBK/7Ge4yIC+e/UYlLUkr5VPubU+IadlVJ32Lw81RwUUCBq4L8q1
	 kFZlPRN/7H/0BCnyoy6W6LIha8+3DSJhpOvXuK0HDVVBl8tcLlY3gqWAVMUyWPzleO
	 K2qXjBGi3MJWf0rJd5hUZtCPYCukIkUUh+m8PmUv+WEY6NuCLL75n8MnR0RXlE8qQb
	 VxpVkiEMm4BVOcqkaiff7NSIB1TZJNPvqU5kQtjoCeEKRUxm65zlLyLqBRN7o/8bLx
	 hhhBOs9YFyAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D01C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880976280.23963.10840289693254489157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c499c96c891e1e32df8a55dd58aece168450dde5c9bca99f18fc79602fd409e
Date: Wed, 19 Jun 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718809762
