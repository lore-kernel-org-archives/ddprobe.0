Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506A1EF01
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727541354; cv=none; b=J8HPi9Ms+MNiPYmJuL3KMMgKpkL23HxzWuWH04ZrB7rzBUS5VIO5lUEIJuYx2Z+NjmZ3AtxVjOC1tnbt4mOfswezpQwTVY5xpGQm7w2+tKTRKsUP4XxvGPjxLvRmp1tyuYWoMINHjXIZJzIwAA88UpqfmMj9FUS9/ed+t9rix3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727541354; c=relaxed/simple;
	bh=vubhRAD5A2hDm2EPmMCdEj1ZOa+r11AYRHqcdIBVRpI=;
	h=To:Subject:From:Message-Id:Date; b=EAkw3YIa1Btjy+/AFTrOTl9W72HnzNRfOXNYy1NQVuqZVuUDb2jq0CQBqy/bhls7m6BjhZhfBnQ0mtNHG/5sO5LL8FI2YJjbM7HTlOjNryPMoQ7xZkJ0jakYwtfm5nhxdDoLrGJdubygA9XhtoYWCbjZs+8KecEiHHJCuFN1PtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us7ruBTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us7ruBTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFD0C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727541353;
	bh=vubhRAD5A2hDm2EPmMCdEj1ZOa+r11AYRHqcdIBVRpI=;
	h=To:Subject:From:Date:From;
	b=Us7ruBTMwrunUOor+mKCftS9LtLDH8kQXlf1foeADdxNfVZc8s0ubnCxkZI49p3on
	 MvM8Jj5H9rIn6VHVKaLcBsFDiw9Af7EzS3ILMrm/JcCQm7vBWqe3oNfZ8jkVHSwSyv
	 mvE2OW51cSo8IuxOVB0Rc1wbxGTXKVOP55XegP7ANxjzSEP80jGZwSGTQXw+bCxHO5
	 QR3W2InUWpd18hXNGm+nhM7RTSK6w2fi0YKs7qOx9nrErMoEXePLhSSWTDqZaLClj5
	 ng7VeH8j3h4bS6sQ7ggUsk8W42DYOsE8qp7IOq/aFg24U8zZQM9tunwGSgJPMW5iv7
	 +uWJIVbPX2gXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D015CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754135363.10158.17926604057653562466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8308cbf9009d9093cae12811f487556ff0cd8af40a718db54d487b9669716822
Date: Sat, 28 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727541353
