Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644AD15C3
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715828543; cv=none; b=hoVXm1DdLR4FAu6+kWhRuKKy6HZPGxKgShrvVL0B4YhMHnILItcoCvPuIqtumNFzpSN6csFgb+NxKNXV9X/3c37VZPWzfwRw8FPEiZiwd+FtXvJG3KzACWLwMxorwlDBmf9fi9gVH/ryMc2j5QvKWaqAcjyGbzs3V+xFNop5zn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715828543; c=relaxed/simple;
	bh=0KMz3CKyWiKEnJCFsjVDKx53RAc1G2eCs/7BV8v1BHU=;
	h=To:Subject:From:Message-Id:Date; b=iiBfSb7W5sT6cVB1SlNM9xDnILdxMQwQ+zUF56pWpNlY5DJj2ed/HwS1JOMVr6Wygt89Kmh2f0xsgzslGC/74QkdowYLQFv0LxlhrEjPSAgKPzTKRehRfYJHeSEDwIb+g1/TzQ3auE4ab1x3Fh5rqS9HnkOkLo6uH6XckZ8JOsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7GDMNIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7GDMNIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8C6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715828542;
	bh=0KMz3CKyWiKEnJCFsjVDKx53RAc1G2eCs/7BV8v1BHU=;
	h=To:Subject:From:Date:From;
	b=t7GDMNIQOmmMSbHeQrrhI8TMG2/kUcru9/ctuY8xZeBc12bdX6i8At1BTTKtw3gFd
	 CvIEDBHg3xZgwp3xiAVqUygmvVvXYZW40tFooyHBDgIxBGtqCL1HdNkKLfrCjc59lF
	 1B37iaNOcjRUyBPXULhR09oLpoZA8WsTnWmY+GHyuJHHSUm6ktLhsS+WgfhRfOO0Jo
	 ULJfVHcXwO2aSQ0jnGjIgDgkUQBOACVKVFUGC+Y3DQmPWo0jXkB4w/pwBR1mPJeZD4
	 NWXZBhRy/Ug+UfDRoVIWCYXvUfDbpK0Oa5SPTVkVOnx0TT9NW2PygVqSJnkbOzz4hA
	 uN+u1hM+r7Cyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C506FC25B77
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582854279.12685.17533562859716885443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471c09be8a91f3cbb28b078d229ab5a5466f264733fd00d8efe800cdafc2ff58
Date: Thu, 16 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715828542
