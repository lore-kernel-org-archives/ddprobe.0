Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8F428314C
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767051833; cv=none; b=KTZTg64ypw67dnUKcKYybcITodPIKHTAzIKu3I+oTGk9e46y/9ZxbfCEJo3tw+4mWXn0mllF066sdQP8ensYDr/HbfNnaP8c6Q1Xe7xqnBfkLqONel2lQHOAHjWfwtT2fHx+GRwwQjia/jZ8Ds9RjePucqxeSjWfc8ECOy01rgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767051833; c=relaxed/simple;
	bh=gird5rMbnGzv2EApIeI37Ybj5EBqAZg9TZOj7TOX8t4=;
	h=To:Subject:From:Message-Id:Date; b=KAfWY17oquOCqIU0qTrO204+77Yh843bETxBFK3zXimnQK8tqAM0H20ZEKhVWBdbCqtyleQjzIU1cAE2oKSNn4sUY2eI06ZMCVJ6M6lh/sEA4YNy6aiPrp1CnqQ54MJP2S9IW8qtlvFmjCPiOJYoO03OVFLDyMKnw4/sL/otLgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0McA5O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0McA5O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9FCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767051833;
	bh=gird5rMbnGzv2EApIeI37Ybj5EBqAZg9TZOj7TOX8t4=;
	h=To:Subject:From:Date:From;
	b=Q0McA5O3WFPOy580jWiczajThG9zhMnWoOBVTME8l5qx5QMEy7QMHKtcJi/E7bCqP
	 aAqzt7MiaR4ciUagnqP2Xy9+Dbq1B/MUvx/NRA1OscKPxtBh+Yh9V4VRv/g9Zj6T79
	 p7Fr63o60VhtJdXBiMCo0gQQfG5FSZi2sZsXdXWZmBZ0vboi+OnvYaJNGOEM48VXmj
	 LexLLiqTrh7hoTV3wo1iURlLDNB+0ANpgoF9sKnUcGfYRDCzotTTsKbNrF63hPK54A
	 OOjEfccxd7vqHzM0jXVjJfk9tMc5Qingdc/y03b83NE63WD3SxtUtwfgBA+olX7wrJ
	 ZcwwaZVEyMVmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADCE94100
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705183358.30480.15586329704713444812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d8697dfbdf69cf9ff653ae0f679c6903f33fd2d44281ba96275f1dfb6c0ae4
Date: Mon, 29 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767051833
